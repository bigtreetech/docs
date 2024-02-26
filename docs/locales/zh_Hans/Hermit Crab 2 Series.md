# Hermit Crab 2 Series

<img src=img/Hermit_Crab/Hermit_Crab_title.png width="600" />

## **介绍**

HermitCrab2系列专为快速更换工具头而设计。该系列配备了一个固定板和多个工具板，使用户能够根据不同需求迅速切换不同的打印头。2系列更为轻便、更为紧凑，同时具备更强的稳固性。

## **主要特点**（Hermit Crab 2 CAN）

- 主板预留BOOT按键，用户可以通过USB进入DFU模式更新固件
- 热敏电阻部分增设保护电路，避免因加热棒漏电导致主控芯片烧毁
- 预留I2C、RGB等接口，可供客户DIY多种功能使用
- 数控风扇电压可选，增强对风扇类型的兼容性
- USB通电通过跳线帽选择，有效隔离主板DC-DC与USB5V
- 接近开关，2线风扇，4线风扇支持VIN/12V/5V电压选择
- 加热棒及风扇端口增加防反激二极管及保险丝，有效保护MOS管不被反向电压烧毁
- 艾迈斯电源接口，支持更大的电流输入，且增加防反接保护电路，避免出现客户接反电源线烧板的现象
- 支持2线PT100/PT1000/NTC100K选择
- 支持CAN或USB通讯，其中CAN的终端电阻120R可通过跳线帽选择，且预留CAN拓展接口
- USB口设ESD保护芯片，防止主控被USB口静电击穿
- 5V和12V增加E-FUSE保护芯片，大大降低因短路或者打火等故障导致芯片被烧毁的风险
- 增设精度更高的LIS2DW加速度计，方便客户更好的使用共振补偿功能

## 基本参数

|                           | Hermit Crab 2                                               | Hermit Crab 2 CAN                                           |
| ------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| 固件支持                  | Klipper, Marlin, RRF                                        | Klipper                                                     |
| 板载加速度计              | -                                                           | LIS2DW                                                      |
| 板载Max31865              | -                                                           | √                                                           |
| CAN接口                   | -                                                           | XT30                                                        |
| 微处理器                  | -                                                           | RP2040 Dual ARM Cortex-M0+@133MHz                           |
| 材质                      | 铝合金                                                      | 铝合金                                                      |
| 输入电压                  | DC12V-24V                                                   | DC12V-24V                                                   |
| 逻辑电压                  | -                                                           | DC 3.3V                                                     |
| 加热接口                  | 加热棒（HE0），最大输出电流：3A                             | 加热棒（HE0），最大输出电流: 6A                             |
| 风扇接口                  | 2x2线数控风扇（FAN1，FAN2），1x4线风扇（FAN0), 支持电压可选 | 2x2线数控风扇（FAN1，FAN2），1x4线风扇（FAN0), 支持电压可选 |
| 风扇接口最大输<br/>出电流 | 0.75A，峰值0.9A                                             | 0.75A，峰值0.9A                                             |
| 拓展接口                  | RGB, I2C, Probe                                             | I2C，Probe，RGB，USB，CAN，STOP                             |
| 电机驱动                  | -                                                           | TMC2209                                                     |
| 驱动工作模式              | -                                                           | UART                                                        |
| 步进电机接口              | E0                                                          | E0                                                          |
| 温度传感器接口            | -                                                           | 1路NTC100K/PT100/PT1000可选                                 |
| USB通信接口               | -                                                           | USB Type-C                                                  |
| DCDC5V输出最大电流        | 1A                                                          | 1A                                                          |

## 尺寸

<img src=img/Hermit_Crab/Hermit_Crab_Dimension.png width="600" />

<img src=img/Hermit_Crab/Hermit_Crab_Dimension1.png width="600" />

## 外设接口

### Pin脚说明

<img src=img/Hermit_Crab/Hermit_Crab_Pin.png width="600" />

### 接线

**BLTouch 接线**

<img src=img/Hermit_Crab/Hermit_Crab_wiring.png width="600" />

### 风扇电压选择

**四线风扇**

Use jumper to select voltage for VFAN0 between 5V or 12V.

<img src=img/Hermit_Crab/Hermit_Crab_4PinFan.png width="600" />

**两线风扇**

