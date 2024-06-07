# SKR 3 EZ

<img src=img/SKR3_EZ/SKR3_EZ_Title.png width="600" />

## **Product Profile**

BIGTREETECH SKR 3 EZ V1.0 motherboard is a 32-bit 3D printer motherboard updated by the team of Shenzhen BIQU Innovation Technology Co., Ltd. for our EZ series drivers on the basis of SKR 3. It is compatible with both the EZ series driver and the series of TMC drivers.

**Product Link:** https://biqu.equipment/products/bigtreetech-btt-skr-3-ez-control-board-mainboard-for-3d-printer

<video width="430" height="300" controls>
    <source src="img/SKR3_EZ/introduction.mp4" type="video/mp4">
</video>



## **Features Highlights**

- Using 32-bit ARM Cortex-M7 series STM32H743VI main control chip with a main frequency of 480MHz, the performance has greatly improved.
- The power chip adopts TPS5450-5A, which supports DC12/24V power input. The output current of the chip is up to 5A, and the peak value can reach 6A, which perfectly supports the power supply of Raspberry Pi.
- The motherboard reserves the BOOT button, users can update the motherboard boot program through DFU.
- Increase the protection circuit of the thermistor part to avoid the burning of the main control chip due to leakage of the heated bed or heater cartridge.
- The numerical control fan realizes 24V, 12V, 5V voltage selection through the external power supply module, eliminating the need for the operation of the customer's external transformer module, thereby reducing the probability of damage to the motherboard.
- The thermistor can select the pull-up resistance value through the jumper, and support PT1000 in this way without the need for external modules, which is convenient for customers to use DIY.
- Support all versions of our company's serial screen, SPI screen and LCD screen.
- Upgrade the configuration firmware through an SD card, the operation is simple, convenient and efficient.
- On-board DIAG function pins can be used by simply plugging and unplugging the jumper cap.
- Supports functions such as resume printing, Filament Runout Detection, Completed Shutdown, BLTouch, RGB Lights, etc.
- High-performance MOSFETs are used to reduce heat generation.
- Adopt a replaceable fuse for easy replacement.
- WIFI module (ESP-12S, ESP-07, ESP32) general interface.
- The on-board non-self-elastic Micro SD card slot, and is SDIO working mode, which greatly speeds up the transfer rate.
- Onboard EEPROM, which is convenient for users to save parameter information.
- Two types of CAN interfaces are reserved, USB port and XH2.54 6Pin terminal interface. The USB port is used to select CAN and USB through the double-pole double-throw switch, which is convenient for customers to use other accessories of the CAN interface.
- The temperature sensor interface adopts a high-precision pull-up resistor.
- Two types of drive sockets are used, which are compatible with our EZ series drive modules and TMC series drive modules.
- Each motor drive module can select the corresponding motor voltage through the jumper cap.
- The motor power supply supports up to 48V, and for the larger voltage when using TMC5160 and EZ5160, an isolation chip is used to protect the mainboard from burning IO.

## **Specifications**

| Product Size                                             | 109.7 x 98mm, for details, please refer to **BIGTREETECH SKR 3 EZ V1.0-SIZE.pdf** |
| :------------------------------------------------------- | :----------------------------------------------------------: |
| **Installation Size**                                    |                        **102 x 76mm**                        |
| **Microprocessor**                                       |                **ARM Cortex-M7 STM32H743VI**                 |
| **EEPROM**                                               |                       **24C32 32Kbit**                       |
| **Input Voltage**                                        |                       **DC12V-DC24V**                        |
| **Motor Voltage**                                        |                       **DC12V-DC48V**                        |
| **Logic Voltage**                                        |                         **DC 3.3V**                          |
| **Heating Interface**                                    |        **Heated bed (HB), Heater cartridge (E0, E1)**        |
| **Maximum Output Current of Heater cartridge Port**      |                  **5.5A, Peak Current 6A**                   |
| **Fan Interface**                                        | **Three CNC fans, three normally open fans, the voltage of the CNC fans is optional.** |
| **Maximum Output Current of Fan Interface**              |                  **1A, Peak Current 1.5A**                   |
| **The Total Current of Heater cartridge + Driver + Fan** |                      **less than 10A**                       |
| **WIFI Interface**                                       |                 **ESP-12S, ESP-07S, ESP32**                  |
| **Expansion Interface**                                  | **BLTouch (Servos, Probe), PS-ON, PWR-DET, Fil-DET, RGB, CAN FD** |
| **Motor Drive**                                          | **Support EZ5160, EZ2209, EZ2208, EZ2225, EZ2226, EZ2130, EZ6609, TMC5160, TMC2209, TMC2225, TMC2226, TMC2208, TMC2130, etc.** |
| **Driver Working Mode Support**                          |                   **SPI, UART, STEP/DIR**                    |
| **Motor Drive Interface**                                |       **X, Y, Z (dual Z-axis), E0, E1 Five Channels**        |
| **Temperature Sensor Interface**                         |        **1 100K NTC, 2 100K NTC and PT1000 optional**        |
| **Display**                                              |        **Serial Touch Screen, SPI Touch Screen, LCD**        |
| **PC Communication Interface**                           |          **Square USB A, easy to plug and unplug**           |
| **Supported File Format**                                |                          **G-code**                          |
| **Support Machine Structure**                            |       **Cartesian, Delta, Kossel, Ultimaker, CoreXY**        |
| **Recommended software**                                 | **Cura, Simplify3D, Pronterface, Repetier-host, Makerware.** |

