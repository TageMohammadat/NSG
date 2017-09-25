//Generic includes and definitions
#include "stdio.h"
//Platform specific includes and definitions
#include "xparameters.h"
#include "xtmrctr.h"
#include "sleep.h"
#include "xil_printf.h"
#include "xaxipmon.h"
#include "xstatus.h"
#include "xintc.h"
#include "xil_exception.h"
#include "mb_interface.h"
#include "xil_types.h"
#include "xil_assert.h"
#define PERFMON_ID XPAR_AXI_PERF_MON_1_DEVICE_ID
#define PERFMON_BASEADDR XPAR_AXI_PERF_MON_1_BASEADDR
#define CYCLES_PER_uS XPAR_AXI_TIMER_1_CLOCK_FREQ_HZ/1000000
#define CYCLES_PER_mS XPAR_AXI_TIMER_1_CLOCK_FREQ_HZ/1000
#define CYCLES_PER_Sec XPAR_AXI_TIMER_1_CLOCK_FREQ_HZ
#define INTC_BASEADDR		XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_INTR_ID	XPAR_MICROBLAZE_1_AXI_INTC_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_1_INTR
#define INTC_DEVICE_INT_ID	XPAR_MICROBLAZE_1_AXI_INTC_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_1_INTR
#define INTC_DEVICE_INT_MASK	XPAR_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_1_MASK

XAxiPmon_Config* perfmon_config;
XAxiPmon perfmon;
u32 fpga_clk0,prev_samples,cur_samples,samples;
volatile static int InterruptProcessed = FALSE;
static XIntc InterruptController; /* Instance of the Interrupt Controller */

//Nostrum specific includes and definitions
#include "software_configuration.h"
void DeviceDriverHandler(void *CallbackRef)
{
	/*
	 * Indicate the interrupt has been processed using a shared variable.
	 */
	InterruptProcessed = TRUE;
	XIntc_Acknowledge(&InterruptController,INTC_DEVICE_INT_ID);

}

//Sobel
#include "sobel_filter.h"


static int image_width = 48;
static int image_height = 48;

int image_x = 0;
int image_y = 0;

void compute_GX(ELEM_TYPE tokensIn[], ELEM_TYPE tokensOut[]) {
	static int sx[81] = { 4, 3, 2, 1, 0, -1, -2, -3, -4, 5, 4, 3, 2, 0, -2, -3,
			-4, -5, 6, 5, 4, 3, 0, -3, -4, -5, -6, 7, 6, 5, 4, 0, -4, -5, -6,
			-7, 8, 7, 6, 5, 0, -5, -6, -7, -8, 7, 6, 5, 4, 0, -4, -5, -6, -7, 6,
			5, 4, 3, 0, -3, -4, -5, -6, 5, 4, 3, 2, 0, -2, -3, -4, -5, 4, 3, 2,
			1, 0, -1, -2, -3, -4 };

	tokensOut[0] = 0;
	int i;
	for (i = 0; i < 81; i++) {
		tokensOut[0] += tokensIn[i] * sx[81 - 1 - i];
	}
}


void p1_init(void)
{	
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p3,1,0,1,1,p3_pid,p1_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p2,1,0,1,0,p2_pid,p1_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p1,1,0,0,1,p1_pid,p1_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p1_to_p0,1,0,0,0,p0_pid,p1_pid);
   // Recv Channels - Dest MoC Type, IRQ, Dest PID, Source PID
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p3,COMB,1,p1_pid,p3_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p2,COMB,1,p1_pid,p2_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p1,COMB,1,p1_pid,p1_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p1_from_p0,COMB,1,p1_pid,p0_pid);

   //Initialise performance counter
	perfmon_config = XAxiPmon_LookupConfig(PERFMON_ID);
    	if (XAxiPmon_CfgInitialize(&perfmon, perfmon_config, PERFMON_BASEADDR) != XST_SUCCESS) {
    	xil_printf("Error initializing axi perfmon\r\n");
	}
	XAxiPmon_EnableMetricsCounter(&perfmon);

	
	//Initialise interrupt
	XIntc_Initialize(&InterruptController, INTC_DEVICE_INTR_ID);
	XIntc_Connect(&InterruptController, INTC_DEVICE_INT_ID,
				   (XInterruptHandler)DeviceDriverHandler,
				   (void *)0);
	XIntc_Start(&InterruptController, XIN_REAL_MODE);
	XIntc_Enable(&InterruptController, INTC_DEVICE_INT_ID);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XIntc_InterruptHandler,
				&InterruptController);
	Xil_ExceptionEnable();



	// init sample counter and get ticks per seconds
	XAxiPmon_ResetMetricCounter(&perfmon);

		//Cycle #0: getPixel@P0. nothing@P1. nothing@P2. nothing@P3
		//Time slice 1--------------------------------------------------
		//Give enough time for P0 to produce tokens
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}
		XAxiPmon_ResetMetricCounter(&perfmon);

		//Time slice 2--------------------------------------------------
		// compute GX - Microblaze 1
		//tokens_GetPixel=@p1_in0->x[0];tokensWrite_GX=@p1_out3->x[0]
		while (1){if (InterruptProcessed) break;}InterruptProcessed=FALSE;//xil_printf("\ninterrupted\n");
		while (NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p0)==0);NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p0);
	        //xil_printf("@MB1, Got: %d\n",(int)p1_in0->x[0]);
                NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p0);
		compute_GX((int*)p1_in0->x, (int*)p1_out3->x);
		xil_printf("\nMB1 time now %d\n",XAxiPmon_SampleMetrics(&perfmon));
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p3,p1_out3_priority,p1_out3_msg_len);
		image_y++;
		//usleep(10000); //wait 10 ms
		//Give enough time for P0 to produce tokens
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}


	};

void p1_main(void)
{

	//some initial counter value
	int led=1;  int microseconds; int milliseconds;
	for(;image_y < image_height;image_y++) { //in non-ARM core main loop
		while (1){if (InterruptProcessed) break;}InterruptProcessed=FALSE;
		while (NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p1_from_p0)==0); NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p1_from_p0);
	        //xil_printf("@MB1, Got: %d\n",(int)p1_in0->x[0]);
		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_GX((int*)p1_in0->x, (int*)p1_out3->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
                NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p1_from_p0);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p3,0,80);//p1_out3_msg_len);
		//Some rubbish messages 
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p2,0,80);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p1,0,80);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p0,0,80);
    	   	}
    	sleep(1);
	xil_printf("compute_GX/uBlaze takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);

	   while(1) // Loop forever
	   {
	    	sleep(1);
		//display the toggling least significant digit of led value at the LED
		IOWR(PIO_0_BASE, 0, led++);
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
