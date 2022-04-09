Week 3 Homework - Blinking a LED

The code uses the on board user button B1 to alternately turn the red and green LEDs on and off. 
Pressing the button causes an interrupt, and a global variable is set. The variable is checked in the main while loop, and if it's true, the LEDs are both toggled. No debounce code was added because the on board button doesn't seem to need it (in library debounce handling? hardware debounce on board?). The plan is to try the code with an external button. 

The LEDs are handled by the GPIOG processor register, pin 13 for the green LED, and 14 for the red. 

![RedLED](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%203%20homework/Images/register%20when%20red%20LED%20-%20pin%2014%20-%20on.png?raw=true)

![Green LED](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%203%20homework/Images/register%20when%20green%20LED%20-%20pin%2013%20-%20on.png?raw=true)

The button state is read from GPIOA register, pin 0
![Button pressed](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%203%20homework/Images/register%20when%20button%20pressed%20-%20pin%200.png?raw=true)

![Button NOT pressed](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%203%20homework/Images/register%20when%20button%20not%20pressed%20-%20pin%200.png?raw=true)

