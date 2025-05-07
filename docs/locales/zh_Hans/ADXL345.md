# ADXL345 V2.0

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Title.png width="600"/>

## **产品简介**

BIGTREETECH ADXL345 V2.0 是必趣创新科技（深圳）有限公司 3D 打印团队针对打印机共振补偿设计的模块，可以通过 USB 进行通讯，大大简化接线。

## **功能亮点**

- 主板预留 BOOT 按键，方便用户更新固件。
- 预留接口焊盘，方便客户 DIY 焊线。
- USB 口增设 ESD 保护芯片，防止主控被 USB 口静电击穿。

## **规格**

| **外观尺寸**           | **33.25 x 15.5mm**                                |
| ---------------------- | ------------------------------------------------- |
| **安装尺寸**           | **详情请参考：BIGTREETECH ADXL345 V2.0-SIZE.pdf** |
| **微处理器**           | **RP2040 Dual ARM Cortex-M0+ @ 133MHz**           |
| **输入电压**           | **DC 5V**                                         |
| **逻辑电压**           | **DC 3.3V**                                       |
| **与 PC 端通讯方式**   | **USB2.0**                                        |
| **传感器**             | **ADXL345**                                       |
| **传感器通讯方式**     | **4Line SPI**                                     |
| **分辨率**             | **Up to 3.9mg/LSB.**                              |
| **输出数据速率**       | **0.1-3200Hz**                                    |
| **传感器工作温度范围** | **-40℃ to +85℃**                                  |

## **固件支持**

此产品当前仅支持 Klipper 固件

## **产品尺寸**

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Dimensions.png width="600"/>

## **外设接口**

### **Pin 脚说明**

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Pin.png width="600"/>

## **接口介绍**

与 BTT Pi V1.2 的连接（Type-C）

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Interface.png width="600"/>

与 MANTA M8P 的连接（Type-C）

<img src=img/ADXL345_V2.0/ADXL345_V2.0_TypeC.png width="600"/>

与 MANTA M8P 的连接（焊接线）

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Soldering.png width="600"/>

## **Klipper 固件**

### 编译 Klipper 固件

1.SSH 连接到 CB1/树莓派后，在命令行输入：

​	**cd ~/klipper/**

​	**make menuconfig**

​	使用下面的配置编译固件(如果没有下列选项，请更新 Klipper 固件源码到最新版本)；

<img src=img/rp2040_usb_menuconfig.png width="600"/>

**[\*] Enable extra low-level configuration options**

 **Micro-controller Architecture (Raspberry Pi RP2040/RP235x)  --->**

 **Processor model (rp2040)  --->**

 **Bootloader offset (No bootloader)  --->**

 **Flash chip (GENERIC_03H with CLKDIV 4)  --->**

 **Communication Interface (USBSERIAL)  --->**

2.配置选择完成后, 输入 ‘q’退出配置界面，当询问是否保存配置时选择“Yes”；

3.输入 make 编译固件，当 make 执行完成后会在 home/pi/klipper/out 文件夹中生成我们所需要的‘klipper.bin’固件，在 SSH 软件左侧可以直接下载到电脑中

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Klipper2.png width="600"/>

### 通过 DFU 进行固件更新

树莓派或 CB1 通过 DFU 更新

1. 请按住 Boot 按钮，然后使用 Type-C 线连接至树莓派/CB1，此时芯片进入 DFU 模式
2. 在 SSH 终端命令行中输入 lsusb  查询 DFU 设备 ID

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Klipper3.png width="600"/>

​	3.输入

​	**cd klipper**

​	跳转到 klipper 目录下，输入

​	**make flash FLASH_DEVICE=2e8a:0003**

​	开始烧录固件（注意：将 2e8a:0003 更换为上一步中查询到的实际的设备 ID）

​	4.固件烧录完成后，输入

​	**ls /dev/serial/by-id/** 

​	查询设备的 Serial ID（只有通过 USB 通信的方式才会有此 ID，CANBus 方式忽略此步骤)。

​	5.第一次烧录完成之后，再次更新时无需手动按 Boot按钮进入 DFU 模式，可以直接输入

​	**make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_4550357128922FC8-if00**

​	烧录固件（注意：将/dev/serial/by-id/xxx 更换为上一步中查询到的实际的ID）。

### 配置 Klipper

1. 在 GitHub 下载“sample-bigtreetech-adxl345-v2.0.cfg”配置文件：

​	https://github.com/bigtreetech/ADXL345

​	2.将主板的配置文件上传到 Configuration Files 中; 

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Klipper4.png width="600"/>

​	3.并在“printer.cfg”文件中添加此主板的配置

​	**[include sample-bigtreetech-adxl345-v2.0.cfg]**

​	4.将配置文件中的 ID 号修改为主板实际的 ID（USB serial）

​	5.按照下方链接的说明配置模块的功能：

​	https://www.klipper3d.org/Config_Reference.html#adxl345

​	其中 axes_map 参数需要根据模块安装的方向与打印机的运动方向设置。第一个参数代表打印机 x 轴向正方向移动时加速度计模块对应的轴的方向（模块上的丝印可以看到模块的各个轴方向），第二个参数代表 y 轴向正方向移动时加速度计的方向。

​	6.配置、安装完成并且成功连接到打印机后，就可以开始共振补偿测试了，可以参考下方链接中的说明开始测试：

https://www.klipper3d.org/G-Codes.html#shaper_calibrate

在 Mainsail 的 Console 中输入以下命令开始 X 轴校准：

SHAPER_CALIBRATE AXIS=X

输入以下命令开始 Y 轴校准：

SHAPER_CALIBRATE AXIS=Y

校准完成后，按照提示输入 SAVE_CONFIG 保存校准参数

注意：共振补偿测试完之后，模块可以拆除，需要同步在“printer.cfg”文件中屏蔽模块的配置，否则打印机找不到模块会无法启动，在模块的配置文件名前添加“#”来屏蔽模块。

\# [include sample-bigtreetech-adxl345-v2.0.cfg]

## **装配方式** 

注意：安装时候避免暴力拧螺丝，防止损坏板子元器件。

已 voron 作为示范：

**安装方式一：**

双孔位所在 voron 头侧边支架（与官方孔距相匹配）

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Method1.png width="600"/>

**安装方式二：**

使用螺丝，如图示穿过 pcba 与垫片所在加热块上

<img src=img/ADXL345_V2.0/ADXL345_V2.0_Method2.png width="600"/>
