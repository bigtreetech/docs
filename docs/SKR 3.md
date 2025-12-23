# SKR 3

<img src=img/SKR3/SKR3_Title.webp width="600" />

## **Product Profile**

The BIGTREETECH SKR 3 mother board is a brand new 32 bit motherboard developed by Shenzhen BIQU Innovation Technology Co., Ltd. that fixed all the problems of the V1.4/Turbo board with new features and improved functionality.

**Product Link:** https://biqu.equipment/products/bigtreetech-btt-skr-3-control-board-for-3d-printer

## **Features Highlights**

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

## **Specifications**

| **Dimention**                                                | 110*85mm, for details please refer to：**BIGTREETECH SKR 3-SIZE.pdf** |
| :----------------------------------------------------------- | :----------------------------------------------------------: |
| **Mounting pattern**                                         |                         **102*76mm**                         |
| **MCU**                                                      |                **ARM Cortex-M7 STM32H743VI**                 |
| **EEPROM**                                                   |                       **24C32 32Kbit**                       |
| **Voltage in**                                               |                       **DC12V-DC24V**                        |
| **Logic voltage**                                            |                         **DC 3.3V**                          |
| **Heater connection**                                        |       **Heated bed（HB）、heater cartridge（E0、E1）**       |
| **HB port max current**                                      |            **10A continuous ，11A instantaneous**            |
| **Heater cartridge max current**                             |            **5.5A continuous，6A instantaneous**             |
| **Fan port**                                                 | **3 X CNC(selectable voltage) ,2 X always on(PSU voltage)**  |
| **Fan port max current**                                     |            **1A continuous，1.5A instantaneous**             |
| **The Total Current of Heating artridges(E0, E1) + Driver + Fan** |                      **less than 10A**                       |
| **WIFI connection**                                          |                 **ESP-12S、ESP-07S、ESP32**                  |
| **Expansion port**                                           | **BLTouch（Servos、Probe）、PS-ON、PWR-DET、Fil-DET、RGB、CAN FD** |
| **Steppers supported**                                       | **TMC5160、TMC2209、TMC2225、TMC2226、TMC2208、TMC2130、ST820、LV8729、DRV8825、A4988 etc.** |
| **Stepper driver mode**                                      |                   **SPI、UART、STEP/DIR**                    |
| **Stepper motor socket**                                     | **X、Y、Z（Parallel double Z-Axis）、E0、E1 5 channels in total** |
| **Thermistor**                                               |         **2 X thermistor port(NTC/PTC selectable)**          |
| **Display**                                                  |                     **Serial、SPI、LCD**                     |
| **PC connection**                                            |                          **USB A**                           |
| **Supported file format**                                    |                          **G-code**                          |
| **Supported kinematics**                                     |       **Cartesian、Delta、Kossel、Ultimaker、CoreXY**        |
| **Recommended Slicer/Console**                               | **Cura、Simplify3D、Pronterface、Repetier-host、Makerware**  |

## **Firmware Support**

Compatible with Klipper, Marlin, RRF(RepRapFirmware) 

## **Dimensions**

<img src=img/SKR3/SKR3_Dimension.webp width="600" />

## **Peripheral Interface**

### Interface Diagram

<img src=img/SKR3/SKR3_Interface.webp width="600" />

### Pin Description

<img src=img/SKR3/SKR3_Pinout.webp width="600" />

## **Interface Introduction**

### USB Power Supply

After the SKR 3 board has been powered，the Red led D7(Power) to the upper right of the MCU will light up, indicating power on. When using only USB to power the boar, Please insert the jumper cap onto the VUSB jumper.

<img src=img/SKR3/SKR3_USB.webp width="600" />

### Stepper Motor Drivers

#### STEP/DIR(STANDALONE) mode

i.e：A4988、DRV8825、LV8729、ST820 etc，connect jumpers(MS0-MS2) according to the microstep chart

<img src=img/SKR3/SKR3_Step.webp width="600" />

For details, please click: https://bigtreetech.github.io/docs/Tutorials.html

