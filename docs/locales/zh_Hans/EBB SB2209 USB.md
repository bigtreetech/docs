# EBB SB2209 USB V1.0

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Title.png width="600"/>

## **产品简介**

BIGTREETECH EBB SB2209 USB V1.0 是一款为 Voron StealthBurner 设计的工具板。它通过双 XT30 屏蔽电缆实现稳定和高效的 USB 通信，操作简便。该工具板还配备了 TMC2209 驱动和 LIS2DW 加速度计。

## **产品特点**

- 主控采用高性能的 MCU：RP2040 133MHz
- 主板预留 BOOT 和 RESET 按键，用户可以通过 USB 进入 DFU 模式更新固件
- 板载热敏电阻的保护电路，避免因加热棒漏电导致主控芯片烧毁
- 加热棒采用更高性能的 MOS 管，增大该接口的输出能力，降低发热量
- 板载 HUB 芯片，预留 3 个 USB 口支持更多的 USB 设备搭配使用
- USB 口设 ESD 保护芯片，防止主控被 USB 口静电击穿
- USB 信号串联高速信号调节器，增强 USB 信号的传输能力，降低 USB 信号因传输距离过远导致断联的风险
- 配送双头艾迈斯的 XT30 线材，对信号线进行双绞屏蔽接地，大大减少外界干扰对 USB信号的影响
- 采用更稳定的排针型号，增大输出能力的同时，避免接触不良的风险
- 座子最小间距采用 PH2.0 间距，方便客户 DIY 压线端子
- 出厂配备 DIY 所需端子，母簧片，及螺丝，极大地满足了客户的 DIY 需求

## **产品参数**

| 微处理器             | RP2040 Dual ARM Cortex-M0+ @ 133MHz                     |
| -------------------- | ------------------------------------------------------- |
| 输入电压             | DC12V-DC24V 9A                                          |
| 逻辑电压             | DC3.3V                                                  |
| 加热接口             | 加热棒（HE0），最大输出电流：6A                         |
| 板载加速度传感器     | LIS2DW                                                  |
| 风扇接口             | 两个数控风扇（FAN1，FAN2），1 路 4 线风扇接口（4L-FAN） |
| 风扇接口最大输出电流 | 1A，峰值 1.5A                                           |
| 拓展接口             | Probe，RGB，USB2.0 x 3，I2C，Endstop，IND or FAN        |
| 电机驱动             | 板载 TMC2209                                            |
| 驱动工作模式         | UART                                                    |
| 步进电机接口         | E0                                                      |
| 温度传感器接口       | 1 路 100K NTC（上拉电阻为 2.2K），支持 PT1000           |
| USB 通信输入接口     | 艾迈斯 XT30 2+2Pin                                      |
| DCDC 5V 输出最大电流 | 1A                                                      |

## **产品尺寸**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Dimensions1.png width="600"/>

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Dimensions2.png width="600"/>

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Dimensions3.png width="600"/>

## **外设接口**

### **Pin 脚说明**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Peripheral1.png width="600"/>

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Peripheral2.png width="600"/>

## **接口介绍**

### **供电及 USB 输入接口**

如下图所示，正常供电时，电源指示灯“P”为长亮状态，程序正常启动时，状态指示灯“S”为长亮状态：

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface1.png width="600"/>

### **加热棒连接**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface2.png width="600"/>

### **100K NTC or PT1000 连接**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface3.png width="600"/>

<font  color="red">**注意:**</font> 

<font  color="red">**1. 出厂默认不包括 MAX31865 及其相关组件。**</font> 

<font  color="red">**2. 上拉电阻值为 2.2K。在调试固件时，请注意不要误写为 4.7K，否则可能导致温度读数不准确。**</font> 

### **Probe 接口**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface4.png width="600"/>

### **Endstop 连接**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface5.png width="600"/>

### **Proximity Switch**

#### **Connecting the NPN Type Proximity Switch**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface6.png width="600"/>

#### **Connecting the PNP Type Proximity Switch**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface7.png width="600"/>

**注意：**

1.接口只支持 24V 接近开关；

