# Air Quality Monitor 

## Motivation
From measuring CO2 levels in a crowded room for Covid19 (and other respiratory infections) prevention, to tracking air pollution in the city, to checking if the soldering fume extractor is working properly, portable air quality monitors are useful tools to have around.  And luckily, they are (relatively) cheap and easy to DIY.

The purpose of this project is to build one of these air quality monitors, using 2 sensor initially, a true CO2 sensor, and an air particles sensor, with the possibility to add others in the future (like volatile organic compounds sensors, etc)

I've designed this project to be used as both a portable device on battery, and a room monitor, with the addition of a RGB lamp for distance notification.

## Hardware
- STM32F429I-DISC1 Discovery board (using the touch screen interface)
- PMSA003I air particle sensor breakout board on I2C
- SCD-40 Co2 sensor breakout board on I2C
- DS3231 Precision RTC breakout board on I2C
- Potentiometers, buttons
- WS2812B (Neopixel) LED ring
- Adafruit PowerBoost 1000 Charger
- Battery / Power supply 
 
### Hardware Block Diagram
![HW DIAGRAM](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%204%20homework/Week%204%20Homework-HW%20diagram.png?raw=true)


## Toolchain and Software
- Working on Windows 10 / 11
- STM32CubeIDE Version: 1.9.0
- TouchGFX Designer Version: 4.19.1
- BSP libraries from ST (insert exat versions used)
- Neopixel library
- ...


### Software Block Diagram
![SW DIAGRAM](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%204%20homework/Week%204%20Homework-SW%20block%20diagram.png?raw=true)


### Software Hierarchy of Control
![SW CONTROL](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%204%20homework/Week%204%20Homework-SW%20Hierarchy%20of%20Control.png?raw=true)


### State machine
Flow Chart state machine
![FLOW](https://github.com/snkYmkrct/Making_Embedded_Systems_Course/blob/main/Week%204%20homework/Week%204%20Homework-Flow%20Chart%20state%20machine.png?raw=true)

Current version of the state table: https://docs.google.com/spreadsheets/d/1JimFYMGVc1ZfjMCN791TDpzwdjA5hTvn5mYWAqrn6kg/edit?usp=sharing

