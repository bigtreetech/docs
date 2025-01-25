# MMB CAN V2.0

<img src=img/mmb_can_v2_0/mmb_can_v2_0_title1.png width="600" />

## **产品简介**

BIGTREETECH MMB CAN V2.0是深圳市必趣创新科技有限公司3D打印团队针对多色挤出机制作的挤出控制板，可以通过USB或者CAN进行通讯，大大简化接线。

## **产品特点**

- 主板预留BOOT和RESET按键，用户可以通过USB进入DFU模式更新固件。
- 预留I2C接口，此端口也可用于断料、堵料检测，或者进行其它功能的DIY操作。
- 电源接口有防反接保护，避免客户在DIY时接反电源线导致板子烧毁。
- 支持CAN或USB通讯，其中CAN的终端电阻120R可通过跳线帽选择，且预留CAN拓展接口。
- USB口增设ESD保护芯片，防止主控被USB口静电击穿。
- 采用艾迈斯接口进行CAN通讯及主板供电，让接线简单化。
- 步进电机驱动支持高压，方便客户DIY使用

## **产品参数**

| **外观尺寸**                |                     **108.26mm x 59mm**                      |
| --------------------------- | :----------------------------------------------------------: |
| **安装尺寸**                |      **详情请参考：BIGTREETECH MMB CAN V2.0-SIZE.pdf**       |
| **微处理器**                |            **ARM Cortex-M0+ STM32G0B1RET6 64MHz**            |
| **输入电压**                |                       **DC12V-DC60V**                        |
| **输入电流**                |                            **9A**                            |
| **逻辑电压**                |                         **DC 3.3V**                          |
| **舵机接口（MOT）最大输出** |                     **5V 2A，峰值2.5A**                      |
| **拓展接口**                | **STP1-STP11，I2C，RGB，Sensor（红外传感器接口），USB接口，CAN接口** |
| **电机驱动支持**            |                       **EZ系列驱动 **                        |
| **驱动工作模式**            |                   **STEP/DIR, UART, SPI**                    |
| **步进电机接口**            |                      **M1、M2、M3、M4**                      |
| **USB通信接口**             |                        **USB Type-C**                        |
| **DCDC 5V输出最大电流**     |                            **7A**                            |

## **产品尺寸**

<img src=img/mmb_can_v2_0/mmb_can_v2_0_dimensions.png width="600" />

## **外设接口**

### Pin脚说明

<img src=img/mmb_can_v2_0/mmb_can_v2_0_pin.png width="600" />

## **接口介绍**

### USB供电

主板上电之后， 电源灯会亮起，表示供电正常。板上标识VUSB是电源选择端，仅当使用USB给主板供电时，才需要使用跳帽将VUSB短接。

<img src=img/mmb_can_v2_0/mmb_can_v2_0_usb.png width="600" />

### MOT接口

<img src=img/mmb_can_v2_0/mmb_can_v2_0_mot.png width="600" />

### RGB-WS2812接线

<img src=img/mmb_can_v2_0/mmb_can_v2_0_rgb.png width="600" />

###  Sensor（如CRT5000红外传感器）接线

<img src=img/mmb_can_v2_0/mmb_can_v2_0_sensor.png width="600" />

### I2C（如AHT10温湿度传感器）接线

<img src=img/mmb_can_v2_0/mmb_can_v2_0_i2c.png width="600" />

### Endstop（如霍尔传感器）接线

<img src=img/mmb_can_v2_0/mmb_can_v2_0_endstop.png width="600" />

## **Klipper**固件

### 烧录katapult(Canboot)

注意：katapult(也就是Canboot) 旨在通过 CAN bus 接口直接更新 MCU 固件，若您更倾向于使用 DFU 更新方法，请跳过此步骤。

“树莓派或CB1烧录katapult”，参考此处说明下载katapult工程： https://github.com/Arksine/katapult

1. 输入

   **cd ~**

   跳转到主目录，输入

   **git clone** **https://github.com/Arksine/katapult**

   下载katapult工程，然后输入

   **cd katapult**

   跳转到katapult目录中。

2. 输入

   **make menuconfig**

   并按照下图配置。

   <img src=img/mmb_can_v2_0/mmb_can_v2_0_klipper1.png width="600" />

​	3.输入`make`编译固件，当`make`执行完成后会在 `home/biqu/katapult/out` 文件夹中生成我们所需要的`“katapult.bin”`固件

​	4.请按住**Boot**按钮，然后使用Type-C线连接至树莓派/CB1，此时芯片进入DFU模式

​	5.在SSH终端命令行中输入`lsusb`查询 DFU设备ID

<img src=img/mmb_can_v2_0/mmb_can_v2_0_klipper2.png width="600" />

​	6.请输入以下命令以烧录katapult：

​	  **make flash FLASH_DEVICE=0483:df11**

​	其中“0483:df11”需替换为上一步中查询到的实际设备ID

​	7.烧录完成后，请拔下Type-C数据线。

### 编译Klipper固件

​	1.SSH连接到CB1/树莓派后，在命令行输入：

