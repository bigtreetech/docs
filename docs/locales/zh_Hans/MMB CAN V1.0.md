# MMB CAN V1.0

<img src=img/MMB_CAN/MMB_CAN_Title.png width="600" />

## **产品简介**

BIGTREETECH MMB CAN V1.0 是必趣创新科技（深圳）有限公司 3D 打印团队针对多色挤出机制作的挤出控制板，可以通过 USB 或者 CAN 进行通讯，大大简化接线。

## **功能亮点**

- 主板预留 BOOT 和 RESET 按键，用户可以通过 USB 进入 DFU 模式更新固件
- 预留 I2C 接口，此端口也可用于断料、堵料检测，或者进行其它功能的 DIY 操作
-  电源接口有防反接保护，避免客户在 DIY 时接反电源线导致板子烧毁
- 支持 CAN 或 USB 通讯，其中 CAN 的终端电阻 120R 可通过跳线帽选择，且预留 CAN 拓展接口
- USB 口增设 ESD 保护芯片，防止主控被 USB 口静电击穿
- 采用艾迈斯接口进行 CAN 通讯及主板供电，让接线简单化
- 步进电机驱动支持高低压选择，方便客户 DIY 使用

## **规格**

| 外观尺寸                    |                         125mm x 54mm                         |
| --------------------------- | :----------------------------------------------------------: |
| **安装尺寸**                |      **详情请参考：BIGTREETECH MMB CAN V1.0-SIZE.pdf**       |
| **微处理器**                |            **ARM Cortex-M0+ STM32G0B1CBT6 64MHz**            |
| **输入电压**                |                      **DC12V-DC24V 9A**                      |
| **逻辑电压 **               |                         **DC 3.3V**                          |
| **舵机接口（MOT）最大输出** |                     **5V 2A, peak 2.5A**                     |
| **拓展接口**                | **STP1-STP11，I2C，RGB，Sensor（红外传感器接口）,USB 接口,CAN 接口** |
| **电机驱动支持**            |               **EZ 系列驱动（支持电压选择）**                |
| **驱动工作模式 **           |                   **STEP/DIR, UART, SPI**                    |
| **步进电机接口 **           |                      **M1, M2, M3, M4**                      |
| **USB 通信接口 **           |                        **USB Type-C**                        |
| **DCDC 5V 输出最大电流**    |                           **3.6A**                           |

## **固件支持**

此产品当前仅支持 Klipper 固件

## **尺寸**

<img src=img/MMB_CAN/MMB_CAN_Dimension.png width="600" />

## **外围设备接口**

### 引脚说明

<img src=img/MMB_CAN/MMB_CAN_Pin.png width="600" />

## **接口介绍**

### USB 供电

主板上电之后， 电源灯会亮起，表示供电正常。板上标识 VUSB 是电源选择端，仅当使用USB 给主板供电时，才需要使用跳帽将 VUSB 短接。

<img src=img/MMB_CAN/MMB_CAN_USB.png width="600" />

### Servo 接线

<img src=img/MMB_CAN/MMB_CAN_Servo.png width="600" />

### RGB-WS2812 接线

<img src=img/MMB_CAN/MMB_CAN_WS2812.png width="600" />

###  Sensor（如 CRT5000 红外传感器）接线

<img src=img/MMB_CAN/MMB_CAN_Sensor.png width="600" />

### I2C（如 AHT10 温湿度传感器）接线

<img src=img/MMB_CAN/MMB_CAN_I2C.png width="600" />

### Endstop（如霍尔传感器）接线

<img src=img/MMB_CAN/MMB_CAN_Endstop.png width="600" />

## **Klipper 固件**

### 烧录 CANBOOT

注意：CanBoot 旨在通过 CAN bus 接口直接更新 MCU 固件，若您更倾向于使用 DFU 更新方法，请跳过此步骤。

“树莓派或 CB1 烧录 CanBoot”，参考此处说明下载 CanBoot 工程: https://github.com/Arksine/CanBoot

1. 输入

   **cd ~**

   跳转到主目录，输入

   **git clone** **https://github.com/Arksine/CanBoot**

   下载 CanBoot 工程，然后输入

   **cd CanBoot**

   跳转到 CanBoot 目录中。

2. 输入

   **make menuconfig**

   并按照下图配置:

   <img src=img/MMB_CAN/MMB_CAN_Klipper1.png width="600" />

​	3.输入 **make** 编译固件，当 **make** 执行完成后会在 **home/biqu/CanBoot/out** 文件夹中生成我们所需要的“**canboot.bin**”固件，在 SSH 软件左侧可以直接下载到电脑中

<img src=img/MMB_CAN/MMB_CAN_Klipper2.png width="600" />

​	4.请按住 **Boot** 按钮，然后使用 Type-C 线连接至树莓派/CB1，此时芯片进入 DFU 模式

​	5.在 SSH 终端命令行中输入 **lsusb** 查询 DFU 设备 ID

<img src=img/MMB_CAN/MMB_CAN_Klipper3.png width="600" />

​	6.请输入以下命令以烧录 CanBoot

​	  **make flash FLASH_DEVICE=0483:df11**

​	其中“**0483:df11**”需替换为上一步中查询到的实际设备 ID

​	7.烧录完成后，请拔下 Type-C 数据线。

### 编译 Klipper 固件

​	1.SSH 连接到 CB1/树莓派后，在命令行输入：

