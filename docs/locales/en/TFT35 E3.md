# TFT35 E3

<img src=img/TFT35_E3/TFT35_E3_Title.png width="600" />

## **Introduction**

BIGTREETECH TFT35-E3 V3.0 is a medium size, dual-mode,ultra-clear 3D printing machine display launched by the 3D printing team of Shenzhen BIGTREE Technology CO., LTD., which can perfectly replace the original LCD screen of Ender3 printer.

## **Main Features**

- ARM Cortex-M3 series STM32F207VCT6 chip with 32-bit CPU 120MHz;
- Upgrade the firmware by SD card. It is easy and convenient to operate.
- his display board has higher compatibility. Users can select two work modes: UART serial port screen mode and 12864 screen mode.
- Serial port screen mode supports two printing modes: SD card and U disk.
- Reserve WIFI port, and WIFI function is realized by external WIFI module；
- Reserve the extension port of filament breaking detection (FIL-DET)；
- Reserve the extension port of automatic shutdown after printing (PS-ON);；
- LCD12864 mode uses EXP1, EXP2 and EXP3. EXP1 and EXP2 are LCD screen ports of normal motherboard. EXP3 is the LCD interface used by E3 series motherboard (such as SKR MINI E3 V1.2, SKR E3 DIP V1.1, etc.) ；
- TFT touch screen mode：serial port screen RS232 port；
- 2 sets of UART serial port extension ports are reserved for DIY use.

## **Basic Parameters**

- Appearance size：93*87mm
- Installation size：Perfectly replace the original LCD screen of Ender3 printer，detail information please check TFT35-E3 V3.0 SIZE
- Microprocessor：STM32F207VCT6
- Power Input：DC 5V
- SD card logic voltage：3.3V and 5V（Such as: support MEGA2560 main control chip motherboard, higher compatibility)

<font  color="red">***NOTE: After the board is powered on：***</font>

<font  color="red">**Red light D6 is the power indicator: the red light is on, indicating normal
power supply;**</font>

<font  color="red">***Green light D3 is SD card detection indicator: D3 is always on when the SD card inserted, and then off when SD card pulled out.***</font>

## **Dimensions**

<img src=img/TFT35_E3/TFT35_E3_Diagram.png width="600" />

## **Interface Diagram**

<img src=img/TFT35_E3/TFT35_E3_Interface.png width="600" />

<font  color="red">***Notes：***</font>

<font  color="red">***1.When using 12864 screen mode, connect the port EXP1 and EXP2 to the motherboard. There is no touch function in this mode.***</font>

<font  color="red">***2.When using serial port screen mode, connect with TFT or AUX-1 on the motherboard via RS232. This mode has touch function；***</font>

<font  color="red">***3.Two work modes can be changed by one key. Press the encoder about 3 seconds until the mode selection page appears, then press the encoder after selecting the mode.***</font>

## **Software Configuration**

<font  color="red">***Factory board will be equipped with test firmware, it can be used directly.It can also be upgraded according to our company's open source website.***</font>

1. Ways to obtain the firmware of motherboard

   &nbsp;Get it from customer service or technical staff；

   &nbsp;Log in the open source website of our company to download ：https://github.com/bigtreetech

2. Firmware update

   &nbsp;Firmware file name：

   &nbsp;<font  color="red">***BIGTREE_TFT35_V3.0. (version number).bin***</font>

   &nbsp;First copy the above firmware to SD root directory, and then insert the card into the SD card slot of the board. Next please re-power the board or press the reset key, and wait for about 10 seconds before the update is completed.；

3. For DIY board firmware, please refer to the file TFT35-E3 V3.0PIN.

## **PRECAUTIONS**

- The name of the firmware file in the SD card cannot be changed. (including capital and small letters).
- The wiring process must be carried out under the premise of power failure. The power can be put on after checking the correct connection of the circuit and the correct insertion of the drive. This prevents boards and screens from burning up due to faulty wiring, causing unnecessary damage.
- Pay attention to the wiring sequence and do not insert the wire inversely. Please refer to PIN file for detailed line order.



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/btt-tft35-e3-v3-0-display-touch-screen-two-working-modes

​			

**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website:                         				http://biqu3d.com

BIGTREETECH Official Website:           			   http://bigtree-tech.com

Online Store:                                      				    https://biqu.equipment

Community:                                      				     https://community.biqu3d.com
