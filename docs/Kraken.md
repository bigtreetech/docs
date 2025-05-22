# KRAKEN V1.0/V1.1

<img src=img/Kraken/kraken_title.png width="600" />

## **Product Profile**

BIGTREETECH Kraken V1.0 is a 32-bit motherboard for large printers. It comes with onboard high-voltage, high-current stepper motor drivers, significantly simplifying the connection between the motherboard and high-voltage drivers and saving space in the chassis. The board uses silkscreened ID design with an ID-design heat sink for aesthetics and practical cooling.

## **Features Highlights**

- Utilizes a 32-bit ARM Cortex-M7 series STM32H723ZGT6 MCU with a main frequency of 550 MHz.
- TPS5450-5A power chip, supporting DC12/24V power input. This chip provides an output current of up to 5A, peaking at 6A, perfectly supporting Raspberry Pi power supply.
- The motherboard has a reserved BOOT button, allowing users to update the bootloader via DFU mode.
- The thermistor circuit is protected to prevent MCU damage from shorted heated bed and heater cartridge connections;
- Selectable voltage (24V, 12V, 5V) for PWM fan, eliminating the need for external voltage conversion modules, thereby reducing the likelihood of motherboard damage. 
- Onboard two MAX31865 modules, supporting dual PT thermocouples and compatible with two or four-wire PT100/PT1000, facilitating DIY usage for customers.
- Firmware can be upgraded via MicroSD card or through the Klipper's `make flash` command via DFU.
- Onboard 8 TMC2160 drivers in SPI mode with DIAG function pins; simply plug and unplug jumpers for easy use.
- Reserved interfaces for Filament Detection, Auto Power-Off, Probe, RGB, I2C, Servo, EXP1+EXP2, CAN, UART (SBC), and USB A power output. 
- High-performance MOSFETs to reduce heat generation.
- Replaceable fuses for easy replacement.
- 2x 4-pin fan interfaces with selectable voltages of 24V, 12V, and 5V, also suitable for water cooling setups.
- Onboard proximity switch port, supports NPN and PNP types, 24V, 12V, 5V voltage selectable;
- Reserved SPI interface for connecting an accelerometer for Klipper resonance compensation.
- External DC12V powers the MOSFET control power for TMC2160, reducing driver output impedance and chip heat generation.

## **Specifications**

| MCU                                       | ARM Cortex-M7 STM32H723ZGT6 550MHz                           |
| ----------------------------------------- | ------------------------------------------------------------ |
| Driver Input Voltage                      | HV (24-60V)                                                  |
| Motherboard Input Voltage                 | DCIN = DC12V or DC24V                                        |
| Heated Bed Input Voltage                  | BED IN = DC12V or DC24V                                      |
| Logic Voltage                             | DC3.3V                                                       |
| Heating Interface                         | Heating Interface: Heated Bed (HB), Heater Cartridge (HE0, HE1, HE2, HE3) |
| Max Heated Bed Output Current             | 10A, peak 11A                                                |
| Max Heater Cartridge Output Current       | 6A, peak 6.5A                                                |
| Fan Interfaces                            | 6x 2-pin PWM Fans (FAN0, FAN1, FAN2, FAN3, FAN4, FAN5), 2x 4-pin PWM Fans (FAN6, FAN7), 5x Always-On Fan, PWM Fans Voltage (5V, 12V, 24V) Selectable |
| Max Fan Output Current                    | 1A, peak 1.5A                                                |
| Total Current for Heater Cartridge + Fans | Less than 14A                                                |
| Motherboard Max 5V Output Current         | 5A (peak 6A)                                                 |
| Motherboard Max 12V Output Current        | 5A (peak 6A)                                                 |
| Expansion Interfaces                      | Probe (Servos, Probe), Servo, Filament Sensor, PS-ON, I²C, RGBx2, SPI, SBC (UART), EXP1+EXP2, CANx2, PT100/PT1000x2, USB-A 5V Power, Endstop Portx8, etc. |
| Motor Drivers                             | Onboard TMC2160, support 24-60V,<br>V1.0：Max 8A driving current for S1-S4(Rsense=22mR),<br>V1.1：Max 4.7A driving current for S1-S4(Rsense=50mR),<br>Max 3A for S5-S8(Rsense=75mR) |
| Driver Modes                              | SPI                                                          |
| Motor Interfaces                          | S1, S2, S3, S4, S5, S6, S7, S8                               |
| Temp Sensor Interfaces                    | 5x 100K NTC, 2x MAX31865                                     |
| Display                                   | LCD                                                          |
| PC Communication                          | Type-C                                                       |
| Supported Kinematics                      | Cartesian, Delta, Kossel, Ultimaker, CoreXY                  |
| Recommended Slicer/Console                | Cura, Simplify3D, Pronterface, Repetier-host, Makerware      |
| Dimensions                                | 200 x 113mm                                                  |
| Mounting Dimensions                       | for details please refer to BIGTREETECH Kraken V1.0-SIZE.png |

