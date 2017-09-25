//Generic includes and definitions
#include "stdio.h"
//Platform specific includes and definitions
#include "sleep.h"
#include "xaxipmon.h"
#define PERFMON_ID XPAR_AXI_PERF_MON_0_DEVICE_ID
#define PERFMON_BASEADDR XPAR_AXI_PERF_MON_0_BASEADDR
#define CYCLES_PER_uS XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ/1000000
#define CYCLES_PER_mS XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ/1000
#define CYCLES_PER_Sec XPAR_AXI_TIMER_0_CLOCK_FREQ_HZ

XAxiPmon_Config* perfmon_config;
XAxiPmon perfmon;
u32 fpga_clk0,prev_samples,cur_samples,samples;
double seconds, moreseconds=0;
//Nostrum specific includes and definitions
#include "software_configuration.h"

//App example:
#include "sobel_filter.h"
#include "xtmrctr.h"
#include "xbasic_types.h"

static int image[48][48] = {
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
				0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 } 
		};

static int image_width = 48;
static int image_height = 48;

int image_x = 0;
int image_y = 0;

void compute_getPixel(ELEM_TYPE tokensOutx[],ELEM_TYPE tokensOuty[]) { //changed by Tage 1/6
	// check if pixel available
	if (image_y >= image_height)
		return;

	int i = 0;
	int x_mask;
	int y_mask;

	for (y_mask = -4; y_mask < 5; ++y_mask) {
		for (x_mask = -4; x_mask < 5; ++x_mask) {
			int xnew = image_x + x_mask;
			int ynew = image_y + y_mask;
			if (xnew < 0)
				xnew = 0;
			if (xnew >= image_width)
				xnew = image_width - 1;
			if (ynew < 0)
				ynew = 0;
			if (ynew >= image_height)
				ynew = image_height - 1;

			tokensOutx[i] = image[ynew][xnew]; //changed by Tage 2/6
			tokensOuty[i] = image[ynew][xnew]; //changed by Tage 3/6
			i++;
		}
	}

	image_x++;
	if (image_x >= image_width) {
		image_x = 0;
		image_y++;
	}
}
void compute_ABS(ELEM_TYPE tokensIn1[], ELEM_TYPE tokensIn2[]) {
	if (tokensIn1[0] < 0)
		tokensIn1[0] = tokensIn1[0] * -1;
	if (tokensIn2[0] < 0)
		tokensIn2[0] = tokensIn2[0] * -1;

	int result = tokensIn1[0] + tokensIn2[0];

	printf("%d, ", result);
}
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
void compute_GY(ELEM_TYPE tokensIn[], ELEM_TYPE tokensOut[]) {
	static int sy[81] = { 4, 5, 6, 7, 8, 7, 6, 5, 4, 3, 4, 5, 6, 7, 6, 5, 4, 3,
			2, 3, 4, 5, 6, 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0, 0, 0, 0, 0,
			0, 0, 0, 0, -1, -2, -3, -4, -5, -4, -3, -2, -1, -2, -3, -4, -5, -6,
			-5, -4, -3, -2, -3, -4, -5, -6, -7, -6, -5, -4, -3, -4, -5, -6, -7,
			-8, -7, -6, -5, -4 };

	tokensOut[0] = 0;
	int i;
	for (i = 0; i < 81; i++) {
		tokensOut[0] += tokensIn[i] * sy[81 - 1 - i];
	}
}
void p0_init(void)
{
   // Send Channel, TDN, Target z, y, x, Source PID, Dest PID
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p3,1,0,1,1,p3_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p2,1,0,1,0,p2_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p1,1,0,0,1,p1_pid,p0_pid);
   NOC_RNI_SEND_CHANNEL_INFO(NOC_RNI_BASE,send_channel_p0_to_p0,1,0,0,0,p0_pid,p0_pid);
   // Recv Channels - Dest MoC Type, IRQ, Dest PID, Source PID
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p3,COMB,1,p0_pid,p3_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p2,COMB,1,p0_pid,p2_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p1,COMB,1,p0_pid,p1_pid);
   NOC_RNI_RECV_CHANNEL_INFO(NOC_RNI_BASE,recv_channel_p0_from_p0,COMB,1,p0_pid,p0_pid);


   //Initialise performance counter
	perfmon_config = XAxiPmon_LookupConfig(PERFMON_ID);
    	if (XAxiPmon_CfgInitialize(&perfmon, perfmon_config, PERFMON_BASEADDR) != XST_SUCCESS) {
    	printf("Error initializing axi perfmon\r\n");
	}

	XAxiPmon_EnableMetricsCounter(&perfmon);
	// init sample counter and get ticks per seconds
	XAxiPmon_ResetMetricCounter(&perfmon);


		//Cycle #0: getPixel@P0. nothing@P1. nothing@P2. nothing@P3

		//Time slice 1---------------------
		//Do getPixel()
		// compute GetPixel - ARM Core
		//compute_getPixel(tokens_GetPixelx,tokens_GetPixely); //changed by Tage 6/6
		//tokens_GetPixelx=@p0_out1->x; tokens_GetPixely=p0_out2->x;
		compute_getPixel((int*) p0_out1->x,(int*) p0_out2->x);
		//Sending stuff
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p1,p0_out1_priority,80);//p0_out1_msg_len);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p2,p0_out2_priority,80);//p0_out2_msg_len);
		usleep(7000);usleep(7000);usleep(7000);//usleep(8500);usleep(8500);//usleep(7000);usleep(7000);usleep(7000);
		printf("Start producing initial tokens\n");
		//Wait till the tokens arrived at by P1 and P2
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}
		XAxiPmon_ResetMetricCounter(&perfmon);

		//Time slice 2 ------------------
		//Wait till the tokens are consumed by P1 and P2 and new token are produced to P3
		//Do getPixel()
		// compute GetPixel - ARM Core
		//compute_getPixel(tokens_GetPixelx,tokens_GetPixely); //changed by Tage 6/6
		//tokens_GetPixelx=@p0_out1->x; tokens_GetPixely=p0_out2->x;
		//usleep(6500); //sleep 5ms
		compute_getPixel((int*) p0_out1->x,(int*) p0_out2->x);
		//Sending stuff
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p1,p0_out1_priority,80);//p0_out1_msg_len);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p2,p0_out2_priority,80);//p0_out2_msg_len);
		usleep(7000);usleep(7000);usleep(7000);//usleep(8500);usleep(8500);//usleep(7000);usleep(7000);usleep(7000);
		//Wait till the tokens get consumed by P1 and P2
		while ( samples < CYCLES_PER_Sec ) 
		{
		samples = XAxiPmon_SampleMetrics(&perfmon);
		}
};

