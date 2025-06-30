# EBB 36 CAN

<img src=img/EBB36CAN/EBB_36_Title.png width="550">  

## Product Profile

The BIGTREETECH EBB36 CAN V1.0/V1.1 is a high-performance printhead control board designed for 36mm extruder stepper motors, developed by Shenzhen BIQU Innovation Technology Co., Ltd. It supports both USB and CAN BUS communication, significantly reducing wiring complexity in 3D printing setups.  

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39760665149538)

## Features Highlights

- DFU Mode Programming - BOOT/RESET buttons enable firmware updates via USB.
- Thermistor Protection Circuit - Prevents mainboard damage from heating rod leakage current.
- Configurable Pull-up Resistors - Jumper-selectable 2.2K/4.7K values support both 100K NTC and PT1000 sensors.
- Isolated USB Power - Jumper-controlled USB power supply prevents DC-DC interference.
- I²C Expansion Port - Enables filament break/clog detection and custom add-ons.
- Anti-Flyback Protection - Integrated diodes protect MOSFETs from reverse voltage spikes.
- Reverse-Polarity Protection - Safeguards board from incorrect power connections.
-Precision Temperature Sensing - MAX31865 supports 2-wire/4-wire PT100/PT1000 configurations.
- Dual Communication - Supports both USB Type-C and CAN bus (with configurable 120Ω termination).
- ESD Protection - Built-in safeguards against USB port static discharge.
-Complete DIY Kit - Includes terminals, reeds, studs and screws for easy installation.

## Technical Specifications 

| **External Dimensions**                     | **51.5mm x 37mm (see Dimensions)**           |
| ------------------------------------------- | ------------------------------------------------------------------------ |
| **Mounting Holes**                 | **hole spacing 43.85mm, M3 screws (x2)**                              |
| **Microcontroller**                          | **STM32F072C8T6 (Cortex-M0, 48MHz) – V1.0**                             |
| **Microprocessor**                          | **STM32G0B1CBT6 (Cortex-M0+, 64MHz) – V1.1**                            |
| **Input Voltage**                           | **DC 12V-DC24V, 6A max**                                                       |
| **Logic Voltage**                           | **DC 3.3V**                                                              |
| **Heating Output**                       | **5A max (EO)**                         |
| **Onboard Sensor**                          | **ADXL345**                                                              |
| **Fan Ports**                          | **2x CNC fans (FAN0, FAN1)**                                            |
| **Maximum Output Current of Fan Interface** | **1A, Peak Value 1.5A**                                                  |
| **Expansion Interfaces**                    | **EndStop, I2C, Probe, RGB, PT100/PT1000, USB interface, CAN Interface** |
| **Motor Drive**                             | **Onboard TMC2209**                                                      |
| **Driver Working Mode**                     | **UART**                                                                 |
| **Stepper Motor Interface**                 | **EM**                                                                   |
| **Temperature Sensor Interface Optional**   | **1 Channel 100K NTC or PT1000(TH0), 1 Channel PT100/PT1000**            |
| **USB Communication Interface**             | **USB-Type-C**                                                           |
| **DC 5V Maximum Output Current**            | **1A**                                                                   |

!!! note
    BTT EEB36 CAN V1.0/V1.1 only supports Klipper firmware at present.

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

## Support & Purchasing

**Buy Now:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device

**Technical Support**

https://biqu3d.com/pages/submit-a-ticket

**Navigation:**

BIQU Official Website：                                            http://biqu3d.com

BIGTREETECH Official Website: https://bigtree-tech.com

Online Store: https://biqu.equipment

BIGTREETECH Official Group:                             https://www.facebook.com/groups/bigtreetech

Discord: https://discord.gg/hhZsV7zk

Reddit: https://www.reddit.com/r/BIGTREETECH/