2.如果使用 NPN 型接近开关，需使用跳帽短接“pull-up”处的两根排针。

#### **用作 FAN 功能**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface8.png width="600"/>

### **步进电机接口**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface9.png width="600"/>

### **I2C接口**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface10.png width="600"/>

### **USB2.0接口**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface11.png width="600"/>

**注意:** 

1. 3PCS 的 USB2.0 接口只能同时接一个摄像头进行工作；

2. 摄像头的像素建议≤1080P，否则会影响画面流畅度；

### **风扇连接及电压选择**

#### **四线风扇**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface12.png width="600"/>

**注意：**四线风扇接口，出厂默认输出 5V，客户若想使用 24V，则需要手动将保险丝焊接到24V 一侧。

#### **两线风扇**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface13.png width="600"/>

注意：两线风扇接口，出厂默认输出 24V，客户若想使用 5V，则需要手动将保险丝焊接到5V 一侧。

### **RGB接口**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface14.png width="600"/>

### **5V-OUT接口**

KNOMI:

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface15.png width="600"/>

KNOMI 2:

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Interface16.png width="600"/>

## **Klipper**

### **编译固件**

1、ssh 连接到树莓派后，在命令行输入：

**cd ~/klipper/** 

**make menuconfig**

使用下面的配置编译固件(如果没有下列选项，请更新 Klipper 固件源码到最新版本) 

**[\*] Enable extra low-level configuration options** 

 **Micro-controller Architecture (Raspberry Pi RP2040) --->** 

 **Bootloader offset (No bootloader) --->** 

 **Flash chip (W25Q080 with CLKDIV 2) --->** 

 **Communication Interface (USBSERIAL) --->**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper1.png width="600"/>

2、配置选择完成后, 输入 `q` 退出配置界面，当询问是否保存配置是选择 "Yes"

3、输入 **make** 编译固件，当 **make** 执行完成后会在 **home/biqu/klipper/out** 文件夹中生成我们所需要的`klipper.uf2`固件

### **固件更新**

**树莓派或 CB1 通过 DFU 更新**

1、请使用转接板将 BIGTREETECH EBB SB2209 USB V1.0 连接至树莓派/CB1，并确保电源线也已连接。

2、按住 Boot 按钮，然后单击一下 Reset 按钮进入 DFU 模式。

3、在 SSH 终端命令行中输入：

**lsusb** 

查询 DFU 设备 ID

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper2.png width="600"/>

4、输入：

**cd klipper**

跳转到 klipper 目录下，输入：

**make flash FLASH_DEVICE= 2e8a:0003**

开始烧录固件（注意：将 **2e8a:0003** 更换为上一步中查询到的实际的设备 ID）

5、固件烧录完成后，输入：

**ls /dev/serial/by-id/**

查询设备的 Serial ID

6、第一次烧录完成之后，再次更新时无需手动按 Boot 和 Reset 按钮进入 DFU 模式，可

以直接输入

**make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_4550357128922FC8-if00**

烧录固件（注意：将**/dev/serial/by-id/xxx** 更换为上一步中查询到的实际的 ID）

6、烧录完成后，请拔下 VUSB 跳线帽和 Type-C 数据线。

### **配置 Klipper** 

1、在电脑的浏览器中输入树莓派的 IP 访问，如下图所示的路径中下载主板的参考配置，如果找不到此文件，请更新 Klipepr 固件源码到最新版本，或者到 GitHub 下载

https://github.com/bigtreetech/EBB

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper3.png width="600"/>

2、将主板的配置文件上传到 Configuration Files 中

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper4.png width="600"/>

3、并在“printer.cfg”文件中添加此主板的配置

**[include sample-bigtreetech-ebb-sb-usb-v1.0.cfg]**

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper5.png width="600"/>

4、将配置文件中的 ID 号修改为主板实际的 ID（USB serial）

<img src=img/EBB_SB2209_USB/EBB_SB2209_USB_Klipper6.png width="600"/>

5、按照 https://www.klipper3d.org/Overview.html 的说明配置模块的具体功能