#### UART mode of TMC driver

i.e：TMC2208、TMC2209、TMC2225 etc. Place jumpers according to the diagram below，microstep and current can be configured in firmware.

<img src=img/SKR3/SKR3_Uart.webp width="600" />

####  TMC driver SPI mode

i.e：TMC2130、TMC5160、TMC5161 et.c，Place jumpers according to the diagram below，microstep and current can be configured in firmware.

<img src=img/SKR3/SKR3_SPI.webp width="600" />

#### TMC driver DIAG(Sensorless Homing)

When using sensorless homing, place jumpers according to the diagram below, there is no need to cut the DIAG pin off when not being used.

<img src=img/SKR3/SKR3_Diag.webp width="600" />

### USB and CAN mode

When the button shown below is released, the board is in usb mode, when pressed down, the board is in CAN FD mode.

<img src=img/SKR3/SKR3_USB_CAN.webp width="600" />

### Voltage selection for CNC Fan

Connect jumper between the two pins of VIN if using DCIN as CNC fan voltage.
Connect jumper between the two pins of VOT and insert SKR 3-DC MODE on to the 2*4 Pin sockets if 12V or 5V is desired *

<font  color="red">**Note: The voltages of the 3xCNC fans are unified, different voltages cannot be set separately. i.e: the voltage of 3xCNC can be set to 24V, 12V or 5V at the same time, but it cannot be set to the combination of 24V+12V+5V.**</font>

<img src=img/SKR3/SKR3_CNC.webp width="600" />

Voltage of the SKR 3-DC MODE is set by connecting jumpers on 5V or 12V on VOTChoose pins.

<img src=img/SKR3/SKR3_CNC1.webp width="600" />

### 100K NTC or PT1000 setting

When using 100K NTC no jumpers need to be connected，the pull up resistance of TH0 & TH1 is 4.7K. When using PT1000 the jumpers indicated in the picture below needs to be connected, the pull up resistance of TH0 & TH1 is changed to 1K.

<img src=img/SKR3/SKR3_100K.webp width="600" />

### BLTouch wiring

<img src=img/SKR3/SKR3_BLtouch.webp width="600" />

### Auto power off (Relay V1.2) wiring

<img src=img/SKR3/SKR3_Auto.webp width="600" />

### Power loss recovery (UPS 24V V1.0) wiring

<img src=img/SKR3/SKR3_Power.webp width="600" />

### RGB wiring

<img src=img/SKR3/SKR3_RGB.webp width="600" />

### Filament sensor wiring

<img src=img/SKR3/SKR3_Filament.webp width="600" />

### Display wiring

<img src=img/SKR3/SKR3_Display.webp width="600" />

### Heater cartridge IO

The IO of the SKR 3 heater cartridge is wired to the MOS by the jumper. You can remove the jumper and connect the IO to device directly if you need to use the laser or other device that need PWM. 

<font  color="red">**Note: The IO passes through logic conversion chip, the output high level is 5V, and cannot be used as an input.**</font>

<img src=img/SKR3/SKR3_Heater.webp width="600" />

## **Marlin**

### install compiling environment

https://github.com/bigtreetech/Document/blob/master/How%20to%20install%20VScode%2BPlatformio.md

https://marlinfw.org/docs/basics/install_platformio_vscode.html

Refer to the link above for tutorial on installing VSCode and PlatformIO plugin

### Download Marlin firmware

1、Download the newest bugfix version of Marlin from official website

https://github.com/MarlinFirmware/Marlin/tree/bugfix-2.0.x

2、Download Pre-configured firmware from our GitHub page

https://github.com/bigtreetech/SKR-3

### Configure firmware

#### Open Marlin project

You can open Marlin in VS Code in one of several ways:

- Drag the downloaded Marlin Firmware folder onto the VScode application icon
- Use the **Open…** command in the VSCode **File** menu
- Open the PIO Home tab and click the “**Open Project**” button

#### Compiling environment

Open **platformio.ini** file and change **default_envs** to **STM32H743Vx_btt**

