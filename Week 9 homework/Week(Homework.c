#include <stdio.h>

unsigned int liniar_power(unsigned int a, unsigned int n) {
	unsigned int power = 1;

	for (int i = 0; i < n; i++) {
		power = a * power;
	}

	return power;
}

unsigned int recursive_power(unsigned int a, unsigned int n) {
	unsigned int power = 1;

	if (n == 0) {
		return 1;
	}
	power = recursive_power(a, n / 2);
	if (n % 2 == 0) {
		return power * power;
	}
	else {
		return a * power * power;
	}
}

unsigned int bit_power(unsigned int a, unsigned int n) {
	unsigned int power = 1;

	while (n > 0) {
		if (n & 1u) {
			printf("%d \n", n);
			power = a * power;
		}

		n = n >> 1;
		printf("%d \n", n);
		a = a * a;
	}

	return power;
}


int main() {

	printf("Hello world!\n");
	printf("recursive:  %d \n", recursive_power(2, 11));
	printf("liniar:  %d \n", liniar_power(2, 11));
	printf("bit shift:  %d \n", bit_power(2, 11));
		
	return 0;
}