## **Firmware Support**

Compatible with Klipper, Marlin, RRF(RepRapFirmware)

## **Dimensions**

<img src=img/Kraken/kraken_dimension.png width="600" />

## Peripheral Interface

### Interface Diagram

<img src=img/Kraken/kraken_interface.png width="600" />

### Pin Description

<img src=img/Kraken/kraken_pin.png width="600" />

## **Interface Introduction**

### USB Power Supply

When Kraken is powered on, the power indicator light turns red, indicating normal power supply. VUSB is the power select pin which needs to be shorted with a jumper only when supplying power to the board via USB.

<img src=img/Kraken/kraken_usb.png width="600" />

### Stepper Motor Drivers

#### Onboard TMC2160 in SPI mode

No jumper is needed to select the mode; directly use the SPI mode. When using Sensorless Homing, plug in the jumper; if not, leave it unplugged. DIAG connection as follows:

<img src=img/Kraken/kraken_stepper.png width="600" />

#### PWM Fan Voltage Selection

Set the output voltage to 5V, 12V, or 24V via a jumper. The fan interface output current is 1A.

**<font  color="red">Be sure to confirm the supported voltage of the fan before selection to avoid damage for which our company is not responsible.</font>**

<img src=img/Kraken/kraken_pwm.png width="600" />

### MicroProbe V2.0 Wiring

<img src=img/Kraken/kraken_microprobe.png width="600" />

### Auto Power Off (Relay V1.2) Wiring

<img src=img/Kraken/kraken_power_off.png width="600" />

### EXP1+EXP2 and MINI12864 V2.0 Display Wiring

<img src=img/Kraken/kraken_display.png width="600" />

### RGB Wiring

<img src=img/Kraken/kraken_rgb.png width="600" />

### Servo Wiring

<img src=img/Kraken/kraken_servo.png width="600" />

### I2C Wiring (Temperature and Humidity Sensor)

<img src=img/Kraken/kraken_i2c.png width="600" />

### 2-pin Fan Connection

<img src=img/Kraken/kraken_2pin.png width="600" />

### Proximity Switch Connection

Normally open (NPN type), no jumper is required, as shown in the 24V example.

<img src=img/Kraken/kraken_proximity.png width="600" />

Normally closed (PNP type), a jumper is needed, as shown in the 24V example.

<img src=img/Kraken/kraken_proximity1.png width="600" />

### 4-pin PWM Fan and Water Cooling Connection (12V example)

<img src=img/Kraken/kraken_4pin.png width="600" />

### Raspberry Pi Connection

<img src=img/Kraken/kraken_pi.png width="600" />

## **Marlin**

### Install Compiling Environment 

