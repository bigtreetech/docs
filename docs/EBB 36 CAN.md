# EBB 36 CAN

<img src=img/EBB36CAN/EBB_36_Title.png width="550">  

## Product Profile

BIGTREETECH EBB36 CAN V1.0/V1.1 is pretty much the most legendary printhead board out there. Specially designed for the 36 extruder stepper motor, it will make your life better. It is launched by the 3D printing team Shenzhen BIQU Innovation Technology Co., Ltd.. It can communicate via USB port, or CAN BUS, greatly simplifying wirings.

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39760665149538)

## Features Highlights

- With BOOT and RESET buttons reserved, users can update the firmware via DFU mode by USB.
- Added protection circuit on the thermistor avoids burning the main control chip caused by leakage current from the heating rod.
- User can select the thermistor’s pull-up resistors values through jumper wire, so as to support PT1000 (2.2K pull-up resistors), which makes it convenient for DIY.
- Connect the USB with a jumper cap to get it power on, which effectively isolates the main control board DC-DC from USB 5V.
- Reserved I2C interface allows for filament broke and clogged detection, andsupports other DIY functions.
- Added anti-flyback diodes on the heating rod and fans’ ports effectively protect the MOS tube from being burned due to reverse voltage.
- Anti-reverse connection protection on the power interface prevents users from burning the motherboard when mistakenly connecting the reverse power line during DIY.
- Onboard MAX31865 supports selecting 2-wire or 4-wire of PT100/ PT1000.
- Supports communication via CAN or USB. The terminal resistor 120R of CAN can be selected through the jumper cap, and it reserves CAN expansion 
  interfaces.
- Equipped ESD protection chip on the USB port prevents the main control board from being broken down by the static electricity of the USB port.
- The adaptor board is equipped with terminals, female reeds, double-way studs and screws, which are required for DIY, greatly meeting the DIY needs 
  of customers.

## Specifications

| **External Dimensions**                     | **51.5mm x 37mm. For further details please read: Dimensions**           |
| ------------------------------------------- | ------------------------------------------------------------------------ |
| **Installation Dimensions**                 | **hole spacing 43.85mm, M3 screw hole x 2**                              |
| **Microprocessor**                          | **ARM Cortex-M0 STM32F072C8T6 48MHz (V1.0)**                             |
| **Microprocessor**                          | **ARM Cortex-M0+ STM32G0B1CBT6 64MHz (V1.1)**                            |
| **Input Voltage**                           | **DC12V-DC24V 6A**                                                       |
| **Logic Voltage**                           | **DC 3.3V**                                                              |
| **Heating Interface**                       | **Heating rod (E0), maximum output current: 5A**                         |
| **Onboard Sensor**                          | **ADXL345**                                                              |
| **Fan Interfaces**                          | **two CNC fans (FAN0, FAN1)**                                            |
| **Maximum Output Current of Fan Interface** | **1A, Peak Value 1.5A**                                                  |
| **Expansion Interfaces**                    | **EndStop, I2C, Probe, RGB, PT100/PT1000, USB interface, CAN Interface** |
| **Motor Drive**                             | **Onboard TMC2209**                                                      |
| **Driver Working Mode**                     | **UART**                                                                 |
| **Stepper Motor Interface**                 | **EM**                                                                   |
| **Temperature Sensor Interface Optional**   | **1 Channel 100K NTC or PT1000(TH0), 1 Channel PT100/PT1000**            |
| **USB Communication Interface**             | **USB-Type-C**                                                           |
| **DC 5V Maximum Output Current**            | **1A**                                                                   |

!!! note
    BTT EEB36 CAN V1.0/V1.1 only supports Klipper at the present.

## Dimensions

=== "EBB 36 V1.1 / V.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_Diagram.png width="450">

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_Diagram.png width="450">

## **Pinout**

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_Pin.png width="450">

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_Pin.png width="450">

## **Hardware Configuration**

### **USB Power Supply**

=== "EBB 36 V1.1 / V1.2"
    After the motherboard is powered on, the yellow-green LED1 lights will light up, indicating a normal power supply. The VUSB on the right side of the board is the power selection terminal. Only when using USB to supply power to the motherboard or need to supply power through USB, do you need to use the jumper cap to connect VUSB.

    <img src=img/EBB36CAN/G0B1/EBB_G0B1_USB_Power.png width="450">

=== "EBB 36 V1.0"
    D1 RGB light will be on when the control board powers on, which shows supplying normal power. VUSB in the middle of the board is the selection terminal for power. Only when USB supplies power to the board, or the board supplies power through USB, users need to short circuit the VUSB by jump cap.

    <img src=img/EBB36CAN/072/EBB_072_USB_Power.png width="450">

## Hardware Installation

### **100K NTC or PT1000 Settings**

Version without 31865: No need to plug a jumper cap when using a 100K NTC thermistor, and `TH0` pull-up resistor value is `4.7K`. When using `PT1000`, you need to use the jumper cap to short the two pins, as shown below picture. At this time, `TH0` pull-up resistor value is `2.2K`.

!!! info
    Temperature accuracy that's read out this way will be less accurate than that of `MAX31865`

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_PT100.png width="450"/>

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_PT100.png width="450"/>

!!! info 
    Version with 31865: Select PT100/PT1000 by DIP switch, 2 wire or 4 wire:

    | 1   | 2   | 3   | 4   | Sensor Model  |
    | --- | --- | --- | --- | ------------- |
    | ON  | ON  | ON  | OFF | 2 wire PT100  |
    | ON  | ON  | OFF | ON  | 2 wire PT1000 |
    | OFF | OFF | ON  | OFF | 4 wire PT100  |
    | OFF | OFF | OFF | ON  | 4 wire PT1000 |

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_TwoW.png width="450">

    <img src=img/EBB36CAN/G0B1/EBB_G0B1_FourW.png width="450">

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_TwoW.png width="450">

    <img src=img/EBB36CAN/072/EBB_072_FourW.png width="450">

### **BL-Touch Wiring**

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_BLTouch.png width="450"/>

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_BLTouch.png width="450"/>


### **Filament Broke Detection**

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_Broke.png width="450"/>

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_Broke.png width="450"/>

### **RGB**

=== "EBB 36 V1.1 / V1.2"
    <img src=img/EBB36CAN/G0B1/EBB_G0B1_RGB.png width="450"/>

=== "EBB 36 V1.0"
    <img src=img/EBB36CAN/072/EBB_072_RGB.png width="450"/>

## **Software Configuration**

For details, please click: 

https://bigtreetech.github.io/docs/EBB%20Series.html

## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device

**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket

**Navigation:**

BIQU Official Website：                                            http://biqu3d.com

BIGTREETECH Official Website: https://bigtree-tech.com

Online Store: https://biqu.equipment

BIGTREETECH Official Group:                             https://www.facebook.com/groups/bigtreetech

Discord: https://discord.gg/hhZsV7zk

Reddit: https://www.reddit.com/r/BIGTREETECH/
