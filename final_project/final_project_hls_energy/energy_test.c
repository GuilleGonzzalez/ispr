#include <stdio.h>
#include <math.h>
#include "energy.h"

void energy(data_t *y, data_t x);

int main() {
  FILE *fp;
  data_t input, output;

  fp = fopen("energy_test.dat", "w");
  for (int i = 0; i < 10; i++) {
	  input = i;
	  energy(&output, input);
   	  printf("%i %d %d\n", i, (int)input, (int)output);
  }

  fclose(fp);

  return 0;
}
