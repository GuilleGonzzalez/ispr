#include "leds.h"

void leds(ap_uint<7>* row, ap_uint<10>* col, hls::stream<uint7_t>& in);

int main()
{
	ap_uint<7> row;
	ap_uint<10> col;
	hls::stream<uint7_t> input;

	int i;
	for (i = 0; i < 10; i++) {
		uint11_t src_var = i;
		input << (i | (i << 7));
		leds(&row, &col, input);
		printf("%d %d\n", row.to_int(), col.to_int());
	}
   	return 0;
}
