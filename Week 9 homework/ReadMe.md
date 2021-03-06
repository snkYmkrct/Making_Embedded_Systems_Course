

### Computing a to the power of n

```sh
#include <stdio.h>

// Recursivity - Stack killer
unsigned int recursive_power(unsigned int a, unsigned int n) {
	if (n == 0) {
		return 1;
	}
	else {
		return a * recursive_power(a, n - 1);
	}
}

// O(n) liniar implementation
unsigned int liniar_power(unsigned int a, unsigned int n) {
	unsigned int power = 1;

	for (int i = 0; i < n; i++) {
		power = a * power;
	}

	return power;
}

// O(logn) implementation with bit shift operations
unsigned int bit_power(unsigned int a, unsigned int n) {
	unsigned int power = 1;

	while (n > 0) {
		if (n & 1u) {
			power = a * power;
		}
		n = n >> 1;
		a = a * a;
	}

	return power;
}


int main() {

	printf("recursive:  %d \n", recursive_power(2, 11));
	printf("liniar:  %d \n", liniar_power(2, 11));
	printf("bit shift:  %d \n", bit_power(2, 11));
		
	return 0;
}

```
