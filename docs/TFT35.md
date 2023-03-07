# TFT35

<img src=img/TFT35_V3.0/TFT35_V3.0_Title.png width="600" />

## **Introduction**

TFT35 V3.0 is a medium size, dual-mode, ultra-clear 3D printer display. It is an excellent replacement for the standard 12864 LCD displays.

## **Main Features**

- ARM Cortex-M3 series STM32F207VCT6 chip with 32-bit CPU 120 MHz.
- Users can select two work modes, they are UART serial port screen mode and 12864 screen mode.
- Upgrade the firmware by SD card. It is easy and convenient to operate.
- Serial port screen mode supports two printing modes: SD card and USB stick.
- Dedicated WIFI port. WIFI function is realized by external WIFI module.
- Dedicated filament breaking detection port, FIL-DET pin.
- Dedicated port for automatic shutdown after printing module, PS-ON pin.
- LCD12864 mode uses EXP1, EXP2 and EXP3. EXP1 and EXP2 are LCD screen ports of normal motherboard, EXP3 is the LCD screen port used by SKR MINI E3 and SKR E3 DIP.
- TFT touch screen mode uses serial port screen RS232 port.
- Two sets of UART serial port extension ports are reserved for DIY use.

## **Basic Parameters**

- Size: 110x58mm
- Input voltage: 5V DC
- Installation size:103.76 * 49.43 mm
- SD card logic voltage: 3.3V or 5V, supports MEGA2560 motherboard, with higher compatibility

<font  color="red">***Notes：***</font>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">***Red light D2 is the power indicator; it is on when the board is powered.***</font>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">***Red light D1 is SD card detection indicator; it is on when a SD card isinserted.***</font>

## **Dimensions**

<img src=img/TFT35_V3.0/TFT35_V3.0_Diagram.png width="600" />

## **Interface Diagram**

<img src=img/TFT35_V3.0/TFT35_V3.0_Interface.png width="600" />

<font  color="red">***Notes：***</font>

<font  color="red">***1.When using 12864 screen mode, connect the port EXP1 and EXP2 to the motherboard. There is no touch function in this mode. (If you want to use the SKR MINI E3 or SKR E3 DIP, just connect EXP3 to the motherboard.)***</font>

<font  color="red">***2.When using serial port screen mode, connect with TFT or aux-2 on the motherboard via RS232. This mode has touch function.***</font>

<font  color="red">***3.Two work modes can be changed by one key. Press the rotary encoder for about 3 seconds until the mode selection page appears, then press the encoder after selecting the mode.***</font>

## **Software Configuration**

<font  color="red">***The screen will be shipped with a test firmware, it can be used directly. The firmware is customizable according to your needs.***</font>

1. You can find the needed firmware files on our Github page: http://github.com/bigtreetech

2. Firmware update method:

   &nbsp;Firmware file name：BIGTREE_TFT35_V3.0.(version number).bin

   &nbsp;Fonts & icons folder name: TFT35

   &nbsp;First copy the above firmware and TFT35 folder to SD root directory, and then insert the card into the SD card slot of the board. Next, boot the board or press the reset key, then wait for firmware, fonts and icons update is completed.

3. For customizable firmware, please refer to the file TFT35-V3.0-PIN.


## **PRECAUTIONS**

- The firmware file name in the SD card cannot be changed, including capitalization.
- Ensure that all wires and connectors are correctly plugged in beforepower-on.