<img src=img/SKR3/SKR3_Marlin1.webp width="600" />

#### Configure motherboad and serial port

Set `MOTHERBOARD` to `BOARD_BTT_SKR_3`

**Enable serial ports according to your needs**

<font  color="pink">**#define**</font> <font  color="blue">**MOTHERBOARD BOARD_BTT_SKR_3**</font>

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT**</font> <font  color="green">**1**</font> (enable TFT serial port)

<font  color="pink">**#define**</font> <font  color="blue">**BAUDRATE**</font> <font  color="green">**115200**</font> （set baudrate to the same as the communication device）

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT_2 **</font> <font  color="green">**-1** </font>（enable USB serial port）

<font  color="pink">**#define**</font> <font  color="blue">**SERIAL_PORT_3**</font> <font  color="green">**3** </font> （enable WIFI serial port）

<img src=img/SKR3/SKR3_Marlin2.webp width="600" />

#### Configure stepper driver

<img src=img/SKR3/SKR3_Marlin3.webp width="600" />

When using SPI mode，<font  color="blue">**TMC_USE_SW_SPI**</font> needs to be Uncommented in Configuration_adv.h

<font  color="pink">**#define**</font> <font  color="blue">**TMC_USE_SW_SPI**</font>

<img src=img/SKR3/SKR3_Marlin4.webp width="600" />

#### Sensorless homing

<img src=img/SKR3/SKR3_Marlin5.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**SENSORLESS_HOMING**</font> // enable sensorless homing

<font  color="pink">**#define**</font> <font  color="blue">**xx_STALL_SENSITIVITY **</font> <font  color="green">**8**</font> // sensitivity setting ,TMC2209 range from 0 to 255，higher number results in more sensitive trigger threshold，sensitivity too high will cause endpoint to trigger before gantry actually move to the end，lower number results in less sensitive trigger threshold,，too low of sensitivity will cause endpoint to not trigger and gantrying continue。Other drivers ranges from 63 to -64，lower numbers results in more sensitive triger threshold 

<font  color="pink">**#define**</font> <font  color="blue">**IMPROVE_HOMING_RELIABILITY**</font> // can be used to set independent motor current for homing moves(xx_CURRENT_HOME) to improve homing reliability.

#### 100K NTC or PT1000

When using 100K NTC, pullup resistance is 4.7K, when using Pt1000, pullup resistance is 1K,set sensor type to 1 for 100K NTC +4.7K pullup resistance ，
1010 for PT1000 + 1K pullup resistance.

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_0 **</font><font  color="green">**1**</font>

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_1 **</font><font  color="green">**1**</font>

<font  color="pink">**#define**</font> <font  color="blue">**TEMP_SENSOR_BED **</font><font  color="green">**1**</font>

<img src=img/SKR3/SKR3_Marlin6.webp width="600" />

#### BLTouch

<img src=img/SKR3/SKR3_Marlin7.webp width="600" />

<font  color="green">**//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN**</font>

<img src=img/SKR3/SKR3_Marlin8.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**BLTOUCH**</font>  // Enable bltouch

<img src=img/SKR3/SKR3_Marlin9.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_TO_PROBE_OFFSET**</font>  <font  color="green">**{ -40, -10, -2.85 }**</font>  // set BLtouch probe offset

<font  color="pink">**#define**</font> <font  color="blue">**PROBING_MARGIN**</font>  <font  color="green">**10**</font> // set distance between probe area and print area perimeter

<img src=img/SKR3/SKR3_Marlin10.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**AUTO_BED_LEVELING_BILINEAR**</font> // set probe pattern

<font  color="pink">**#define**</font> <font  color="blue">**RESTORE_LEVELING_AFTER_G28**</font> // apply leveling after G28 homing command

<img src=img/SKR3/SKR3_Marlin11.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**GRID_MAX_POINTS_X **</font> <font  color="green">**5**</font> // set number of probe points for x axis, usually 5 point is sufficient
<font  color="pink">**#define**</font> <font  color="blue">**GRID_MAX_POINTS_Y GRID_MAX_POINTS_X**</font> // set number of probe points for Y axis to the same as X axis

