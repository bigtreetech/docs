# EBB 42 CAN

<figure class="half">
  <img src=img/EBB42CAN/072/EBB42_072_Title.png width="550"/>  
  <img src=img/EBB42CAN/G0B1/EBB42_G0B1_Title.png width="550"/>  
</figure> 

## **Product Overview**

The BIGTREETECH EBB42 CAN V1.0/V1.1 is a nozzle adapter board designed for 42-series extruder stepper motors, developed by Shenzhen BIQU Innovation Technology Co., Ltd. It supports communication via USB or CAN BUS, significantly reducing wiring complexity.

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device)

## **Key Features**

- Firmware Update Support: BOOT and RESET buttons enable firmware updates via DFU mode over USB.
- Thermistor Protection: Integrated protection circuit prevents main chip damage from heating rod leakage current.
-Flexible Thermistor Configuration: Jumper-selectable pull-up resistors support PT1000 (2.2K pull-up) and other DIY thermistor setups.
- USB Power Isolation: Jumper-configurable USB power supply to isolate main board DC-DC from USB 5V.
I2C Expansion: Reserved I2C interface for filament break/clog detection and custom functions.
- Reverse Voltage Protection: Anti-flyback diodes on heating rod and fan ports safeguard MOS tubes.
- Power Protection: Anti-reverse connection on power input prevents damage from incorrect wiring.
- PT100/PT1000 Support: Onboard MAX31865 with selectable 2-wire or 4-wire configurations.
- Dual Communication: Supports communication via CAN or USB. The terminal resistor 120R of CAN can be selected through the jumper cap, and it reserves CAN expansion interfaces.
- Equipped ESD protection chip on the USB port prevents the main control board from being broken down by the static electricity of the USB port.
- DIY-Friendly: Includes terminals, female reeds, studs, and screws for easy installation.

## **Basic Parameters**

| External Dimensions                     | 40mm x 40mm. For further details please read: Dimensions     |
| --------------------------------------- | ------------------------------------------------------------ |
| Mounting Holes                 | 31mm × 31mm spacing, M3 screws × 4                 |
| Microprocessor                          | ARM Cortex-M0 STM32F072C8T6 48MHz                            |
| Input Voltage                           | DC12V-DC24V 9A                                               |
| Logic Voltage                           | DC 3.3V                                                      |
| Heating Interface                       | Heating Rod (E0), maximum output current: 5A                 |
| Onboard Sensor                          | ADXL345                                                      |
| Fan Interfaces                          | 2x CNC Fans (FAN0, FAN1)                                    |
| Maximum Output Current of Fan Interface | 1A, peak value 1.5A                                          |
| Expansion Interfaces                    | EndStop, I2C, Probe, RGB, PT100/PT1000, USB Interface, CAN Interface |
| Motor Drive                              | Onboard TMC2209                                              |
| Driver Working Mode                     | UART                                                         |
| Stepper Motor Interface                 | EM                                                           |
| Temperature Sensor Interface(Optional)  | 1 channel 100K NTC or PT1000 (TH0),1 channel PT100/PT1000    |
| USB Communication Interface             | USB-Type-C                                                   |
| DCDC 5V Maximum Output Current          | 1A                                                           |

!!! note
    Compatibility: The EBB42 CAN V1.0/V1.1 currently supports Klipper firmware only.

## **Dimensions**

=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_Diagram.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_Diagram.png width="450"/>  

## **Pinout**


=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_Pin.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_Pin.png width="450"/>

## **Hardware Configuration**

### **USB Power Supply**

=== "EBB 42 V1.1 / V1.2"
    After the motherboard is powered on, the yellow-green LED1 lights will light up, indicating a normal power supply. The VUSB in the middle of the board is the power selection part.  VUSB jumper must be connected only when using USB for power.

    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_USBP.png width="450"/>

=== "EBB 42 V1.0"
    D1 RGB light will be on when the control board is powers on, which shows supplying normal power. VUSB in the middle of the board is the selection terminal for power. Only when USB supplies power to the board, or the board supplies power through USB, should users need to short circuit the VUSB by jump cap.

    <img src=img/EBB42CAN/072/EBB42_072_USBP.png width="450"/>

## **Hardware Installation**

### **100K NTC or PT1000 Settings**

Version without 31865: No need to plug a jumper cap when using a 100K NTC thermistor, and `TH0` pull-up resistor value is `4.7K`. When using `PT1000`, you need to use the jumper cap to short the two pins, as shown below picture. At this time, `TH0` pull-up resistor value is `2.2K`.

!!! info
    For higher accuracy, use the `MAX31865` (see below).


=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_PT100.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_PT100.png width="450"/>

!!! info 
    Version with 31865: Select PT100/PT1000 by DIP switch, 2 wire or 4 wire:

    | 1   | 2   | 3   | 4   | Sensor Model  |
    | --- | --- | --- | --- | ------------- |
    | ON  | ON  | ON  | OFF | 2 wire PT100  |
    | ON  | ON  | OFF | ON  | 2 wire PT1000 |
    | OFF | OFF | ON  | OFF | 4 wire PT100  |
    | OFF | OFF | OFF | ON  | 4 wire PT1000 |

=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_TwoW.png width="450"/>

    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_FourW.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_TwoW.png width="450"/>

    <img src=img/EBB42CAN/072/EBB42_072_FourW.png width="450"/>

### **BL-Touch**

=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_BLTouch.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_BLTouch.png width="450"/>

### **Filament Broke Detection**

=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_Broke.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_Broke.png width="450"/>

###  **RGB**

=== "EBB 42 V1.1 / V1.2"
    <img src=img/EBB42CAN/G0B1/EBB42_G0B1_RGB.png width="450"/>

=== "EBB 42 V1.0"
    <img src=img/EBB42CAN/072/EBB42_072_RGB.png width="450"/>

## **Software Configuration**

For details, please click: 

https://bigtreetech.github.io/docs/EBB%20Series.html



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39760665247842



**Need help? Submit a support ticket:*

https://biqu3d.com/pages/submit-a-ticket



**Connect With Us**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
