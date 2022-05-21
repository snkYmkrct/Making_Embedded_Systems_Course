

### Processor memory map in Datasheet
![DATASH](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%208%20homework/images/processor%20datasheet%20memory%20map.png?raw=true)
 
### Map File
![MAP FILE](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%208%20homework/images/memory%20config%20in%20map%20file.png?raw=true)


### Code

```sh

/* USER CODE BEGIN PV */
volatile GPIO_PinState MyButtonPressed = 0u;
uint8_t isConsoleStarted = 0u;
uint8_t hugeVar[65536];
int randomVar;
/* USER CODE END PV */

...

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void randomFunction1();

void randomFunction(){
	static int rdV1;
	int rdV2;
	  printf("   Static int var in function     | %p \r\n", &rdV1);
	  printf("   Int variable inside function   | %p \r\n", &rdV2);
	  printf("----------------------------------|--------------\r\n");
	  randomFunction1();
}

void randomFunction1(){
	static int rdV1;
	int rdV2;
	  printf("   Static int var in function 1   | %p \r\n", &rdV1);
	  printf("   Int variable inside function 1 | %p \r\n", &rdV2);
}
/* USER CODE END 0 */

...

int main(void)
{
...
  /* USER CODE BEGIN WHILE */
  printf("   Initialized global variable    | %p \r\n", &MyButtonPressed);
  printf("   Initialized global variable    | %p \r\n", &isConsoleStarted);
  printf("   UNinitialized global variable  | %p \r\n", &hugeVar);
  printf("   UNinitialized global variable  | %p \r\n", &randomVar);
  printf("----------------------------------|--------------\r\n");
  printf("   Function address               | %.8p \r\n", &randomFunction);
  printf("----------------------------------|--------------\r\n");
  randomFunction();
  char *str ;
  str = (char *) malloc(10);
  printf("----------------------------------|--------------\r\n");
  printf("   Malloc'ed string               | %p\r\n", str);
  printf("\r\n\r\n");

  while (1)
  {
...
    /* USER CODE END WHILE */
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

...

```

### Test reults
![RESULTS](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%208%20homework/images/printf%20results.png?raw=true)