If bltouch also functions as your Z homing sensor，no wiring change is needed,

<img src=img/SKR3/SKR3_Marlin12.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**USE_PROBE_FOR_Z_HOMING**</font> // use Z Probe(BLtouch) for Z homing

<img src=img/SKR3/SKR3_Marlin13.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**Z_SAFE_HOMING**</font> // home Z at the center of print bed to prevent probing outside of the print bed.

#### Auto power off(Relay V1.2)

<img src=img/SKR3/SKR3_Marlin14.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**PSU_CONTROL**</font> // enable PSU control to turn on and off using M80 and M81

<font  color="pink">**#define**</font> <font  color="blue">**PSU_ACTIVE_STATE HIGH **</font> // set turn on level， Relay V1.2 is turned on with high level and turned off with low level ,so this setting needs to be 
HIGH.

#### Power loss revovery

There are two methods for power lost recovery

1、No extra module needed, the motherboard will write current print status to the SD card after every layer is printed, which shortens the life of the SD 
card severely.

<img src=img/SKR3/SKR3_Marlin15.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_RECOVERY**</font> // enable power loss recovery#define

<font  color="pink">**#define**</font> <font  color="blue">**PLR_ENABLED_DEFAULT true**</font> // true default to power loss recovery enabled

2、external UPS 24V V1.0 module，when power is cut, the module will provide power to the board and signal the board to save current print status to SD card. This method has virtually no effect on the life of the SD card.

<img src=img/SKR3/SKR3_Marlin16.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_RECOVERY**</font> // enable power loss recovery

<font  color="pink">**#define**</font> <font  color="blue">**PLR_ENABLED_DEFAULT true**</font> // true default to power loss recovery enanbled

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_ZRAISE**</font> <font  color="green">**10**</font> // raise the print head by 10mm after power loss to prevent the nozzle from touching the printed part.

<font  color="pink">**#define**</font> <font  color="blue">**POWER_LOSS_STATE HIGH **</font> // set signal level， UPS 24V V1.0 returns low level when not triggered and HIGH level when power is cut, thus this setting needs to be HIGH. 

#### RGB

<img src=img/SKR3/SKR3_Marlin17.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_LED**</font> // enable Neopixel
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_TYPE NEO_GRB **</font> // set Neopixel type
<font  color="green">**//#define NEOPIXEL_PIN 4**</font> // disable PIN setting，use the correct signal pin in the pin file of the motherboard 
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_PIXELS**</font> <font  color="green">**30**</font> // number of leds
<font  color="pink">**#define**</font> <font  color="blue">**NEOPIXEL_STARTUP_TEST**</font> // the light will show red green and blue sequentially to self-test.

If you are using displays like LCD2004、12864、mini12864 etc，you can also control RGB from your display directly.

<img src=img/SKR3/SKR3_Marlin18.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**LED_CONTROL_MENU**</font> // And led control to your menu

#### Filament sensor

Standard filament run out sensors are usually comprised of a microswitch which signals the mainboard of filament status with High or Low level signal.

<img src=img/SKR3/SKR3_Marlin19.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_RUNOUT_SENSOR**</font> // enable filament run out sensor
<font  color="pink">**#define**</font> <font  color="blue">**FIL_RUNOUT_ENABLED_DEFAULT true**</font> // true default to filament run out sensor enanbled 
<font  color="pink">**#define**</font> <font  color="blue">**NUM_RUNOUT_SENSORS**</font> <font  color="green">**1**</font> // number of filament run out sensor
<font  color="pink">**#define**</font> <font  color="blue">**FIL_RUNOUT_STATE LOW **</font> // voltage level of the filament runout sensor trigger signal.

#### smart filament sensor(SFS V1.0 / V2.0)

The Smart filament sensor works by continuously sending signal to the mainboard to communicate filament status

