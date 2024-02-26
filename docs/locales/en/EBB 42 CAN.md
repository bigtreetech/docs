# EBB 42 CAN

<figure class="half">
  <img src=img/EBB42CAN/072/EBB42_072_Title.png width="550"/>  
  <img src=img/EBB42CAN/G0B1/EBB42_G0B1_Title.png width="550"/>  
</figure> 

## **Introduction**

BIGTREETECH EBB42 CAN V1.0/V1.1 is a nozzle adapter board specially designed for the 42 extruder stepper motor, which is launched by the 3D printing team Shenzhen Big Tree Technology Co., Ltd. It can communicate via USB port, or CAN BUS, greatly simplifying wirings.

## **Main Features**

- With BOOT and RESET buttons reserved, users can update the firmware via DFU mode by USB.
- Added protection circuit on the thermistor avoids burning the main control chip caused by leakage current from the heating rod.
- User can select the thermistor's pull-up resistors values through jumper wire, so as to support PT1000 (2.2K pull-up resistors), which makes it convenient for DIY.
- Connect the USB with a jumper cap to get it power on, which effectively isolates the main control board DC-DC from USB 5V.
- Reserved I2C interface allows for filament broke and clogged detection, and supports other DIY functions.
- Added anti-flyback diodes on the heating rod and fans' ports effectively protect the MOS tube from being burned due to reverse voltage.
- Anti-reverse connection protection on the power interface prevents users from burning the motherboard when mistakenly connecting the reverse power line during DIY.
- Onboard MAX31865 supports selecting 2-wire or 4-wire of PT100/ PT1000.
- Supports communication via CAN or USB. The terminal resistor 120R of CAN can be selected through the jumper cap, and it reserves CAN expansion interfaces.
- Equipped ESD protection chip on the USB port prevents the main control board from being broken down by the static electricity of the USB port.
- The adaptor board is equipped with terminals, female reeds, double-way studs and screws, which are required accessories for DIY, greatly meeting the DIY needs of customers.

## **Basic Parameters**

- External Dimensions: 40mm x 40mm. For further details please read: **Dimensions**
- Installation Dimensions: Hole spacing 31mm x 31mm, M3 screw hole x 4
- Microprocessor: ARM Cortex-M0 STM32F072C8T6 48MHz
- Input Voltage: DC12V-DC24V 9A
- Logic Voltage: DC 3.3V
- Heating Interface: Heating Rod (E0), maximum output current: 5A
- Onboard Sensor: ADXL345
- Fan Interfaces: Two CNC Fans (FAN0, FAN1)
- Maximum Output Current of Fan Interface: 1A, peak value 1.5A
- Expansion Interfaces: EndStop, I2C, Probe, RGB, PT100/PT1000, USB Interface, CAN Interface
- Motor Drive: Onboard TMC2209
- Driver Working Mode: UART
- Stepper Motor Interface: EM
- Temperature Sensor Interface(Optional): 1 channel 100K NTC or PT1000 (TH0),1 channel PT100/PT1000
- USB Communication Interface: USB-Type-C
- DCDC 5V Maximum Output Current: 1A

<font  color="red">***Note: BTT EEB42 CAN V1.0/V1.1 only supports Klipper at the present.***</font>

## **Dimensions**

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_Diagram.png width="600"/>  

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_Diagram.png width="600"/>

## **Pinout**

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_Pin.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_Pin.png width="600"/>

## **Hardware Configuration**

### **USB Power Supply**

Version:V1.0

D1 RGB light will be on when the control board is powers on, which shows supplying normal power. VUSB in the middle of the board is the selection terminal for power. Only when USB supplies power to the board, or the board supplies power through USB, users need to short circuit the VUSB by jump cap.

<img src=img/EBB42CAN/072/EBB42_072_USBP.png width="600"/>

Version:V1.1

After the motherboard is powered on, the yellow-green LED1 lights will light up, indicating a normal power supply. The VUSB in the middle of the board is the power selection part. Only when using USB to supply power to the motherboard or need to supply power through USB, do you need to use the jumper cap to connect VUSB.

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_USBP.png width="600"/>

## **Hardware Installation**

### **100K NTC or PT1000 Settings**

1.Version without 31865: No need to insert a jumper cap when using a 100K NTC thermistor, and TH0's pull-up resistor value is 4.7K. When using PT1000, you need to use the jumper cap to short the two pins circled in red as shown below. At this time, TH0's pull-up resistor value is 2.2K (Notice: the temperature accuracy that's read out this way will be less accurate than that of MAX31865).

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_PT100.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_PT100.png width="600"/>

2.Version with 31865: Select PT100/PT1000 by DIP switch, two-line or four-wire.

<table border="1">
	<tr>
    <td>1</td><td>2</td><td>3</td><td>4</td><td>Sensor Model</td></tr>
	<tr>
    <td>0N</td><td>0N</td><td>0N</td><td>OFF</td><td>Two Lines PT100</td></tr>
	<tr>
    <td>0N</td><td>0N</td><td>OFF<td>OFF</td><td>Two Lines PT1000</td></tr>
    <tr>
    <td>OFF</td><td>OFF</td><td>0N</td><td>OFF</td><td>Four Lines PT100</td></tr>
    <tr>
    <td>OFF</td><td>OFF</td><td>OFF</td><td>0N</td><td>Four Lines PT1000</td></tr>
    <tr>
</table>

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_TwoW.png width="600"/>

<img src=img/EBB42CAN/072/EBB42_072_FourW.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_TwoW.png width="600"/>

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_FourW.png width="600"/>

### **BL-Touch**

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_BLTouch.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_BLTouch.png width="600"/>

### **Filament Broke Detection**

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_Broke.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_Broke.png width="600"/>

###  **RGB**

Version:V1.0

<img src=img/EBB42CAN/072/EBB42_072_RGB.png width="600"/>

Version:V1.1

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_RGB.png width="600"/>

## **Software Configuration**

For details, please click: 

https://bigtreetech.github.io/docs/EBB%20Series.html



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39760665247842



**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

Community：                                            				  https://community.biqu3d.com
