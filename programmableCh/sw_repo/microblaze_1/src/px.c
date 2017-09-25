#include "software_configuration.h"

// *** DEFINE YOUR CUSTOM INCLUDE FILES BELOW THIS LINE

// *** DEFINE YOUR CUSTOM INCLUDE FILES ABOVE THIS LINE

// *****************************************************************************************************************************************
// *
// * Define dynamic process meta_information
// *
// * Channel priority
// * Length of message in words, excluding the 40-bit heartbeat clock (sent as 2x32 bit words)
// *****************************************************************************************************************************************
int p1_out0_priority=0;
int p1_out0_msg_len=sizeof(int)/4;

// *****************************************************************************************************************************************
// * #define Parameter Memory map to speed up execution of program
// * A parameter map is a pointer to the RNI where communication data is stored
// * A parameter map consist of a base address, a channel number, and the offset to the start of the parameter (based on previous parameters)
// *
// * Naming convention <process_name>_<direction>_<parameter_name>
// * Each transmission has a heartbeat number associated with it, counting the number of heartbeats since last reset, to make debugging easier
// *
// * Parameters defined for each Send/Recv channel:
// * <channel_type> *<channel_variable_name>
// * int <channel_variable_name>_heartbeat
// *
// *****************************************************************************************************************************************
// Channel send_channel_p1_to_p0
extern volatile int *p1_out0;

// *** DEFINE YOUR PROCESS INIT CODE ABOVE THIS LINE
// *** DEFINE YOUR PROCESS MAIN CODE BELOW THIS LINE
// *****************************************************************************************************************************************
// *
// * Define the process main cycle function
// *
// *****************************************************************************************************************************************