<img src=img/SKR3/SKR3_Marlin20.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_MOTION_SENSOR**</font> // set encoder type
<font  color="pink">**#define**</font> <font  color="blue">**FILAMENT_RUNOUT_DISTANCE_MM**</font> <font  color="green">**3**</font> // set sensitivity，SFS V1.0 nominal setting should be 7mm，which means if no signal of filament movement is detected after 7mm of filament travel command, filament error will be triggered ，SFS V2.0 nominal setting should be 3mm

The settings below also need to be set to instruct the printer to park the nozzle after filament error is detected.

<img src=img/SKR3/SKR3_Marlin21.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_PARK_FEATURE **</font> // park nozzle

<font  color="pink">**#define**</font> <font  color="blue">**NOZZLE_PARK_POINT { (X_MIN_POS + 10), (Y_MAX_POS - 10), 20 }**</font> //set the X,Y,and Z offset coordinate of the nozzle

<img src=img/SKR3/SKR3_Marlin22.webp width="600" />

<font  color="pink">**#define**</font> <font  color="blue">**ADVANCED_PAUSE_FEATURE**</font> // retraction setting of nozzle park movement and filament purge distance after print is resumed.

#### ESP3D

The serial port between ESP8266 and Marlin on the motherboard is UART3

<img src=img/SKR3/SKR3_Marlin23.webp width="600" />

the newest ESP3D firmware can be found at https://github.com/luc-github/ESP3D ,compile your own binary file and rename to `esp3d.bin`, copy to 
the root directory of the sd card, insert into the motherboard and press reset button. The bootloader will update the firmware to ESP8266 automatically. If updated successfully, the file will be renamed to ESP3D.CUR

#### Compile firmware

1、Click `√` to compile firmware

<img src=img/SKR3/SKR3_Marlin24.webp width="600" />

2、Copy the compiled `firmware.bin` to SD card and insert to motherboard to update firmware

<img src=img/SKR3/SKR3_Marlin25.webp width="600" />

## **Klipper**

### Preparation

#### Download OS image

Download your preferred OS image with build in WebUI，popular choices are Fluidd, Mainsail etc.

Fluidd：https://github.com/fluidd-core/FluiddPI/releases

<img src=img/SKR3/SKR3_Klipper1.webp width="600" />

Mainsail：https://github.com/mainsail-crew/MainsailOS/releases

<img src=img/SKR3/SKR3_Klipper2.webp width="600" />

Or refer to <font  color="blue">**Klipper official installation guide**</font> using Octoprint

#### Download and install Raspberry Pi Imager

Install the official raspberry pi imager https://www.raspberrypi.com/software/

### Write image

For details, please click: https://bttwiki.com/Software%20Installation.html#write-os

### WIFI setting

<font  color="red">**NOTE：skip this step if you are using ethernet port not using WIFI **</font>

1、Reinsert the SD card

2、Find“fluiddpi-wpa-supplicant.txt”or “mainsail-wpa-supplicant.txt”in the SD card root directory, open it with VSCode (do not open it with windows 
notepad)

<img src=img/SKR3/SKR3_WIFI1.webp width="600" />

3、delete `#` ,insert the correct wifi SSID and password then save the file，

<img src=img/SKR3/SKR3_WIFI2.webp width="600" />

### ssh connect to raspberry pi

1、Install the ssh application Mobaxterm：https://mobaxterm.mobatek.net/download-home-edition.html

2、Insert SD card to raspberry pi，wait for system to load after power one，aprox. 1-2min

3、The raspberry pi will automatically be assigned a IP address after successfully connected to the network

4、Find the raspberry pi IP address in your router page

<img src=img/SKR3/SKR3_WIFI3.webp width="600" />

5、Or use the https://angryip.org/ tool，scan all IP address in the current network organize by names, find the IP named Fluidd or Mailsail like shown 
below

<img src=img/SKR3/SKR3_WIFI4.webp width="600" />

6、Open Mobaxtermand click“Session”，and click“SSH”，inset the raspberry pi IP into Remote host and click“OK”

<font  color="red">**NOTE：your computer and the raspberry pi needs to be in the same network **</font>

