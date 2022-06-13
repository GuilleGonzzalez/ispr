#include "leds_controller.h"

#define MAX_ENRG 20000 // ????

void leds_controller(hls::stream<uint7_t>* out, data_t x, ap_int<4> col)
{
	// map row (0-MAX_ENRG; 0-7)
	ap_int<3> row; // 000-111
	row = x * 7 / MAX_ENRG;

	// Ensure row is between 0 and 7
	if (row < 0) {
		row = 0;
	}
	if (row > 7) {
		row = 7;
	}

	*out << (row | (col << 4));
}
