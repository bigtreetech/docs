# PI4B

<img src=img/PI4B/PI4B_Title.png width="600"/>

## **Introduction**

BIGTREETECH PI4B Adapter V1.0 is a Raspberry Pi CM4 carrier board launched by Shenzhen Big Tree Technology Co., Ltd., when the Raspberry Pi CM4 is 
plugged in, it can be used as a Raspberry Pi 4, which brings convenience for customers to use the CM4.

## **Main Features**

- Use Raspberry Pi 4B board outline, the same mounting hole dia;
- Support various versions of CM4 modules;
- Designed with Gigabit Ethernet interface, HDMI0 interface, HDMI1 interface, CAM interface, CSI interface;
- Equipped with ESD protection at the USB and network interfaces;
- 40 pin double-row pin header with the same function as Raspberry Pi;
- Adopting Type-C interface, which can be used to write CM4 with eMMC, and can supply power to the whole system at the same time;
- A 5V power interface is reserved, which can be connected to a 5V fan for CM4 heat dissipation.

## **Basic Parameters**

- Product Size: 85 x 54.29mm
- Installation Size: 58 x 49mm 
- Power Input: Type-C 5±0.25V 
- Module Type Support: various versions of Raspberry Pi CM4 modules.
- Interface Support: Micro HDMI x 2，USB 2.0x4，RJ45，CAM，CSI，Micro SD...

## **Dimensions**

<img src=img/PI4B/PI4B_Dimension.png width="600"/>

## **Interface Diagram**

<img src=img/PI4B/PI4B_Interface.png width="600"/>

<font  color="red">***Warning: The voltage of the Type-C port is 5V, and 12/24V is not allowed，otherwise, it will cause irreversible damage.***</font>

## **Hardware Configuration**

### **Onboard Indicator Light**

Onboard 2 indicator lights. When powering on, the PWR (red) light will be on when the Raspberry Pi power supply is successfully started, and the ACT (green) light will flash when the system is running.

<img src=img/PI4B/PI4B_Light.png width="600"/>

## **Hardware Installation**

### **CM4 Installation**

The installation direction of CM4 to BIGTREETECH PI4B Adapter V1.0 is shown below:

<img src=img/PI4B/PI4B_CM4.png width="600"/>

## **Software Configuration**

For details, please click: 

https://bigtreetech.github.io/docs/Software%20Configuration.html

## **Software Installation**

For details, please click:

https://bigtreetech.github.io/docs/Software%20Installation.html

### **eMMC Version**

<font  color="red">***Note: the eMMC version will not run the system from the SD card.***</font>

1.Install rpiboot

For Windows:

http://github.com/raspberrypi/usbboot/raw/master/win32/rpiboot_setup.exe

For Maca and Linux:

https://github.com/raspberrypi/usbboot#building

2.Push the DIP switch 1 (USB OTG) and 2 (RPI BOOT) to ON to enter BOOT mode.

<img src=img/PI4B/PI4B_eMMC.png width="600"/>

3.Plug the Type-C into the USB port of the computer (in order to avoid problems caused by the insufficient USB power supply of the computer, it is best to use a USB-Hub with an external power supply, or use an external power supply to power the CM4 via the 5V port of the 40 pin pin header). Run sudo ./rpiboot (Mac/Linux) or rpiboot.exe on Windows, then the eMMC of CM4 will be recognized as a mass storage device by the computer (if rpiboot reports an error at this time, you can try to re-plug the USB).

4.The step of using the Raspberry Pi Imager to write the OS image is exactly the same as the LITE version. Note: the SSH function should also be enabled.

5.When the writing is completed, push the DIP switch 1 (USB OTG) and 2 (RPIBOOT) back to OFF to enter the normal working mode.

## **Precautions**

- All unplugging and plugging operations should be performed under the condition of power off, including enabling the eMMC writing function.
- Pay attention to the heat dissipation of CM4. If the running application consumes too many system resources, the CM4 will get hot quite seriously.
- Handle the board gently to prevent damage.



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/pi4b-adapter-v1-0?variant=39919128969314



**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