<img src=img/SKR3/SKR3_WIFI5.webp width="600" />

7、login as：pi password：raspberry

<img src=img/SKR3/SKR3_WIFI6.webp width="600" />

### Compile firmware

1、After ssh successfully connected to the raspberry pi, enter in terminal:

```
cd ~/klipper/
make menuconfig
```

Compile with the configuration shown below(if the options below is not available, please update you Klipper source code to the newest version)

* [*] Enable extra low-level configuration options 
* Micro-controller Architecture (STMicroelectronics STM32) ---> 
* Processor model (STM32H743) ---> 
* Bootloader offset (128KiB bootloader (SKR SE BX v2.0)) ---> 
* Clock Reference (25 MHz crystal) ---> 
* Communication interface (USB (on PA11/PA12)) --->

<img src=img/SKR3/SKR3_Firmware1.webp width="600" />

2、Press `q` to exit, and `Yes` when asked to save the configuration

3、Run make to compile firmware，“klipper.bin”file will be generated in home/pi/kliiper/out folder when make is finished, download it onto your 
computer using the ssh application.

<img src=img/SKR3/SKR3_Firmware2.webp width="600" />

4、Rename klipper.bin to“firmware.bin”，copy to SD card to update firmware

5、Enter：ls /dev/serial/by-id/in command line to check motherboad ID to confirm whether firmware is updated successfully like showm below.

<img src=img/SKR3/SKR3_Firmware3.webp width="600" />

copy and save this ID，it is needed when modifying klipper config

### Configure Klipper

1、Enter your raspberry pi IP address into your browser to open the webUI，find the reference config for motherboard in the directory shown below，if 
there is no such config available, update your klipper source code to the newest version or download from github:https://github.com/bigtreetech/SKR-3

<img src=img/SKR3/SKR3_Klipper1.webp width="600" />

2、Upload your finished config file into Configuration Files, and rename to `printer.cfg`

<img src=img/SKR3/SKR3_Klipper2.webp width="600" />

3、Insert the correct motherboad ID

<img src=img/SKR3/SKR3_Klipper3.webp width="600" />

4、Refer to https://www.klipper3d.org/Overview.html for detailed configuration guide according to your machine type.

### Firmware update

1. Update using Micro SD
2. Make sure Micro SD is formatted to FAT32
3. Rename your firmware file to“firmware.bin”（note：make sure your system is showing file suffix, if suffix is hided,“firmware.bin”will be shown 
   as“firmware”）
4. Copy“firmware.bin”to the root directory of your SD card.
5. Insert Micro SD to the motherboard and power on, the bootloader will automatically update the firmware
6. The status indicator led will flash during the update process
7. When the led stops flashing and the firmware.bin file has been renamed to firmware.cur, the firmware has been successfully updated.

## **Precausions**

1. When not using PT1000,do not connect any jumper in the PT1000 pins，otherwise 100K NTC will not work.
2. Maximum heated bed current is 10A，if high power heated bed is preferred, please use 24v to power the system and use a 24v heated bed.
3. CNC fan voltage selecting jumper must be inserted for CNC fan port to work correctly
4. If the board is plugged into your computer and not responding, make sure the USB/CAN selecting button is released and set to USB mode.
5. The Micro SD card slot is not spring loaded, please be careful when inserting the Micro SD card to prevent damage to the card slot. BTT is not 
    responsible for any damage caused by forcefully inserting the Micro SD card

## **FAQ**

**Q: Max current of heated bed,heater cartridge,fan port?** 
A：heated bed： 10A continuous，11A instantaneous
 	  heater cartridge： 5.5A continuous，6A instantaneous
	   Fan port: 1A continuous，1.5A instantaneous
       combined current of heater cartridges(E0, E1), stepper driver and fan port should not exceed 10A

**Q：Can not update firmware with SD card** 
A：make sure your sd card is formatted to FAT32，firmware file name is `firmware.bin`, make sure your system is showing file suffix, if suffix is 
hided,“firmware.bin”will be shown as `firmware`.
