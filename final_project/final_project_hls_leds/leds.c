#include "leds.h"

void leds(ap_int<7>* row, ap_int<10>* col, hls::stream<uint11_t> in)
{
	uint7_t dst_var;

	ap_int<3> in_row;
	ap_int<4> in_col;

	ap_int<7> out_row;
	ap_int<10> out_col;

	// reads from the head of the stream and assigns the values to the variable dst_var.
	in.read(dst_var);

	int i, j;
	in_row = dst_var.range(2,0);
	in_col = dst_var.range(6,3);

	// in_col: 0-10
	out_col = 1;
	for (i = 0; i < in_col; i++) {
		out_col <<= 1;
	}

	// in_row: 0-7
	out_row = 0;
	for (i = 0; i < in_row; i++) {
		out_row |= out_row << 1;
	}

	*row = out_row;
	*col = out_col;
}
