#  F429Discovery board - Integrating TouchGFX into a STM32Cube IDE project

For the final project, I intend to create a graphic UI on the integrated board display, that would require the use of the touch screen. I also do not intend to use any OS. 

Out of all the examples tested, the TouchGFX library seems to give the best "out of the box" results in regards to responsiveness and accuracy of the touch screen. But creating a project directly with the TouchGFX Designer application generates a structure of nested projects that I found very difficult to configure and use. 

So I decided to eliminate as much complexity as possible, and integrate TouchGFX in a project already created with Cube IDE. 

This guide was tested on Windows 10/11, using STM32CubeIDE version 1.9.0, and TouchGFX Designer 4.19.1

## Create and configure a STM32Cube project
Create a new Stm32Cube project for the **_STM32F429I-DISC1_** board, intialize peripherals, and generate the code. 
In the .ioc file, disable FreeRTOS from the  **Pinouts&Configuration --> Middleware** section, save, and regenerate code. 
Build project. 

In the .ioc file again:  **Pinouts&Configuration --> Software Packs dropdown --> Select Components**

![SWpack](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/01.png?raw=true)

Make sure that TouchGFX is installed and application is selected. 

![Appinst](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/02.png?raw=true)

Now the Software Packs option should appear in the left hand menu, enable Graphics Application.
Change the Interface, and Application Tick Source in the configuration. 

![GApp](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/03.png?raw=true)

Save and regenerate code. A new TouchGFX folder should be added to the project tree. 

At the moment, the project doesn’t compile anymore - it is not fully generated.

## Add the TouchGFX component
Opening the _ApplicationTemplate.touchgfx.part_ file from the TouchGFX folder should start the TouchGFX Designer application, into the Import UI menu. Select Blank UI (no other options are available for this board) and click import. 

Make sure to edit the blank UI screen, save the changes, and click on generate code. 

![UIedit](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/04.png?raw=true)

The project in the Cube IDE should now be updated, and build with no errors. 

## LCD and Touch drivers
To save time and effort, the drivers for the LCD and touch controller cand be taken from the ST BSP repositories on GitHub.

- Lcd controller driver - https://github.com/STMicroelectronics/stm32-ili9341/releases/tag/v1.0.2
- Touch controller driver - https://github.com/STMicroelectronics/stm32-stmpe811/releases/tag/v2.0.0
- From https://github.com/STMicroelectronics/32f429idiscovery-bsp/releases/tag/v2.1.7 : stm32f429i_discovery.h, stm32f429i_discovery.c 
- From https://github.com/STMicroelectronics/stm32-bsp-common/releases/tag/v4.0.1 : io.h, lcd.h, ts.h

There are compatibility issues between these repositories, so the versions used are not always the latest. 

![DriverTree](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/05.png?raw=true)

The newly created folders need to be added to the Include Paths for the C and the C++ compilers.

**Project --> Properties --> C/C++ Build --> Settings -->**
- MCU GCC Compiler --> Include paths
- MCU G++ Compiler --> Include paths

![Includes](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/06.png?raw=true)


## Initialize the LCD controller 
In the .ioc file, configure clock for the LCD-TFT to be 6MHz (value from the data sheet)

![CLOCK](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/TouchGFX%20%26%20STM32CUBE%20Example/Images/07.png?raw=true)

In main.c add include and code for LCD initialization.
```sh
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "ili9341.h"
/* USER CODE END Includes */
```
```sh
static void MX_LTDC_Init(void)
{
  /* USER CODE BEGIN LTDC_Init 0 */
	ili9341_drv.Init();
  /* USER CODE END LTDC_Init 0 */
```

Now the project should build, and run on the board with no problems. 

## Initialize the Touch controller 
In the **TouchGFX --> target** folder, modify _STM32TouchController.cpp_ The _Init()_ and _SampleTouch()_ methods need to be implemented. 

I took the whole file from another project generated directly by the TouchGFX Designer app - see attached code file.  

## And... working example done: 
https://youtu.be/bFI9StkcWds