[https://github.com/bigtreetech/Document/blob/master/How%20to%20install%20VScode%2BPlatformio.md](https://github.com/bigtreetech/Document/blob/master/How to install VScode%2BPlatformio.md)

https://marlinfw.org/docs/basics/install_platformio_vscode.html

### Download Marlin Firmware

Get pre-configured firmware source code from our GitHub:

https://github.com/bigtreetech/BIGTREETECH-Kraken

### Configure Firmware

#### Open Marlin Project

You can open Marlin in VS Code in one of several ways:

- l Drag the downloaded Marlin Firmware folder onto the VScode application icon;
- l Use the **Open...** command in the VSCode **File** menu;
- l Open the PIO Home tab and click the **Open Project** button.

#### Compiling Environment

Open **platformio.ini** file and change **default_envs** to **STM32H723ZG_btt**.

<img src=img/Kraken/kraken_marlin1.png width="600" />

**Configure Motherboard and Serial Port**

Set **MOTHERBOARD** as **BOARD_BTT_KRAKEN_V1_0**

<font  color="red">#define</font> <font  color="blue">MOTHERBOARD BOARD_BTT_KRAKEN_V1_0</font>

<font  color="red">#define</font> <font  color="blue">SERIAL_PORT</font> <font  color="green">3</font>	 (Enable SBC serial port)

<font  color="red">#define</font> <font  color="blue">BAUDRATE</font>  <font  color="green">115200</font>	(Set baudrate to the same as the communication device)

<font  color="red">#define</font> <font  color="blue">SERIAL_PORT_2</font>  <font  color="green">-1</font>	(Enable USB serial port)

The above settings can be enabled as needed.

<img src=img/Kraken/kraken_marlin2.png width="600" />

**Configure Stepper Driver**

Kraken has 8 TMC2160 drivers onboard

<img src=img/Kraken/kraken_marlin3.png width="600" />

We need to enable <font  color="blue">TMC_USE_SW_SPI2</font> in Configuration_adv.h

<font  color="red">#define</font> <font  color="blue">TMC_USE_SW_SPI</font>

<img src=img/Kraken/kraken_marlin4.png width="600" />

V1.0：The Rsense of S1-S4 is 22mΩ, so the firmware needs to be set to 0.022.

V1.1：The Rsense of S1-S4 is 50mΩ, so the firmware needs to be set to 0.05.

The Rsense of S5-S8 is 75mΩ, so the firmware needs to be set to 0.075.

<img src=img/Kraken/kraken_marlin5.png width="600" />

**Sensorless Homing**

<img src=img/Kraken/kraken_marlin6.png width="600" />

<font  color="red">#define</font> <font  color="blue">SENSORLESS_HOMING</font>	// enable sensorless homing

<font  color="red">#define</font> <font  color="blue">xx_STALL_SENSITIVITY</font>	<font  color="green">8</font>	// sensitivity setting, TMC2209 range from 0 to 255, higher number results in more sensitive trigger threshold, sensitivity too high will cause endpoint to trigger before gantry actually moves to the end, lower number results in less sensitive trigger threshold, too low of sensitivity will cause endpoint to not trigger and gantrying continue. Other drivers range from 63 to -64, lower numbers result in a more sensitive trigger threshold. 

<font  color="red">#define</font> <font  color="blue">IMPROVE_HOMING_RELIABILITY</font>	// can be used to set independent motor current for homing moves(xx_CURRENT_HOME) to improve homing reliability.

**100K NTC**

The standard TH ports only support NTC 100K thermistor,  In Marlin firmware, "1" represents a 100K NTC with a 4.7K pull-up resistor.

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_0</font>	<font  color="green">1</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_1</font>	<font  color="green">1</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_BED</font>	<font  color="green">1</font>

<img src=img/Kraken/kraken_marlin7.png width="600" />

**Max31865**

To understand how to wire your sensor, look at the pin diagram and use the dip switch settings that correspond to your connection scheme. Apply the following firmware settings based on your connection scheme and dip switch settings.

In Marlin (klipper) firmware, "-5" represents max31865, the sensor resistance (rtd_nominal_r) and calibration (rtd_reference_r) resistance of PT100 are 100 and 430, while PT1000 are 1000 and 4300.

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_0</font>	<font  color="green">-5</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_1</font>	<font  color="green">-5</font>

<img src=img/Kraken/kraken_marlin8.png width="600" />

**BLTouch**

<img src=img/Kraken/kraken_marlin9.png width="600" />

<font  color="green">//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN</font>	// Do not remap the Z_PROBE_PIN to the Z_MIN port.

<img src=img/Kraken/kraken_marlin10.png width="600" />

<font  color="red">#define</font> <font  color="blue">BLTOUCH</font>	// Enable BLTouch

<img src=img/Kraken/kraken_marlin11.png width="600" />

<font  color="red">#define</font> <font  color="blue">NOZZLE_TO_PROBE_OFFSET</font>	<font  color="green">{ -40, -10, -2.85 }</font>	// set BLTouch probe offset

<font  color="red">#define</font> <font  color="blue">PROBING_MARGIN</font>	<font  color="green">10</font>	// set distance between probe area and print area perimeter

<img src=img/Kraken/kraken_marlin12.png width="600" />

<font  color="red">#define</font> <font  color="blue">AUTO_BED_LEVELING_BILINEAR</font>	// set probe pattern

<font  color="red">#define</font> <font  color="blue">RESTORE_LEVELING_AFTER_G28</font>	//apply leveling after G28 homing command

<img src=img/Kraken/kraken_marlin13.png width="600" />

<font  color="red">#define</font> <font  color="blue">GRID_MAX_POINTS_X</font>	<font  color="green">5</font>	// set number of probe points for X axis, usually 5 point is sufficient

<font  color="red">#define</font> <font  color="blue">GRID_MAX_POINTS_Y GRID_MAX_POINTS_X</font>	// set the number of probe points for Y axis to the same as X axis.

If BLTouch also functions as your Z homing sensor, no wiring change is needed, just set it in the firmware.

<img src=img/Kraken/kraken_marlin14.png width="600" />

<font  color="red">#define</font> <font  color="blue">USE_PROBE_FOR_Z_HOMING</font>	// use Z Probe(BLTouch) for Z homing

<img src=img/Kraken/kraken_marlin15.png width="600" />

<font  color="red">#define</font> <font  color="blue">Z_SAFE_HOMING</font>	// home Z at the center of print bed to prevent probing outside of the print bed.

**Auto Power Off (Relay V1.2)**

<img src=img/Kraken/kraken_marlin16.png width="600" />

<font  color="red">#define</font> <font  color="blue">PSU_CONTROL</font>	// enable PSU control to turn on and off using M80 and M81

<font  color="red">#define</font> <font  color="blue">PSU_ACTIVE_STATE HIGH</font>	// set turn on level, Relay V1.2 is turned on with high level and turned off with low level, so this setting needs to be HIGH.

**RGB**

<img src=img/Kraken/kraken_marlin17.png width="600" />

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_LED</font>	// enable Neopixel

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_TYPE  NEO_GRB</font>	// set Neopixel type

<font  color="green">//#define NEOPIXEL_PIN  4</font>	// disable PIN setting, use the correct signal pin in the pin file of the motherboard

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_PIXELS</font>	<font  color="green">30</font>	// number of LEDs

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_STARTUP_TEST</font>	// the light will show red green and blue sequentially to self-test

If you are using displays like LCD2004, 12864, mini12864, etc., you can also control RGB from your display directly.

<img src=img/Kraken/kraken_marlin18.png width="600" />

<font  color="red">#define</font> <font  color="blue">LED_CONTROL_MENU</font>	// add LED control to your menu.

**Filament Sensor**

Standard filament run out sensors are usually comprised of a microswitch which signals the mainboard of filament status with High or Low level signal. 

<img src=img/Kraken/kraken_marlin19.png width="600" />

<font  color="red">#define</font> <font  color="blue">FILAMENT_RUNOUT_SENSOR</font>	// enable filament run out sensor

<font  color="red">#define</font> <font  color="blue">FIL_RUNOUT_ENABLED_DEFAULT true</font>	// true default to filament run out sensor enabled

<font  color="red">#define</font> <font  color="blue">NUM_RUNOUT_SENSORS</font>	<font  color="green">1</font>	// number of filament run out sensor

<font  color="red">#define</font> <font  color="blue">FIL_RUNOUT_STATE   LOW</font>	// voltage level of the filament runout sensor trigger signal. Set according to the actual situation of the module. If the module sends a low level when the filament is abnormal, set it to LOW.

**Smart Filament Sensor (SFS V1.0)**

The smart filament sensor works by continuously sending signal to the mainboard to communicate filament status. 

<img src=img/Kraken/kraken_marlin20.png width="600" />

<font  color="red">#define</font> <font  color="blue">FILAMENT_MOTION_SENSOR</font>	// set encoder type

<font  color="red">#define</font> <font  color="blue">FILAMENT_RUNOUT_DISTANCE_MM</font>	<font  color="green">7</font>	// set sensitivity, SFS V1.0 nominal setting should be 7mm, which means if no signal of filament movement is detected after 7mm of filament travel command, filament error will be triggered.

The settings below also need to be set to instruct the printer to park the nozzle after filament error is detected.

<img src=img/Kraken/kraken_marlin21.png width="600" />

<img src=img/Kraken/kraken_marlin22.png width="600" />

<font  color="red">#define</font> <font  color="blue">NOZZLE_PARK_FEATURE</font>	// park nozzle

<font  color="red">#define</font> <font  color="blue">NOZZLE_PARK_POINT { (X_MIN_POS + 10), (Y_MAX_POS - 10), 20 } </font>	// set the X, Y and Z offset coordinate of the nozzle 

<img src=img/Kraken/kraken_marlin23.png width="600" />

<font  color="red">#define</font> <font  color="blue">ADVANCED_PAUSE_FEATURE</font>	// retraction setting of nozzle park movement and filament purge distance after the print is resumed.

### Compile Firmware

1、Click "√" to compile firmware. 

<img src=img/Kraken/kraken_marlin24.png width="600" />

2、Copy the compiled "firmware.bin" to SD card and insert to motherboard to update firmware.

<img src=img/Kraken/kraken_marlin25.png width="600" />

## **Klipper**

### Compiling the Firmware

1、Use the following configuration to compile the firmware (if these options are not available, please update the Klipper firmware source code to the latest version):

* [*] Enable extra low-level configuration options
* Micro-controller Architecture (STMicroelectronics STM32)  --->
* Processor model (STM32H723)  --->
* Bootloader offset (128KiB bootloader (SKR SE BX v2.0))  --->
* Clock Reference (25 MHz crystal)  --->
USB Interface
* Communication interface (USB (on PA11/PA12))  --->
CANBUS Interface
* Communication interface (CAN bus (on PD0/PD1))  --->

<img src=img/Kraken/kraken_klipper1.png width="600" />

2、Press **q** to exit, and **Yes** when asked to save the configuration.

3、Run make to compile firmware, "klipper.bin" file will be generated in home/pi/klipper/out folder when make is finished, download it onto your computer using the SSH application.

<img src=img/Kraken/kraken_klipper2.png width="600" />

4、Rename klipper.bin to "firmware.bin", copy to SD card to update firmware.

5、Enter: 

```
ls /dev/serial/by-id/ 
```

in command line to check motherboard ID to confirm whether firmware is updated successfully, as shown below.

<img src=img/Kraken/kraken_klipper3.png width="600" />

copy and save this ID, it is needed when modifying klipper config.

### Configuring Klipper

1、Enter the Raspberry Pi's IP in a browser to access it. Download the motherboard's reference configuration in the path shown in the image below. If you cannot find this file, update the Klipper firmware source code to the latest version or download from GitHub:

https://github.com/bigtreetech/BIGTREETECH-Kraken

<img src=img/Kraken/kraken_klipper4.png width="600" />

2、Upload the motherboard's configuration file to **Configuration Files** and include this configuration file in the **printer.cfg** file.

<img src=img/Kraken/kraken_klipper5.png width="600" />

[include generic-bigtreetech-kraken.cfg]

<img src=img/Kraken/kraken_klipper6.png width="600" />

3、Insert the correct motherboard ID.

<img src=img/Kraken/kraken_klipper7.png width="600" />

4、 Refer to https://www.klipper3d.org/Overview.html for detailed configuration guide according to your machine type.

### Firmware Updates

#### Updating via microSD

1. Ensure the microSD card is formatted as FAT32.
2. Rename the compiled firmware or the firmware downloaded from GitHub to "firmware.bin" (note: make sure the computer system's extension settings are clear, as some users hide the extension, and "firmware.bin" actually displays as "firmware").
3. Copy "firmware.bin" to the root directory of the microSD card.
4. Insert the microSD card into the motherboard's slot, power on the motherboard, and the bootloader will automatically update the firmware.
5. The status LED will blink during update.
6. When it stops and the file is renamed "FIRMWARE.CUR", the update is complete.

#### Updating Klipper via DFU

1、Run ls /dev/serial/by-id/ to get the board ID. If Klipper is running, it will return a klipper ID.

<img src=img/Kraken/kraken_klipper8.png width="600" />

2、If ls /dev/serial/by-id/ is able to find the MCU's klipper device ID, you can directly input: 

```
cd ~klipper
```

```
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32h723xx_41003D001751303232383230-if00
```

to write firmware (Note: Replace/dev/serial/by-id/xxx with the actual ID queried in the previous step)

<img src=img/Kraken/kraken_klipper9.png width="600" />

After writing completes, there may be an error message dfu-util: Error during download get_status, just ignore it.

## **Precautions**

1、Forbidden to switch driver voltage when stepper motors are in motion;

2、When switching stepper motor driver voltage, ensure no control signals are being output from the MCU to the driver chips;

3、When driver current exceeds 7A, it is recommended to add a cooling fan for the driver for heat dissipation.
