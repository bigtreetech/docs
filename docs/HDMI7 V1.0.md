# HDMI7 V1.0



<img src=img/HDMI7/HDMI7_Title.webp width="600"/>

## **Product Profile**

BIGTREETECH HDMI7 V1.0 is a universal 7-inch HDMI display screen developed by the 3D printing team of Shenzhen BIQU Innovation Technology Co., Ltd..

## **Features Highlights**

- HDMI input, can work with Raspberry Pi.
- Connect to a PC, it can be used as a PC monitor.
- Adopt a 7-inch IPS capacitive touch screen with a resolution of 1024x600, support 5-point touch.
- Built-in audio decoding circuit, support 3.5mm headphone jack audio output.
- Support brightness and display direction adjustment.

## **Specifications**

| **Product Dimension**    | **100 x 165mm**                                              |
| ------------------------ | ------------------------------------------------------------ |
| **Mounting Size**        | **100 x 165mm. For further details please read: Dimensions** |
| **Power Input**          | **DC 5V**                                                    |
| **Logic Voltage**        | **DC 3.3V**                                                  |
| **Screen Size**          | **7-inch IPS Display**                                       |
| **Screen Resolution**    | **1024x600**                                                 |
| **Screen Viewing Angle** | **160°**                                                     |

## **Dimensions**

<img src=img/HDMI7/HDMI7_Dimension.webp width="600"/>

You can read more details here: **BTT HDMI7_V1.0_SIZE**

## **Interface Diagram**

<img src=img/HDMI7/HDMI7_Interface.webp width="600"/>

## **Hardware Configuration**

### **Connecting to the Display Output Device**

<p>1. Use the Type C data cable to connect the HDMI7 to the display output device (compatible with Raspberry Pi/PC/other devices that support HDMI display output). When connecting to the PC, the PC will automatically load the driver under normal circumstances. After the driver is loaded, the touch device can be recognized.</p>

<p>2. Use the HDMI cable to connect HDMI7 to the display output device. Usually, after connecting the HDMI cable, the LCD can be displayed normally within 5 seconds.</p>

### **Audio Out**

Plug the 3.5mm earphone/speaker into the AUDIO interface to realize audio output. 

<img src=img/HDMI7/HDMI7_Audio.webp width="600"/>

### **Screen Brightness Adjustment**

<p>BIGTREETECH HDMI7 V1.0 supports brightness adjustment, you can increase the brightness via the Ks1 button, and decrease the brightness via the Ks3 button.<br></p>

<img src=img/HDMI7/HDMI7_Brightness.webp width="600"/>

### **Display Direction Adjustment**

BIGTREETECH HDMI7 V1.0 supports horizontal display direction adjustment via the Ks2 button.

<img src=img/HDMI7/HDMI7_Direction.webp width="600"/>

### **Indicator Light**

When the motherboard is powered on: 

The power indicator, D11(Power) red light, lights up, indicating that the power supply is functioning normally.

The working status indicator, D12(Status) green light, flashes, indicating that the screen is working normally.

## **Software Configuration**

### **Working with Raspberry Pi**

#### **HDMI Display Output**

1.Download at Raspberry Pi official website:

​	Raspberry Pi OS with desktop

​	Release date: April 4th 2022

​	System: 32-bit

​	Kernel version: 5.15

​	Debian version: 11 (bullseye)

 

2.Write the image to the TF card, then modify the following configuration in config.txt:

```
# uncomment to force a specific HDMI mode (this will force VGA)
hdmi_group=2
hdmi_mode=87
hdmi_cvt 1024 600 60 6 0 0 0
# uncomment to force a HDMI mode rather than DVI. This can make audio work in
# DMT (computer monitor) modes
hdmi_drive=1
```

#### **HDMI Audio Output**

1.Raspberry Pi system version:	

​	Raspberry Pi OS with desktop

​	Release date: April 4th 2022

​	System: 32-bit

​	Kernel version: 5.15

​	Debian version: 11 (bullseye)

 

2.After entering the system desktop, right-click the audio source icon in the upper right corner, and select HDMI.

<img src=img/HDMI7/HDMI7_Desktop.webp width="600"/>



## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-hdmi5-v1-0-hdmi7-v1-0?variant=39984058138722



**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
