# U2C

<img src=img/U2C/U2C_Title1.png width="600"/>

<img src=img/U2C/U2C_Title2.png width="600"/>

## **Product Profile**

BIGTREETECH U2C is a USB to CAN bus module, which can convert the USB port of Raspberry Pi to the CAN bus, and connect 3D printing motherboard, BIGTREETECH EBB35/36/42 CAN and other products through CAN bus. There are many different forms of CAN interfaces on the board, which are helpful to connect to different boards.

CAN bus has many advantages in the field of industrial control, so our company has launched this USB to CAN module. The CAN bus has a long transmission distance, and a large number of nodes can be mounted on it, so the motherboard, EBB, and other expansion boards can be mounted on the same CAN bus at the same time.

**Product Link:** https://biqu.equipment/products/bigtreetech-ebb-sb2209-can-v1-0?variant=40214284468322

## **Features Highlights**

- Support CAN bus connection, long data transmission, strong anti-noise ability, strong real-time performance and high reliability.
- The surface of the PCB adopts the ENIG process.
- The TYPE-C port is equipped with ESD protection to prevent static electricity from damaging the hardware.
- Support firmware update for the motherboard through SWD or hardware DFU.
- More than on CAN interface.

## **Dimensions**

<img src=img/U2C/U2C_Dimension.png width="600"/>

## **Interface Diagram**

<img src=img/U2C/U2C_CAD.png width="600"/>

CAN_IN: USB to CAN interface for connecting to Raspberry Pi.

CAN_OUT*: It is used to connect an interface without CAN transceiver but with CAN function, such as connecting to the USB port of the motherboard, where the pin connecting the USB port of the motherboard to the main controller must have CAN function. E. g.: 

<img src=img/U2C/U2C_CAD1.png width="600"/>

CAN_OUT: Used to connect BIGTREETECH EBB CAN or other boards with CAN transceivers.

Power: Power Supply.

## **Pinout**

<img src=img/U2C/U2C_Pinout.png width="600"/>

## **Product Display**

<img src=img/U2C/U2C_Display1.png width="600"/>

<img src=img/U2C/U2C_Display2.png width="600"/>

<img src=img/U2C/U2C_Display3.png width="600"/>

<img src=img/U2C/U2C_Display4.png width="600"/>

<img src=img/U2C/U2C_Display5.png width="600"/>

## **Hardware Configuration**

### **Optional Wiring Diagram**

<img src=img/U2C/U2C_Wiring.png width="600"/>

## **Software Configuration**

### **Firmware Source Code**

V1.0/1.1 use the open source CandleLight firmware: 

https://github.com/candle-usb/candleLight_fw 

MCU Model: STM32F072C8

V2.0/2.1 STM32G0 support is added on the basis of open source CandleLight:

https://github.com/bigtreetech/candleLight_fw/tree/stm32g0_support 

MCU Model: STM32G0B1C8

### **Firmware Update**

After the module is completely powered off, press and hold the Boot button, plug the Type-C data cable to power the module, enter the DFU mode, and use the STM32CubeProgrammer software to update the firmware.

<img src=img/U2C/U2C_DFU.png width="600"/>

### **Klipper Configuration**

Firmware Configuration Reference: https://www.klipper3d.org/CANBUS.html

1.Enter command in ssh terminal 

```
sudo nano /etc/network/interfaces.d/can0 
```

and execute

```
auto can0
iface can0 can static
bitrate 500000
up ifconfig $IFACE txqueuelen 1024
```

<font  color="red">***Set the CANBus speed to 500K (must be the same as the speed set in the firmware (500000) CAN bus speed), save after modification (Ctrl + S) and exit (Ctrl + X), enter sudo reboot to restart the Raspberry Pi.***</font>

2.Every device on CANBus generates a canbus_uuid based on the MCU's UID, to find each microcontroller device ID, make sure the hardware is powered on and wired correctly, then run:

```
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
```

3.If an uninitialized CAN device is detected, the above command will report the device's canbus_uuid:

```
Found canbus_uuid=0e0d81e4210c
```

4.If Klipper is already running and connected to this device, the canbus_uuid will not be reported, which is normal.

## **Precautions**

- 12/24V and GND should be connected correctly.
- When using CAN communication, you need to see which CAN node is used as a terminal. If using a terminal, you must plug the jumper cap at the 120R position.



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39762747949154	



**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
