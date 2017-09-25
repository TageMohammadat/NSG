//Generic includes and definitions
#include "stdio.h"
//Platform specific includes and definitions
#include "xparameters.h"
#include "xtmrctr.h"
#include "xbasic_types.h"
#include "sleep.h"
#include "xil_printf.h"
#include "xaxipmon.h"
#define PERFMON_ID XPAR_AXI_PERF_MON_3_DEVICE_ID
#define PERFMON_BASEADDR XPAR_AXI_PERF_MON_3_BASEADDR
#define CYCLES_PER_uS XPAR_AXI_TIMER_3_CLOCK_FREQ_HZ/1000000
#define CYCLES_PER_mS XPAR_AXI_TIMER_3_CLOCK_FREQ_HZ/1000
#define CYCLES_PER_Sec XPAR_AXI_TIMER_3_CLOCK_FREQ_HZ
#include "xstatus.h"
#include "xintc.h"
#include "xil_exception.h"
#include "mb_interface.h"
#include "xil_types.h"
#include "xil_assert.h"
#define INTC_BASEADDR		XPAR_INTC_0_BASEADDR
#define INTC_DEVICE_ID		XPAR_INTC_0_DEVICE_ID
#define INTC_DEVICE_INTR_ID	XPAR_MICROBLAZE_3_AXI_INTC_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_3_INTR
#define INTC_DEVICE_INT_ID	XPAR_MICROBLAZE_3_AXI_INTC_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_3_INTR
#define INTC_DEVICE_INT_MASK	XPAR_KTH_AXI_MESH_2D_NOSTRUM_TDN_2X2X1_0_NOC_IRQ_3_MASK

XAxiPmon_Config* perfmon_config;
XAxiPmon perfmon;
u32 fpga_clk0,prev_samples,cur_samples,samples;
double seconds, moreseconds=0;
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

// Sobel
#include "sobel_filter.h"

static int image_width = 48;
static int image_height = 48;

int image_x = 0;
int image_y = 0;




void compute_ABS(ELEM_TYPE tokensIn1[], ELEM_TYPE tokensIn2[]) {
	if (tokensIn1[0] < 0)
		tokensIn1[0] = tokensIn1[0] * -1;
	if (tokensIn2[0] < 0)
		tokensIn2[0] = tokensIn2[0] * -1;

	int result = tokensIn1[0] + tokensIn2[0];

	xil_printf("%d, ", result);
}


void p3_init(void)
{
   	// Send Channel, TDN, Target z, y, x, Dest PID, Source PID
   	NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p3,4,0,1,1,p3_pid,p3_pid);
   	NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p2,4,0,1,0,p2_pid,p3_pid);
   	NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p1,4,0,0,1,p1_pid,p3_pid);
   	NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p3_to_p0,4,0,0,0,p0_pid,p3_pid);
        // Recv Channels - Dest MoC Type, IRQ, Dest PID, Source PID
   	NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p3,COMB,1,p3_pid,p3_pid);
   	NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p2,COMB,1,p3_pid,p2_pid);
   	NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p1,COMB,1,p3_pid,p1_pid);
   	NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p3_from_p0,COMB,1,p3_pid,p0_pid);

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


   //Initialise performance counter
	perfmon_config = XAxiPmon_LookupConfig(PERFMON_ID);
    	if (XAxiPmon_CfgInitialize(&perfmon, perfmon_config, PERFMON_BASEADDR) != XST_SUCCESS) {
    	xil_printf("Error initializing axi perfmon\r\n");
	}
	XAxiPmon_EnableMetricsCounter(&perfmon);

	// init sample counter and get ticks per seconds
	XAxiPmon_ResetMetricCounter(&perfmon);
/*
		//Cycle #0: getPixel@P0. nothing@P1. nothing@P2. nothing@P3
		//Time slice 1--------------------------------------------------
		//Give enough time for P0 to produce tokens
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}
		XAxiPmon_ResetMetricCounter(&perfmon);
		//Time slice 2--------------------------------------------------
		//Give enough time for P1/2 to produce tokens
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}

*/
	};

void p3_main(void)
{
	//some initial counter value
	int led=3; int microseconds; int milliseconds;
for(;image_y < image_height;image_y++) { //in non-ARM core main loop
		// compute ABS - Microblaze 3
		//tokensWrite_GX=@p3_in1;tokensWrite_GY=@p3_in2;
		//compute_ABS(tokensWrite_GX, tokensWrite_GY);
		while (1){if (InterruptProcessed) break;}InterruptProcessed=FALSE;//xil_printf("\ninterrupted\n");
		while (NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p1)==0);NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p1);
		while (NOC_RNI_RECV_CHANNEL_STATUS(NOC_RNI_BASE,recv_channel_p3_from_p2)==0);NOC_RNI_CLEAR(NOC_RNI_BASE,recv_channel_p3_from_p2);
		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_ABS((int*)p3_in1->x,(int*)p3_in2->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
                NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p1);
                NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,recv_channel_p3_from_p2);
		//Some rubbish messages
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p3_to_p2,0,80);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p3_to_p3,0,80);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p3_to_p1,0,80);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p3_to_p0,0,80);
    	   	}
		xil_printf("\n");
	    	sleep(7);
		xil_printf("compute_ABS/uBlaze takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);

		xil_printf("\nSobel finished!\n\rContinuing with blinking LEDs\n\r");
	   while(1) // Loop forever
	   {
	    	sleep(3);
		//display the toggling least significant digit of led value at the LED
		IOWR(PIO_0_BASE, 0, led++);
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
