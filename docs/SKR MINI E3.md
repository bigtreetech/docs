# SKR MINI E3

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Title.png width="600" />

## **Introduction**

BTT SKR MINI E3 V3.0 is a motherboard designed for Ender3, which launched by the 3D printing team of Shenzhen Big Tree Technology Co., Ltd. It is the perfect replacement of the original motherboard of Ender3.

## **Main Features**

- Redesigned motherboard ID(Industrial Design) make it good-looking
- Adopts STMicroelectronics G0 series MCU STM32G0B1RET6
- Upgraded heat sink improves heat dissipation
- Thermistor inputs are protected from short circuit to Vin
- Added a third PWM controlled cooling fan output
- Adopt MicroUSB instead of MiniUSB interface
- Added +3.3V power supply for SPI output header

## **Basic Parameters**

<table border="1">
	<tr>
    <td><b>Product size:</b></br>103.75*70.25mm</td><td><b>Mounting size:</b></br>Please refer to BTT SKR MINI E3 V3.0-SIZE.pdf 	for more</td></tr>
	<tr>
    <td><b>Board layer:</b></br>4</td><td><b>MCU:</b></br>ARM Cortex-M0+ STM32G0B1RET6</td></tr>
	<tr>
    <td><b>Power input:</b></br>DC 12/24V</td><td><b>Logic voltage:</b></br> 3.3V</td></tr>
    <tr>
    <td><b>Motor driver:</b></br>UART mode of on-board TMC2209</td><td><b>Interfaces of motor driver:</b></br> XM, YM, ZAM, ZBM, 	 EM</td></tr>
    <tr>
    <td><b>Interface of temperature sensor:</b></br>TH0, THB, 2-way 100K NTC (RTD)</td><td><b>Display screen:</b></br>2.4-inch 		TFT, 3.5-inch TFT, Ender3 original LCD12864 screen, etc.</td></tr>
	<tr>
    <td><b>PC communication interface:</b></br>USB Micro B type, easy to plug,</br> communication baud rate 115200</td><td>			<b>File format:</b>	</br>G-code</td></tr>
	<tr>
    <td colspan="5"><b>Recommended software:</b></br>Cura, Simplify3D, Pronterface, Repetier-host, Makerware</td></tr>
	<tr>
</table>

## **Dimensions**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Dimension.png width="600" />

## **Interface Diagram**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_CAD.png width="600" />

## **Hardware Configuration**

### **Motherboard LED meanings**

When the motherboard is powered on:

- Power LED = Red. Solid on = Normal power supply.
- Status LED = Red. Blinking during a firmware update. Controlled by firmware otherwise.
- D8 green light for the hot bed HB status indicator: always on when heating, off when not heating.
- D6 green light for the heating rod E0 status indicator: always on when heating, off when not heating.
- D10 green light for the CNC fan FAN0 status indicator: on when open, off when closed.
- D7 green light for the CNC fan FAN1 status indicator: on when open, off  when closed.
- D3 green light for the CNC fan FAN2 status indicator: on when open, off when closed.
- D9 green light for the SD card status indicator: light up when inserted into the SD, off when pulled out.

## **Hardware Installation**

### Sensorless homing function

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Sensorless.png width="600" />

As shown, connect the corresponding axes with the jump caps to choose Sensorless homing function.

**<font  color="red">*NOTE: If you choose this function, you cannot use external ENDSTOP!* </font>**

### **5V power supply for BLtouch, TFT, RGB interfaces**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Power.png width="600" />

1、 To use the onboard 5V PSU, short the pins shown in the above image using a jumper

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Power1.png width="600" />

2、To use an external BIGTREETECH DCDC5V V1.0 module, short the pins shown in the above image using a jumper.

### **Connection of cooling fan**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Fan.png width="600" />

Connect the fan by FAN2 to realize the whole machine cooling.

**<font  color="red">*Pleast note that the operating voltage is the same with the input power supply voltage to avoid damage.* </font>**

### **Connection to BIGTREETECH Relay V1.2**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Relay.png width="600" />

### **Connection to BTT UPS 24V V1.0**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_UPS.png width="600" />

### **Connection to Neopixel light**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Neopixel.png width="600" />

### **Connection to BL touch**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_BLtouch.png width="600" />

## **Software Configuration**

### **Communication of Motherboard and PC**

The motherboard can communicate with a PC using the USB interface. 

The same USB interface can be used to communicate with a Raspberry pi or any other host device.

<img src=img/SKR_MINI_E3/SKR_MINI_E3_COM.png width="600" />

### **Firmware of motherboard**

The package contains the fifirmware for testing (Ender3), which can be used directly or changed according to your needs.

**How to get the fifirmware**

- Contact our customer service or technical support; 

- Login to our website to download: https://github.com/bigtreetech


**Motherboard fifirmware update**

- Copy fifirmware.bin fifile to the root directory of SD card

- **<font  color="red">*NOTE: Do not change fifile name!* </font>**
- Insert the SD card into the slot, re-power on or reset, the update will complete after 10S, And you should see the status LED blinking red during the update..


**Please refer to the BTT SKR MINI E3 V3.0-PIN.pdf**

- for motherboard fifirmware DIY.


## **PRECAUTIONS**

- The text form and file name of firmware in the SD card cannot be changed from “firmware.bin”.
- The wiring must be done before powering on.
- The LCD screen only supports the LCD12864 screen with CR10_STOCKDISPLAY interface.