​		**cd ~/klipper/**

​		**make menuconfig**

​		使用下面的配置编译固件(如果没有下列选项，请更新Klipper固件源码到最新版本)；

<img src=img/mmb_can_v2_0/mmb_can_v2_0_klipper3.png width="600" />

**[\*] Enable extra low-level configuration optionsMicro-controller**

**Micro-controller Architecture (STMicroelectronics STM32) --->**

**Processor model (STM32G0B1) --->**

如果不使用 Katapult

**Bootloader offset (No bootloader) --->**

如果使用 Katapult:

**Bootloader offset (8KiB bootloader) --->**

如果使用Type-C上的USB通信：

**Communication interface (USB (on PA11/PA12)) --->**

如果使用CANBus通信:

**Communication interface (CAN bus (on PD0/PD1)) --->**

**(1000000) CAN bus speed**

2.配置选择完成后, 输入 `‘q’`退出配置界面，当询问是否保存配置时选择 `“Yes”`.

3.输入`make`编译固件，当`make`执行完成后会在`home/pi/klipper/out`文件夹中生成我们所需要的`“klipper.bin”`固件

### 通过katapult进行固件更新

1.使用CAN bus需要接好CAN bus线缆以及插上120R终端电阻的跳线帽。

2.输入

<font  color="blue">**python3 ~/katapult/scripts/flash_can.py -i can0 -q**</font> 

查询canbus ID （需提前接好CAN线并通电），如下图已找到设备的UUID

<img src=img/mmb_can_v2_0/mmb_can_v2_0_klipper4.png width="600" />

3.输入

python3 ~/katapult/scripts/flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u be69315a613c

替换为实际的UUID，注意：klipper.bin需要提前make生成出来，并且Katapult的Application start offset 为8KiB offset，所以Klipper的menuconfig中Bootloader offset 也要为8KiB bootloader，如下图已经烧录成功。

<img src=img/mmb_can_v2_0/mmb_can_v2_0_klipper5.png width="600" />

4.再次输入

python3 ~/katapult/scripts/flash_can.py -i can0 -q
查询，此时Application由之前的Katapult变为Klipper，代表Klipper已经正常运行

### 通过DFU进行固件更新

树莓派或CB1通过DFU更新：

1、请按住Boot按钮，然后使用Type-C线连接至树莓派/CB1，此时芯片进入DFU模式。

2、在SSH终端命令行中输入。

lsusb

查询 DFU设备ID

<img src=img/mmb_can_v2_0/mmb_can_v2_0_dfu1.png width="600" />

3、输入

cd klipper

跳转到klipper目录下，输入

<font  color="blue">**make flash FLASH_DEVICE=0483:df11**</font> 

开始烧录固件（注意：将0483:df11更换为上一步中查询到的实际的设备ID）

4、固件烧录完成后，输入

<font  color="blue">**ls /dev/serial/by-id/**</font> 

查询设备的Serial ID（只有通过USB通信的方式才会有此ID，CANBus方式忽略此步骤)。

5、如果使用USB通信，第一次烧录完成之后，再次更新时无需手动按Boot按钮进入DFU 模式，可以直接输入

**make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32g0b1xx_4550357128922FC8-if00**

烧录固件（注意：将/dev/serial/by-id/xxx更换为上一步中查询到的实际的ID）。

6、如果使用CAN bus通信，烧录完成后，请拔下Type-C数据线。

### CAN bus 配置

搭配BIGTREETECH U2C 模块使用

<img src=img/MMB_CAN/MMB_CAN_Klipper10.png width="600" />

1、在SSH终端中输入

**sudo nano /etc/network/interfaces.d/can0**

命令,新增以下内容：

**allow-hotplug can0**

**iface can0 can static**

 **bitrate 1000000**

 **up ifconfig $IFACE txqueuelen 1024**

将 CAN bus 速度设置为 1M（必须与固件中设置的速度一致(1000000) CAN bus speed），修改后保存（Ctrl + S）并退出（Ctrl + X），输入
sudo reboot重启树莓派。

2、CANBus上的每个设备都会根据MCU的UID生成一个 canbus_uuid，要查找每个微控制器设备 ID，请确保硬件已通电并正确接线，然后运行:

<font  color="blue">**~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0**</font> 

3、如果检测到未初始化的 CAN 设备，上述命令将报告设备的canbus_uuid:

<font  color="blue">**Found canbus_uuid=0e0d81e4210c**</font> 

4、如果 Klipper 已经正常运行并且连接到此设备，那么canbus_uuid将不会被上报，此为正常现象.

### 配置Klipper

1、在电脑的浏览器中输入树莓派的IP访问，如下图所示的路径中下载名为“sample-bigtreetech-mmb-canbus-v2.0.cfg”的参考配置，如果找不到此文件，请更新Klipper固件源码到最新版本，或者到GitHub下载:

https://github.com/bigtreetech/MMB

<img src=img/MMB_CAN/MMB_CAN_Klipper11.png width="600" />

2、将主板的配置文件上传到Configuration Files中：

<img src=img/MMB_CAN/MMB_CAN_Klipper12.png width="600" />

3、并在“printer.cfg”文件中添加此主板的配置:

[include sample-bigtreetech-mmb-canbus-v2.0.cfg]

4、将配置文件中的ID号修改为主板实际的ID（USB serial 或者 canbus）.

5、按照下方链接的说明配置模块的具体功能: https://www.klipper3d.org/Overview.html