//main process functions
void p0_main(void)
{
	//some initial counter value
	int led=1; int microseconds; int milliseconds;

    print("Sobel starts\n\r");
// ----- sobel filter stub begins ------------------------------------------
while (image_y < image_height) { //in ARM core main loop, image_height is 48
		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_getPixel((int*) p0_out1->x,(int*) p0_out2->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
		//Sending stuff
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p1,p0_out1_priority,80);//p0_out1_msg_len);//More than message size of 80, zeros got received
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p2,p0_out2_priority,80);//p0_out2_msg_len);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p0,p0_out0_priority,80);//p0_out0_msg_len);
		NOC_RNI_SEND(NOC_RNI_BASE,send_channel_p0_to_p3,p0_out3_priority,80);//p0_out3_msg_len);
		usleep(7000);usleep(7000);usleep(7000);//usleep(8500);usleep(8500);
		//For maximum traffic, a delay is required between subsequent sends and it depends on how the delay is 'segmented'
		//Case 1: the delay is segmented in 2 subsequent calls:
		//// Worst case delay required is 19.5ms, i.e. usleep(8500);usleep(8500); 
		////// using <19.5ms causes some packets to get lost (without interrrupts it is 15ms, with interrupt at MB1 it is 16ms,with interrupt at MB2 it is 18ms... ) 
		////// writing more than more than 4 digits number as an argument for usleep(); does not work
		// Case 2: the delay is segmented in 3 subsequent calls:
		//// Worst case delay required is 21ms (with interrupts enabled), or usleep(7000);usleep(7000);usleep(7000);
		// Note a granularity of 0.5ms is used.
    	   }
	    	sleep(5);

		printf("compute_getPixel/ARM takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);
/*
		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_GX((int*)p0_in0->x, (int*)p0_out3->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
		printf("compute_GX/ARM takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);

		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_GY((int*)p0_in0->x, (int*)p0_out3->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
		printf("compute_GY/ARM takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);

		XAxiPmon_ResetMetricCounter(&perfmon);
		prev_samples = XAxiPmon_SampleMetrics(&perfmon);
		compute_ABS((int*)p0_in1->x,(int*)p0_in2->x);
		cur_samples = XAxiPmon_SampleMetrics(&perfmon);
		samples=cur_samples-prev_samples;
		printf("compute_ABS/ARM takes %d - %d= %d ticks\n",prev_samples,cur_samples,samples);
*/
	   while(1) // Loop forever
	   {
	    	usleep(500000);
		//display the toggling least significant digit of led value at the LED
		IOWR(PIO_0_BASE, 0, led++);
	   };
};
// *** DEFINE YOUR PROCESS MAIN CODE ABOVE THIS LINE