void p1_init(void)
{	(*p1_out0)=0;
	NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p0,p1_out0_priority,p1_out0_msg_len);
	NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
	(*p1_out0)=0xFFF1; NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p0,p1_out0_priority,p1_out0_msg_len);//send 0xFFF1 as signature from P1

	//PWM Programming Sequence according to PG079 AXI Timer v2.0, page 19, ver Oct 5,2016
	//1. The mode for both Timer 0 and Timer 1 must be set to Generate mode (bit MDT in the TCSR set to 0)
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b000000000000 corresponds to:
	//bit 11 CASC: 0 = Disable cascaded operation
	//bit 10 ENALL: 0 = No effect on timers
	//bit 9 PWMA/B0: 0 = Disable pulse width modulation
	//bit 8 T0/1INT: 0 = No interrupt has occurred
	//bit 7 ENT0/1: 0 = Disable timer (counter halts)
	//bit 6 ENIT0/1: 0 = Disable interrupt signal
	//bit 5 LOAD0/1: 0 = No load,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
	//bit 4 ARHT0/1: 0 = Hold counter or capture value
	//bit 3 CAPT0/1: 0 = Disables external capture trigger
	//bit 2 GENT0/1: 0 = Disables external generate signal
	//bit 1 UDT0/1: 0 = Timer functions as down counter
	//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b000000000000);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b000000000000);
	*/
	//2. The PWMA0 bit in TCSR0 and PWMB0 bit in TCSR1 must be set to 1 to enable PWM mode.
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b001000000000 corresponds to:
	//bit 11 CASC: 0 = Disable cascaded operation
	//bit 10 ENALL: 0 = No effect on timers
	//bit 9 PWMA/B0: 1 = Enable pulse width modulation
	//bit 8 T0/1INT: 0 = No interrupt has occurred
	//bit 7 ENT0/1: 0 = Disable timer (counter halts)
	//bit 6 ENIT0/1: 0 = Disable interrupt signal
	//bit 5 LOAD0/1: 0 = No load,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
	//bit 4 ARHT0/1: 0 = Hold counter or capture value
	//bit 3 CAPT0/1: 0 = Disables external capture trigger
	//bit 2 GENT0/1: 0 = Disables external generate signal
	//bit 1 UDT0/1: 0 = Timer functions as up counter
	//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b001000000000);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b001000000000);
	*/
	//3. The GenerateOut signals must be enabled in the TCSR (bit GENT set to 1). The PWM0
		//signal is generated from the GenerateOut signals of Timer 0 and Timer 1, so these
		//signals must be enabled in both timer/counters.
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b001000000100 corresponds to:
		//bit 11 CASC: 0 = Disable cascaded operation
		//bit 10 ENALL: 0 = No effect on timers
		//bit 9 PWMA/B0: 1 = Enables pulse width modulation
		//bit 8 T0/1INT: 0 = No interrupt has occurred
		//bit 7 ENT0/1: 0 = Disable timer (counter halts)
		//bit 6 ENIT0/1: 0 = Disable interrupt signal
		//bit 5 LOAD0/1: 0 = No load,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
		//bit 4 ARHT0/1: 0 = Hold counter or capture value
		//bit 3 CAPT0/1: 0 = Disables external capture trigger
		//bit 2 GENT0/1: 1 = Enables external generate signal
		//bit 1 UDT0/1: 0 = Timer functions as up counter
		//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b001000000100);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b001000000100);
	*/
	//4. The assertion level of the GenerateOut signals for both timers in the pair must be set
		//to Active High.
	//Done in HW design
	//5. The counter can be set to count up or down. (Will be set to down by setting bit UDT to 1)
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b001000000110 corresponds to:
		//bit 11 CASC: 0 = Disable cascaded operation
		//bit 10 ENALL: 0 = No effect on timers
		//bit 9 PWMA/B0: 1 = Enables pulse width modulation
		//bit 8 T0/1INT: 0 = No interrupt has occurred
		//bit 7 ENT0/1: 0 = Disable timer (counter halts)
		//bit 6 ENIT0/1: 0 = Disable interrupt signal
		//bit 5 LOAD0/1: 0 = No load,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
		//bit 4 ARHT0/1: 0 = Hold counter or capture value
		//bit 3 CAPT0/1: 0 = Disables external capture trigger
		//bit 2 GENT0/1: 1 = Enables external generate signal
		//bit 1 UDT0/1: 1 = Timer functions as down counter
		//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b001000000110);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b001000000110);
	*/

	// Tages extra
	//Initiate Timer 1 to be in PWM mode with ~5  seconds of cycle (period) and ~2 seconds of High time
		//Set the period by loading 268435456 or 0x10000000 to Timer Load Register 0 (offset 0x4)
	/*
		Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x04,0x10000000);
	*/
		//Set the high time to 1/4 the period by loading 67108864 or 0x4000000 to Timer Load Register 1 (offset 0x14)
	/*
		Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x14,0x4000000);
	*/

	// Enable Load and Auto reload for timers by writing 1 to bits ARHT and LOAD as an extra measure
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b001000110110 corresponds to:
		//bit 11 CASC: 0 = Disable cascaded operation
		//bit 10 ENALL: 0 = No effect on timers
		//bit 9 PWMA/B0: 1 = Enables pulse width modulation
		//bit 8 T0/1INT: 0 = No interrupt has occurred
		//bit 7 ENT0/1: 0 = Disable timer (counter halts)
		//bit 6 ENIT0/1: 0 = Disable interrupt signal
		//bit 5 LOAD0/1: 1 = Loads timer with value in TLR0/1,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
		//bit 4 ARHT0/1: 1 = Reload generate value or overwrite capture value
		//bit 3 CAPT0/1: 0 = Disables external capture trigger
		//bit 2 GENT0/1: 1 = Enables external generate signal
		//bit 1 UDT0/1: 1 = Timer functions as down counter
		//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b001000110110);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b001000110110);
	*/

	// Enable Timers by writing 1 to bit ENALL and 1 to ENT0/1 just as an extra measure
	// TCSR0/1 Offset 0x00/0x10
	//Value of 0b011010010110 corresponds to:
		//bit 11 CASC: 0 = Disable cascaded operation
		//bit 10 ENALL: 1 = Enable all timers (counters run)
		//bit 9 PWMA/B0: 1 = Enables pulse width modulation
		//bit 8 T0/1INT: 0 = No interrupt has occurred
		//bit 7 ENT0/1: 1 = Enable timer (counter runs)
		//bit 6 ENIT0/1: 0 = Disable interrupt signal
		//bit 5 LOAD0/1: 0 = No load,  should be cleared alongside setting Enable Timer/Counter (ENT0/1)
		//bit 4 ARHT0/1: 1 = Reload generate value or overwrite capture value
		//bit 3 CAPT0/1: 0 = Disables external capture trigger
		//bit 2 GENT0/1: 1 = Enables external generate signal
		//bit 1 UDT0/1: 1 = Timer functions as down counter
		//bit 0 MDT0/1: 0 = Timer mode is generate
	/*
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x00, 0b011010010110);
	Xil_Out32(XPAR_AXI_TIMER_1_BASEADDR+0x10, 0b011010010110);
	*/
};

void p1_main(void)
{

	//some initial counter value
	*p1_out0=1; int led=1;
	   while(1) // Loop forever
	   {
		//wait for the heartbeat signal (GlobalSync)
		//Note: Heartbeat signal periodicity is 1 sec
		NOC_RNI_CLEAR_SYNCHRONIZER_FLAG(NOC_RNI_BASE,-1); while(NOC_RNI_READ_SYNCHRONIZER_FLAG(NOC_RNI_BASE)==0);
		//send counter value to the ARM node (P0)
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p1_to_p0,p1_out0_priority,1);
		//display the toggling least significant digit of led value at the LED
		IOWR(PIO_0_BASE, 0,led++);
		//increment the next outbox value by 2 (to continue sending odd numbers)
		*p1_out0=*p1_out0+2;
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
