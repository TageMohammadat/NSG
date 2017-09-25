/*
 * sobel_filter.h
 *
 *  Created on: 10.12.2015
 *      Author: Christof Schlaak
 */

#ifndef SOBEL_FILTER_H_
#define SOBEL_FILTER_H_


// testing only on local computer
//#include <stdlib.h>
//#include <stdio.h>
//#include <malloc.h>

// type for all tokens
#define ELEM_TYPE int

void compute_getPixel(ELEM_TYPE tokensOutx[],ELEM_TYPE tokensOuty[]); //changed by Tage 1/1

void compute_GX(ELEM_TYPE tokensIn[], ELEM_TYPE tokensOut[]);

void compute_GY(ELEM_TYPE tokensIn[], ELEM_TYPE tokensOut[]);

void compute_ABS(ELEM_TYPE tokensIn1[], ELEM_TYPE tokensIn2[]);

#endif /* SOBEL_FILTER_H_ */
