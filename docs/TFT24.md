# TFT24

<img src=img/TFT24/TFT24_Title.png width="600" />

## **Introduction**

BIGTREETECH TFT24-V1.1 is a small volume ultra-clear 3D printer display board. It can work in two modes. The board is launched by the 3D printing team of Shenzhen BIGTREETechnology co., LTD. This board can replace LCD12864 for use.

## **Main Features**

- ARM Cortex-M3 series STM32F105RCT6 chip with 32-bit CPU 72MHz;
- Upgrade the firmware by SD card. It is easy and convenient to operate.
- his display board has higher compatibility. Users can select two work modes, they are UART serial port screen mode and 12864 screen mode.
- Serial port screen mode supports two printing modes: SD card and U disk.

## **Basic Parameters**

- Appearance size: 105*46mm
- Installation size: detail information in TFT24-V1.1-SI
- Microprocessor：STM32F105RCT6
- Power Input：DC5V

<font  color="red">***NOTE: After the board is powered on, the red power indicator light D3 will light up, indicating that the power supply is normal. The red light D1 is SD 
card detection indicator. D1 often shines on when SD card is inserted, and the light goes out when the SD card is pulled out.***</font>

## **Dimensions**

<img src=img/TFT24/TFT24_Diagram.png width="600" />

## **Interface Diagram**

<img src=img/TFT24/TFT24_Interface.png width="600" />

- When using 12864 screen mode, connect the port EXP1 and EXP2 to the motherboard. There is no touch function in this mode.
- When using serial port screen mode, connect with TFT or aux-2 on the motherboard via RS232. In this mode, there is touch function.
- The two modes correspond to two different firmwares, please connect wires according to the mode type of the flashed firmware.

## **Software Configuration**

<font  color="red">***Factory board will be equipped with test firmware, it can be used directly. User can also change the firmware according to their own need.***</font>

1. Ways to obtain the firmware of motherboard

   ​	&nbsp;&nbsp;Get it from customer service or technical staff

   ​	&nbsp;&nbsp;Log in the open source website of our company to download: 

   ​	&nbsp;&nbsp;https://github.com/bigtreetech

2. Firmware update

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Firmware file name：

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">**BIGTREE_TFT24_12864_(version code).bin**</font>

   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font  color="red">**BIGTREE_TFT24_Serial_(version code).bin**</font>

   <p>First copy the above firmware to SD root directory, and then insert the card into the SD card slot of the board. Next please re-power the board or press the reset key, and wait for about 10 seconds before the update is completed. </p>

3. For DIY board firmware, please refer to the file TFT24-V1.1-PIN.


## **PRECAUTIONS**

- The name of the firmware file in the SD card cannot be changed. (including capital and small letters)
- Wiring process must be under the precondition of power outages.Users must check the correct connection of the circuit and the correct insertion of the drive before turning on electricity.Pay attention to the wiring sequence and do not insert the wire inversely. Please refer to PIN file for detailed line order.



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/tft24v1-1-gd-version



**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
