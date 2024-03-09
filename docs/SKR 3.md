# SKR Pico

<img src=img/SKR3/SKR3_Title.png width="600" />

## **Introduction**

The BIGTREETECH SKR 3 mother board is a brand new 32 bit motherboard developed by Big Tree Technology Co., Ltd that fixed all the problems of the V1.4/Turbo board with new features and improved functionality.

## **Main Features**

- Utilize 32bit 480MHz ARM Cortex-M7 serires STM32H743VI MCU for massively improved performance
- TPS5450-5A power supply chip，support DC12/24V power input, current output rated at 5A max continuous and 6A max instantaneous，sufficient power supply for Raspberry pi(3A requirement)
- Onboard BOOT button to enable DFU mode to update bootloader
- Thermistor circuit is protected to prevent MCU damage from shorted heatbed and heater cartridge connection.
- Selectable voltage (24V, 12V, 5V by **SKR 3-DC MODE**)for CNC fan (Note: The voltages of the 3 * CNC fans are unified, different voltages cannot be set separately for different ports)，no more need for external stepdown thus prevent board damage from user error
- Thermistor connection supports Pull up resistance value setting using jumpers, No more extra module needed for PT1000
- Supports all models of Serial TFT, SPI TFT, and LCD12864/2004 from BTT
- Firmware installation from using MicroSD card, simple and efficient
- Integrated SPI and UART mode of TMC driver and DIAG pin，easily configurable with jumpers
- Supports power loss recovery, filament runout sensor, Auto poweroff,BLTouch, RGB led etc.
- High efficiency MOSFET for less heat generation
- Replaceable fuse for easy maintenance
- WIFI module（ESP-12S、ESP-07、ESP32）supported
- Onboard SDIO MicroSD slot for Higher transfer rateOnboard EEPROM for setting storage
- 2 method for CAN connection:USB & XH2.54 6Pin，USB port CAN/USB mode is selected by switches.

## **Basic Parameters**

- Dimention：110*85mm, for details please refer to：**BIGTREETECH SKR 3-SIZE.pdf**
- Mounting pattern：102*76mm
- MCU：ARM Cortex-M7 STM32H743VI
- EEPROM：24C32 32Kbit
- Voltage in：DC12V-DC24V
- Logic voltage：DC 3.3V
- Heater connection：Heated bed（HB）、heater cartridge（E0、E1）
- HB port max current：10A continuous ，11A instantaneous
- Heater cartridge max current：5.5A continuous，6A instantaneous
- Fan port：3 X CNC(selectable voltage) ,2 X always on(PSU voltage)
- Fan port max current：1A continuous，1.5A instantaneous
- The Total Current of Heating cartridges(E0, E1) + Driver + Fan: less than 10A
- WIFI connection：ESP-12S、ESP-07S、ESP32
- Expansion port：BLTouch（Servos、Probe）、PS-ON、PWR-DET、Fil-DET、RGB、CAN FD
- Steppers supported：TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988 etc.
- Stepper driver mode：SPI、UART、STEP/DIR
- Stepper motor socket：X、Y、Z（Parallel double Z-Axis）、E0、E1 5 channels in total
- Thermistor: 2 X thermistor port(NTC/PTC selectable)
- Display：Serial、SPI、LCD
- PC connection：USB A
- Supported file format：G-code
- Supported kinematics：Cartesian、Delta、Kossel、Ultimaker、CoreXY
-  Recommended Slicer/Console：Cura、Simplify3D、Pronterface、Repetier-host、Makerware

## **Dimensions**

<img src=img/SKR3/SKR3_Dimension.png width="600" />

## **Pinout**

<img src=img/SKR3/SKR3_Pinout.png width="600" />

## **Interface Diagram**

<img src=img/SKR3/SKR3_Interface.png width="600" />

## **Hardware Configuration**

### **Motherboard LED meanings**

When the motherboard is powered on：
LED6 - power indicator: the red light is on, indicating normal power supply.
LED4 - hot bed HB status indicator: always on when heating, off when not heating
LED5 - heating rod HE status indicator: always on when heating, off when not heating
LED1 - FAN1 status indicator: on when turned on, off when turned off
LED2 - FAN2 status indicator: on when turned on, off when turned off
LED3 - FAN2 status indicator: on when turned on, off when turned off
LED7 - RGB light, light color can be set

## **Hardware Installation**

### Sensorless homing function

<img src=img/SKR_Pico/SKR_Pico_Sensorless.png width="600" />

The jump caps are connected to corresponding axis as show

**<font  color="red">NOTE: If you select this function, you cannot use external ENDSTOP！！！ </font>**

### Connection with RGB color Lights

<img src=img/SKR_Pico/SKR_Pico_RGB.png width="600" />

### Connection with BLtouch

<img src=img/SKR_Pico/SKR_Pico_BLtouch.png width="600" />

###  Connection with Proximity switch

 Connection with Proximity switch, Select the type of proximity switch as PNP or NPN by jumper

<img src=img/SKR_Pico/SKR_Pico_Proximity.png width="600" />

### Connection with Raspberry Pi

a. Communication via USB

<img src=img/SKR_Pico/SKR_Pico_Rasp.png width="600" />

b. Communication via UART

<img src=img/SKR_Pico/SKR_Pico_Rasp1.png width="600" />

Please refer to BTT SKR Pico V1.0-PIN.pdf for more details.

## Firmware of Motherboard

1. How to get Contact our customer service or technical support to get.
Log in the open source website to download: 
https://github.com/bigtreetech

2. Firmware update method 

    (1) Insert a jumper cap on the Boot pins of the motherboard and click the Reset button to enter the burn mode.

    <img src=img/SKR_Pico/SKR_Pico_Firmware.png width="600" />

    (2) Connect USB-C to computer, then you will see a USB flash drive named RPI-PR2, copy compiled klipper.uf2 file to the USB flash drive, the motherboard will automatically reboot and update the firmware, the computer will re-identify this USB flash drive means the firmware update is complete, unplug the jump cap and click the Reset button to enter normal working mode.

<img src=img/SKR_Pico/SKR_Pico_Firmware1.png width="600" />

​		(3) Please refer to BTT SKR Pico V1.0-PIN.pdf for Firmware DIY.

## Precaution

1. If you want to use a motor drive current of more than 0.8A, it is recommended to use a fan to actively cool the drive chip.
2. Do not remove the heat sink unless necessary. If it is to be removed, please ensure that the thermal conductive silicon film fits the bottom of the heat sink during installation, so as not to cause short circuit
3. The wiring must be performed when the power is off.Please make sure the wiring is correct before power on to avoid damage.
4. Please note that the jumper cap is correctly inserted.

Should you have any issues, please don't hesitate to contact us. We strive to provide you with the best quality products and services. If you have any good comments or suggestions, please feel free to share with us. Thank you for choosing BIGTREETECH products!