​		**cd ~/klipper/**

​		**make menuconfig**

​		使用下面的配置编译固件(如果没有下列选项，请更新 Klipper 固件源码到最新版本)

<img src=img/MMB_CAN/MMB_CAN_Klipper4.png width="600" />

**[\*] Enable extra low-level configuration options**

**Micro-controller Architecture (STMicroelectronics STM32) --->**

**Processor model (STM32G0B1) --->**

如果不使用 CanBoot

**Bootloader offset (No bootloader) --->**

如果使用 CanBoot

**Bootloader offset (8KiB bootloader) --->**

如果使用 Type-C 上的 USB 通信

**Communication interface (USB (on PA11/PA12)) --->**

如果使用 CANBus 通信

**Communication interface (CAN bus (on PB0/PB1)) --->**

**(1000000) CAN bus speed**

2.配置选择完成后, 输入‘**q**’退出配置界面，当询问是否保存配置时选择“**Yes**”；

3.输入 **make** 编译固件，当 **make** 执行完成后会在 **home/pi/klipper/out** 文件夹中生成我们所需要的**“klipper.bin”**固件，在 SSH 软件左侧可以直接下载到电脑中

<img src=img/MMB_CAN/MMB_CAN_Klipper5.png width="600" />

### 通过 CANBOOT 进行固件更新

1. 使用 CAN bus 需要接好 CAN bus 线缆以及插上 120R 终端电阻的跳线帽。

2. 输入

​	**cd ~/CanBoot/scripts**

​	然后输入

​	**python3 flash_can.py -i can0 -q**

​	查询 canbus ID （需提前接好 CAN 线并通电），如下图已找到设备的 UUID

<img src=img/MMB_CAN/MMB_CAN_Klipper6.png width="600" />

​	3.输入

​	**python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u** **be69315a613c**

​	替换为实际的 UUID，注意：**klipper.bin** 需要提前 **make** 生成出来，并且 **CanBoot**的 **Application start offset** 为 **8KiB offset**，所以 **Klipper** 的 **menuconfig** 中 **Bootloader offset** 也要为 **8KiB bootloader**，如下图已经烧录成功。

<img src=img/MMB_CAN/MMB_CAN_Klipper7.png width="600" />

​	4.再次输入

​	**python3 flash_can.py -i can0 -q**

​	查询，此时 **Application** 由之前的 **CanBoot** 变为 **Klipper**，代表 Klipper 已经正常运行

<img src=img/MMB_CAN/MMB_CAN_Klipper8.png width="600" />

### 通过 DFU 进行固件更新

树莓派或 CB1 通过 DFU 更新

1、请按住 **`Boot`** 按钮，然后使用 Type-C 线连接至树莓派/CB1，此时芯片进入 DFU 模式。

2、在 SSH 终端命令行中输入 **lsusb** 查询 DFU 设备 ID

<img src=img/MMB_CAN/MMB_CAN_Klipper9.png width="600" />

3、输入

**cd klipper**

跳转到 klipper 目录下，输入

**make flash FLASH_DEVICE=0483:df11**

开始烧录固件（注意：将 **0483:df11** 更换为上一步中查询到的实际的设备 ID）

4、固件烧录完成后，输入

**ls /dev/serial/by-id/**

查询设备的 Serial ID（只有通过 USB 通信的方式才会有此 ID，CANBus 方式忽略此步骤)。

5、如果使用 USB 通信，第一次烧录完成之后，再次更新时无需手动按 Boot按钮进入 DFU 模式，可以直接输入

**make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32g0b1xx_4550357128922FC8-if00**

烧录固件（注意：将**/dev/serial/by-id/xxx** 更换为上一步中查询到的实际的ID）。

6、如果使用 CAN bus 通信，烧录完成后，请拔下 Type-C 数据线。

### CAN bus 配置

搭配 BIGTREETECH U2C 模块使用

<img src=img/MMB_CAN/MMB_CAN_Klipper10.png width="600" />

1、在 SSH 终端中输入:

**sudo nano /etc/network/interfaces.d/can0**

命令,新增以下内容:

**allow-hotplug can0**

**iface can0 can static**

 **bitrate 1000000**

 **up ifconfig $IFACE txqueuelen 1024**

将 CAN bus 速度设置为 **1M**（必须与固件中设置的速度一致(**1000000**) CAN bus speed），修改后保存（Ctrl + S）并退出（Ctrl + X），输入**sudo reboot**

2、CANBus 上的每个设备都会根据 MCU 的 UID 生成一个 canbus_uuid，要查找每个微控制器设备 ID，请确保硬件已通电并正确接线，然后运行：

**~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0**

3、如果检测到未初始化的 CAN 设备，上述命令将报告设备的 canbus_uuid：

**Found canbus_uuid=0e0d81e4210c**

4、如果 Klipper 已经正常运行并且连接到此设备，那么 canbus_uuid 将不会被上报，此为正常现象。

### **配置 Klipper**

1、在电脑的浏览器中输入树莓派的 IP 访问，如下图所示的路径中下载名为“**sample-bigtreetech-mmb-canbus.cfg**”的参考配置，如果找不到此文件，请更新 Klipepr 固件源码到最新版本，或者到 GitHub 下载

https://github.com/bigtreetech/MMB

<img src=img/MMB_CAN/MMB_CAN_Klipper11.png width="600" />

2、将主板的配置文件上传到 Configuration Files 中;

<img src=img/MMB_CAN/MMB_CAN_Klipper12.png width="600" />

3、并在“printer.cfg”文件中添加此主板的配置:**[include sample-bigtreetech-mmb-canbus.cfg]**

4、将配置文件中的 ID 号修改为主板实际的 ID（USB serial 或者 canbus）

5、按照下方链接的说明配置模块的具体功能： https://www.klipper3d.org/Overview.html
