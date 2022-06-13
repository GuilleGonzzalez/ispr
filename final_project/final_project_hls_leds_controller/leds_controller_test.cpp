#include "leds_controller.h"

void leds_controller(hls::stream<uint11_t>* out, data_t x[10], ap_int<4> col);

int main()
{
	data_t input = 10000;
	ap_uint<4> col = 0;
	hls::stream<uint11_t> out;
	uint11_t output;

	int i;
	for (i = 0; i < 10; i++) {
		out.read(output);
		col++;
		uint11_t src_var = i;
		input << (i | (i << 7));
		leds_controller(&out, input[0], col);
		printf("%d %d %d\n", input, col.to_int());
	}
   	return 0;
}