使用跳线帽短接排针，进行风扇电压选择：其中VFAN1支持5V或24V选择，VFAN2支持12V或24V选择。

<img src=img/Hermit_Crab/Hermit_Crab_2PinFan.png width="600" />

### RGB 接线

<img src=img/Hermit_Crab/Hermit_Crab_RGB.png width="600" />

### OctopusPro与HermitCrab2接线

<img src=img/Hermit_Crab/Hermit_Crab_Oct.png width="600" />

## 固件设置（Hermit Crab 2 CAN）

### 烧录KATAPULT

注意：Katapult旨在通过CANbus接口直接更新MCU固件，若您更倾向于使用DFU更新方法，请跳过此步骤。

“树莓派或CB1烧录Katapult”，参考此处说明下载Katapult工程：

https://github.com/Arksine/Katapult

1、输入

​	**cd ~**

​	跳转到主目录，输入

​	git clone https://github.com/Arksine/Katapult

​	下载Katapult工程，然后输入

​	**cd Katapult**

​	跳转到Katapult目录中。

2、输入

​	make menuconfig

​	并按照下图配置

<img src=img/Hermit_Crab/Hermit_Crab_Firmware1.png width="600" />

3、输入make编译固件，当make执行完成后会在home/biqu/Katapult/out文件夹中生成我们所需要的‘katapult.uf2’固件，在SSH软件左侧可以直接下载到电
脑中；

<img src=img/Hermit_Crab/Hermit_Crab_Firmware2.png width="600" />

4、请按住Boot按钮，然后使用Type-C线连接至树莓派/CB1，此时芯片进入DFU模式

5、在SSH终端命令行中输入 lsusb 查询DFU设备ID

<img src=img/Hermit_Crab/Hermit_Crab_Firmware3.png width="600" />

6、请输入以下命令以烧录Katapult

​	**make flash FLASH_DEVICE=2e8a:0003**

​	其中“2e8a:0003”需替换为上一步中查询到的实际设备ID

7、烧录完成后，请拔下Type-C数据线。

### 编译Klipper固件

1、SSH连接到CB1/树莓派后，在命令行输入：