## **Firmware Support**

Supported Firmware: Marlin, Klipper, RRF.

## **Dimensions**

<img src=img/SKR3_EZ/SKR3_EZ_Dimension.png width="600" />

## **Peripheral Interface**

### Interface Diagram

<img src=img/SKR3_EZ/SKR3_EZ_Interface.png width="600" />

### Pin Description

<img src=img/SKR3_EZ/SKR3_EZ_Pin.png width="600" />

## **Interface Introduction**

### USB Power Supply

After the SKR 3 EZ V1.0 motherboard is powered on, the red light of D7 (Power) in the upper right corner of the MCU will light up, indicating that the power supply is normal. The VUSB in the middle of the board is the power selection terminal. 

Only when using USB to supply power to the motherboard or need to supply power through USB, you need to use the jumper to make the VUSB short circuit.

<img src=img/SKR3_EZ/SKR3_EZ_USB.png width="600" />

### Motor Voltage Selection

#### Motherboard Power Voltage for Motor Voltage Selection

<img src=img/SKR3_EZ/SKR3_EZ_Motor1.png width="600" />

#### Motor Supply Voltage for Motor Voltage Selection

<img src=img/SKR3_EZ/SKR3_EZ_Motor2.png width="600" />

### Step Motor Drivers

#### TMC-driven Mode

The number of subdivisions needs to be set high or low by firmware to the corresponding subdivision configuration pins.

#### TMC/EZ-driven UART/SPI Mode

TMC series drivers do not support the use of both UART and SPI drivers at the same time, for example: X, Y-axis use TMC/EZ2209 (UART), Z, E0 axis use TMC/EZ5160 (SPI).

The EZ series drivers support the simultaneous use of both UART and SPI drivers.

#### TMC-driven DIAG mode(Sensorless Homing)

As shown in the pictures, plug the jumper cap when using the Sensorless Homing function, and leave it unplugged when not in use. There is no need to cut the DIAG pin of the driver.

<img src=img/SKR3_EZ/SKR3_EZ_Motor3.png width="600" />

### USB and CAN Mode

As shown in the figure below, the double-pole double-throw switch is in USB mode when it is in the pop-up state, and in CAN FD mode when it is in the pressed state.

<img src=img/SKR3_EZ/SKR3_EZ_Motor4.png width="600" />

### Voltage selection for NC fans

If DCIN is used as the power supply of the numerical control fan, a jumper cap should be used to short-circuit the two pins within the VIN range. If you want to use 12V or 5V as the NC fan power supply, you need to make a jumper cap shortcircuit two pins within the VOT range, and insert the SKR 3-DC MODE into the 2*4Pin VOT and VIN headers.

<img src=img/SKR3_EZ/SKR3_EZ_Voltage.png width="600" />

Set the VOT output voltage to 5V or 12V by setting the jumper cap on the SKR 3-DC MODE.

<img src=img/SKR3_EZ/SKR3_EZ_Voltage1.png width="600" />

### 100K NTC or PT1000 Setup

When using a 100K NTC thermistor, no need to insert a jumper cap. At this time, the pull-up resistors of TH0 and TH1 are 4.7K. When using PT1000, you need to use jump caps to short-circuit the two pins in the red box in the picture below. At this time, the pull-up resistors of TH0 and TH1 are 2.2K 

<font  color="red">**Note: the temperature accuracy read out in this way will be much worse than that of MAX31865.**</font>

<img src=img/SKR3_EZ/SKR3_EZ_100K.png width="600" />

### BLTouch Connection

<img src=img/SKR3_EZ/SKR3_EZ_BLtouch.png width="600" />

### Completed Shut-down Module(Relay V1.2) Connection

<img src=img/SKR3_EZ/SKR3_EZ_Relay.png width="600" />

### Resume Printing(UPS 24V V1.0) Connection

<img src=img/SKR3_EZ/SKR3_EZ_UPS.png width="600" />

### RGB Connection

<img src=img/SKR3_EZ/SKR3_EZ_RGB.png width="600" />

### Break Detection Connection

<img src=img/SKR3_EZ/SKR3_EZ_Break.png width="600" />

### Touch Screen Connection

<img src=img/SKR3_EZ/SKR3_EZ_Touch.png width="600" />

### Heater cartridge IO

The IO of the SKR 3 heater cartridge is wired to the MOS by the jumper. You can remove the jumper and connect the IO to device directly if you need to use the laser or other device that need PWM. 

<font  color="red">**Note: The IO passes through logic conversion chip, the output high level is 5V, and cannot be used as an input.**</font>

<img src=img/SKR3_EZ/SKR3_EZ_Heater.png width="600" />

## **Marlin**

For details, please click:https://bttwiki.com/SKR%203.html#marlin

## **Klipper**

For details, please click:https://bttwiki.com/SKR%203.html#klipper

## **Firmware Update**

For details, please click:https://bttwiki.com/SKR%203.html#firmware-update

## **Precausions**

For details, please click:https://bttwiki.com/SKR%203.html#precausions

## **FAQ**

For details, please click:https://bttwiki.com/SKR%203.html#faq