​	**cd ~/klipper/**

​	**make menuconfig**

​	使用下面的配置编译固件(如果没有下列选项，请更新Klipper固件源码到最新版本)；	

<img src=img/Hermit_Crab/Hermit_Crab_Firmware4.png width="600" />

​	**[*] Enable extra low-level configuration options Micro-controller** 

​	**Architecture (Raspberry Pi RP2040) --->**

​	如果不使用Katapult:

​		**Bootloader offset (No bootloader) --->**

​		**Flash chip (W25Q080 with CLKDIV 2) --->**

​	如果使用Katapult:

​		**Bootloader offset (16KiB bootloader) --->**

​	如果使用Type-C上的USB通信：

​		**Communication interface (USB) --->**

​	如果使用CANBus通信：

​		**Communication interface (CAN bus) --->** 

​		**(4) CAN RX gpio number**

​		**(5) CAN TX gpio number**

​		**(1000000) CAN bus speed**

2、配置选择完成后,输入‘q’退出配置界面，当询问是否保存配置时选择“Yes”；

3、输入make编译固件，当make执行完成后会在home/pi/klipper/out文件夹中生成我们所需要的‘klipper.bin’固件，在SSH软件左侧可以直接下载到电脑中

<img src=img/Hermit_Crab/Hermit_Crab_Firmware5.png width="600" />

### 通过KATAPULT进行固件更新

1、使用CANbus需要接好CANbus线缆以及插上120R终端电阻的跳线帽。

2、输入

```
cd ~/Katapult/scripts
```

​	然后输入

```
python3 flash_can.py -i can0 -q
```

​	查询canbusID（需提前接好CAN线并通电），如下图已找到设备的UUID

<img src=img/Hermit_Crab/Hermit_Crab_Firmware6.png width="600" />

3、输入

```
python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u be69315a613c
```

替换为实际的UUID，注意：klipper.bin需要提前make生成出来，并且Katapult的Applicationstartoffset为16KiBoffset，所以Klipper的menuconfig中Bootloaderoffset也要为16KiBbootloader，如下图已经烧录成功。

<img src=img/Hermit_Crab/Hermit_Crab_Firmware7.png width="600" />

4、再次输入

```
python3 flash_can.py -i can0 -q
```

查询，此时Application由之前的Katapult变为Klipper，代表Klipper已经正常运行

<img src=img/Hermit_Crab/Hermit_Crab_Firmware8.png width="600" />

### 通过DFU进行固件更新

树莓派或CB1通过DFU更新：

1、请按住Boot按钮，然后使用Type-C线连接至树莓派/CB1，此时芯片进入DFU模式。

2、在SSH终端命令行中输入 lsusb 查询DFU设备ID

<img src=img/Hermit_Crab/Hermit_Crab_Firmware9.png width="600" />

3、输入 cdklipper 跳转到klipper目录下，输入

```
make flash FLASH_DEVICE=2e8a:0003
```

开始烧录固件（注意：将2e8a:0003更换为上一步中查询到的实际的设备ID）

4、固件烧录完成后，输入

```
ls/dev/serial/by-id/ 
```

查询设备的SerialID（只有通过USB通信的方式才会有此ID，CANBus方式忽略此步骤)。

5、如果使用USB通信，第一次烧录完成之后，再次更新时无需手动按Boot按钮进入DFU模式，可以直接输入

```
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_4550357128922FC8-if00
```

烧录固件（注意：将/dev/serial/by-id/xxx更换为上一步中查询到的实际的ID）。

6、如果使用CANbus通信，烧录完成后，请拔下Type-C数据线。

### CANbus配置

搭配BIGTREETECHU2C模块使用：

<img src=img/Hermit_Crab/Hermit_Crab_Can1.png width="600" />

1、在SSH终端中输入

```
sudo nano /etc/network/interfaces.d/can0
```

命令,新增以下内容：

```
allow-hotplug can0
iface can0 can static
    bitrate 1000000
    up ifconfig $IFACE txqueuelen 1024
```

将CANbus速度设置为1M（必须与固件中设置的速度一致(1000000) CANbus speed），修改后保存（Ctrl+S）并退出（Ctrl+X），输入

```
sudo reboot
```

重启树莓派。

2、CANBus上的每个设备都会根据MCU的UID生成一个canbus_uuid，要查找每个微控制器设备ID，请确保硬件已通电并正确接线，然后运行：

```
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
```

3、如果检测到未初始化的CAN设备，上述命令将报告设备的canbus_uuid:

```
Found canbus_uuid=0e0d81e4210c
```

4、如果Klipper已经正常运行并且连接到此设备，那么canbus_uuid将不会被上报，此为正常现象。

### 配置Klipper

1、在电脑的浏览器中输入树莓派的IP访问，如下图所示的路径中下载名为“sample-bigtreetech-hermit-crab-2-canbus.cfg”的参考配置，如果找不到此
文件，请更新Klipepr固件源码到最新版本，或者到GitHub下载：

GitHub: https://github.com/bigtreetech/HermitCrab

<img src=img/Hermit_Crab/Hermit_Crab_Klipper1.png width="600" />

2、将主板的配置文件上传到ConfigurationFiles中：

<img src=img/Hermit_Crab/Hermit_Crab_Klipper2.png width="600" />

3、并在“printer.cfg”文件中添加此主板的配置:

**[include sample-bigtreetech-hermit-crab-2-canbus.cfg]**

4、将配置文件中的ID号修改为主板实际的ID（USBserial或者canbus）

5、按照下方链接的说明配置模块的具体功能：

https://www.klipper3d.org/Overview.html

## 注意事项

1、使用CAN通讯时，需要看是否用作终端，如果是终端，必须将120R位置插上跳线帽；

2、 接线时需注意线序，对照Pin图进行DIY，避免电源线接反或者接到CAN信号中去，导致模块烧毁；

3、通过USB端口烧录程序时，如果未外接电源，需将VUSB使用跳线帽短接，以便给模块提供工作电压；

4、加热棒及风扇接口负载电流不得大于最大承受电流，以防烧坏MOS管。

## FAQ

**问：加热棒、风扇端口的最大电流**

答：加热棒端口最大输出电流：6A

风扇接口最大输出电流：1A，峰值1.5A

加热棒+驱动+风扇的总电流需小于9A。

**问：USB接口无法更新固件**

答：确保VUSB跳线帽有插入，主板上的电源指示灯正常亮起。
