# MMB Cubic V1.0

<img src=img/MMB_Cubic/MMB_Cubic_Title.png width="600" />

## **产品简介**

BIGTREETECH MMB Cubic 是针对 MMB 板子做的拓展板，上面集成了一些 MMB 板子上面没有的功能，可以和 MMB 板子通过 CAN 和 USB 通讯，增加了客户的选择。

## **产品特点**

- 主控芯片：采用 32 位主频 133 MHz 的 ARM Cortex-M0+ RP2040 主控芯片
- 电源芯片：采用 LN5016-1.5A，支持 24V（MAX:36V）电源输入,该芯片输出电流最大可达 1.5A。
- 主板预留 BOOT 按键，用户可以通过 DFU 方式更新主板引导程序；
- 增加热敏电阻部分的保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁；
- 数控风扇 24V、12V、5V 电压可选，省去客户外接变压模块的操作，从而减少主板损坏几率；
- 可通过 USB 接电脑进 DFU，也可通过 Klipper 的 make flash 命令通过 DFU 更新 MCU 固件；
- 采用高性能 MOSFET 管，减少发热量；
- 采用可更换的保险丝，方便更换；

## **产品参数**

| 外观尺寸              | 60mm x 60mm                                                  |
| --------------------- | ------------------------------------------------------------ |
| 微处理器              | ARM Cortex-M0+ RP2040 133 MHz                                |
| 主板输入电压          | DCIN=DC24V-DC36V                                             |
| 热床输入电压          | VBED DC24V                                                   |
| 逻辑电压              | DC3.3V                                                       |
| 加热接口              | 热床（VBED）、加热棒（HE）                                   |
| 热床端口最大输出电流  | 10A                                                          |
| 加热棒端口功率        | 120W（24V 5A）                                               |
| 风扇接口              | 3 路两线数控风扇（FAN0，FAN1，FAN2）                         |
| 风扇接口最大输出电流  | 总和：1A，峰值 1.5A                                          |
| 加热棒 +风扇的总电流  | 最大 10A                                                     |
| 主板 5V 输出最大电流  | 峰值 1.5A                                                    |
| 主板 12V 输出最大电流 | 峰值 1.5A                                                    |
| 拓展接口              | Probe（Servos、Probe）、RGB、CAN、THx3（NTC100K）、5V-TYPE-C 供电接口等 |

## **产品尺寸**

<img src=img/MMB_Cubic/MMB_Cubic_Dimension.png width="600" />

## **外设接口**

### **接口示意图**

<img src=img/MMB_Cubic/MMB_Cubic_Interface.png width="600" />

### **Pin 脚说明**

<img src=img/MMB_Cubic/MMB_Cubic_Pin.png width="600" />

## **接口介绍**

### **USB 供电**

使用 USB 供电需要短接 USB-5V 排针，供电正常 3.3V 的灯会亮。

<img src=img/MMB_Cubic/MMB_Cubic_Introduction1.png width="600" />

### **数控风扇的电压选择**

通过跳帽来设置输出电压为 5V，12V 或是 24V。

<font  color="red">注意：选择电压前请确认清楚风扇支持的电压为哪一档，因为选错导致的风扇烧毁，我司不与承责。</font>

<img src=img/MMB_Cubic/MMB_Cubic_Introduction2.png width="600" />

### **测温接口**

这 3 个接口默认接 NTC100K。

<img src=img/MMB_Cubic/MMB_Cubic_Introduction3.png width="600" />

### **RGB 接口**

<img src=img/MMB_Cubic/MMB_Cubic_Introduction4.png width="600" />

### **CAN 接口**

<font  color="red">如果板子作为 CAN 链的末端，应该接上 CAN-120R。</font>

<img src=img/MMB_Cubic/MMB_Cubic_Introduction5.png width="600" />

### **PROBE 接口**

<img src=img/MMB_Cubic/MMB_Cubic_Introduction6.png width="600" />

### **加热棒接口**

<font  color="red">注意：加热棒接口的电压和输入电压是一样的，输入如果接 36V，那就需要看加热棒是否支持 36V 输入。</font>

<img src=img/MMB_Cubic/MMB_Cubic_Introduction7.png width="600" />

### 热床接口

<font  color="red">注意：热床接口的电压和输入电压是一样的，输入如果接 36V，那就需要看热床是否支持36V 输入。</font>

<img src=img/MMB_Cubic/MMB_Cubic_Introduction8.png width="600" />

## **Klipper 固件**

### **烧录 Katapult(Canboot)**

注意：Katapult 旨在通过 CAN bus 接口直接更新 MCU 固件，若您更倾向于使用 DFU 

更新方法，请跳过此步骤。

\1. 输入

​	**cd ~**

​	跳转到主目录，输入

​	**git clone** **https://github.com/Arksine/katapult**

​	下载 katapult 工程，然后输入

​	**cd katapult**

​	跳转到 katapult 目录中。

\2. 输入

​	**make menuconfig**

​	并按照下图配置

<img src=img/rp2040_katapult_menuconfig.png width="600"/>

\3)输入 **make** 编译固件，当 **make** 执行完成后会在 **home/biqu/katapult/out** 文件夹中生成我们所需要的“**katapult.uf2**”固件，在 SSH 软件左侧可以直接下载到电脑中；

<img src=img/MMB_Cubic/MMB_Cubic_Klipper2.png width="600" />

\4) 请按住 **Boot** 按钮，然后使用 Type-C 线连接至树莓派/CB1，此时芯片进入 DFU 模式

\5) 在 SSH 终端命令行中输入 **lsusb** 查询 DFU 设备 ID

<img src=img/MMB_Cubic/MMB_Cubic_Klipper3.png width="600" />

\6) 请输入以下命令以烧录 katapult

​	**make flash FLASH_DEVICE=2e8a:0003**

​	其中“**2e8a:0003**”需替换为上一步中查询到的实际设备 ID

\7) 烧录完成后，请拔下 Type-C 数据线。

### **编译 Klipper 固件**

**1.**SSH 连接到 CB1/树莓派后，在命令行输入：

​	**cd ~/klipper/** 

​	**make menuconfig**

​	使用下面的配置编译固件(如果没有下列选项，请更新 Klipper 固件源码到最新版本)；

<img src=img/rp2040_canbus_menuconfig.png width="600" />

​	**[\*] Enable extra low-level configuration options**

​	 **Micro-controller Architecture (Raspberry Pi RP2040/RP235x)  --->**

​	 **Processor model (rp2040)  --->**

​	如果不使用 katapult 

​	 **Bootloader offset (No bootloader) --->**

​	如果使用 katapult

​	 **Bootloader offset (16KiB bootloader) --->**

​	 **Flash chip (GENERIC_03H with CLKDIV 4)  --->**

​	如果使用 CAN bus 通信

​	 **Communication Interface (CAN bus) --->**

​	**(4) CAN RX gpio number**

​	**(5) CAN TX gpio number**

​	**(1000000) CAN bus speed**

​	如果使用 USB 通信

​	 **Communication Interface (USBSERIAL) --->**

\2. 配置选择完成后, 输入 ‘**q**’退出配置界面，当询问是否保存配置时选择“**Yes**”；

\3. 输入 **make** 编译固件，当 **make** 执行完成后会在 **home/biqu/klipper/out** 文件夹中生成我们所需要的**“klipper.bin”**固件

### **通过 katapult 进行固件更新**

\1. 使用 CAN bus 需要接好 CAN bus 线缆以及插上 120R 终端电阻的跳线帽。

\2. **输入**

**~/Katapult/scripts**

然后输入

**python3 flash_can.py -i can0 -q**

查询 canbus ID （需提前接好 CAN 线并通电），如下图已找到设备的 UUID

<img src=img/MMB_Cubic/MMB_Cubic_Klipper5.png width="600" />

\3. 输入

**python3 flash_can.py -i can0 -f ~/klipper/out/klipper.bin -u be69315a613c**

替换为实际的 UUID，注意：**klipper.bin** 需要提前 **make** 生成出来，并且

**katapult** 的 **Application start offset** 为 **16KiB offset**，所以 **Klipper** 的

**menuconfig** 中 **Bootloader offset** 也要为 16**KiB bootloader**，如下图已经烧录成功。

<img src=img/MMB_Cubic/MMB_Cubic_Klipper6.png width="600" />

\4. 再次输入

**python3 flash_can.py -i can0 -q**

查询，此时 **Application** 由之前的 **Katapult** 变为 **Klipper**，代表 Klipper 已经正常运行

<img src=img/MMB_Cubic/MMB_Cubic_Klipper7.png width="600" />

### **通过 DFU 进行固件更新**

树莓派或 CB1 通过 DFU 更新

\1. 请按住 **Boot** 按钮，然后使用 Type-C 线连接至树莓派/CB1，此时芯片进入 DFU 模式

\2. 在 SSH 终端命令行中输入**lsusb**查询 DFU 设备 ID

<img src=img/MMB_Cubic/MMB_Cubic_Klipper8.png width="600" />

\3. 输入

**cd klipper** 

跳转到 klipper 目录下，输入

**make flash FLASH_DEVICE=2e8a:0003**

开始烧录固件（注意：将 **2e8a:0003** 更换为上一步中查询到的实际的设备 ID）

\5. 固件烧录完成后，输入

**ls /dev/serial/by-id/**

查询设备的 Serial ID（只有通过 USB 通信的方式才会有此 ID，CANBus 方式忽略此步骤)。

\6. 如果使用 USB 通信，第一次烧录完成之后，再次更新时无需手动按 Boot按钮进入 DFU 模式，可以直接输入

**make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_rp2040_mmb_cubic-if00** 烧录固件（注意：将**/dev/serial/by-id/xxx** 更换为上一步中查询到的实际的ID）。

\7. 如果使用 CAN bus 通信，烧录完成后，S 请拔下 Type-C 数据线。

### **CAN bus 配置**

搭配 BIGTREETECH U2C 模块使用

<img src=img/MMB_Cubic/MMB_Cubic_Klipper9.png width="600" />

(1) 在 SSH 终端中输入

**sudo nano /etc/network/interfaces.d/can0**

命令,新增以下内容

**allow-hotplug can0**

**iface can0 can static**

 **bitrate 1000000**

 **up ifconfig $IFACE txqueuelen 1024**

将 CAN bus 速度设置为 **1M**（必须与固件中设置的速度一致(**1000000**) CAN bus speed），修改后保存（Ctrl + S）并退出（Ctrl + X），输入

**sudo reboot**

重启树莓派。

(2) CANBus 上的每个设备都会根据 MCU 的 UID 生成一个 canbus_uuid，要查找每个微控制器设备 ID，请确保硬件已通电并正确接线，然后运行：

**~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0**

(3) 如果检测到未初始化的 CAN 设备，上述命令将报告设备的 canbus_uuid

**Found canbus_uuid=0e0d81e4210c**

(4) 如果 Klipper 已经正常运行并且连接到此设备，那么 canbus_uuid 将不会被上报，此为正常现象。

### **配置 Klipper**

\1.在电脑的浏览器中输入树莓派的 IP 访问，如下图所示的路径中下载名为“**sample-bigtreetech-mmb-cubic.cfg**”的参考配置，如果找不到此文件，请更新 Klipepr 固件源码到最新版本，或者到 GitHub 下载：

https://github.com/bigtreetech/MMB-Cubic

<img src=img/MMB_Cubic/MMB_Cubic_Klipper10.png width="600" />

\2. 将主板的配置文件上传到 Configuration Files 中.

<img src=img/MMB_Cubic/MMB_Cubic_Klipper11.png width="600" />

\3. 并在“printer.cfg”文件中添加此主板的配置:

**[include sample-bigtreetech-mmb-cubic.cfg]**

\4. 将配置文件中的 ID 号修改为主板实际的 ID（USB serial 或者 canbus）。

\5. 按照下方链接的说明配置模块的具体功能:https://www.klipper3d.org/Overview.html

## **注意事项**

- 个风扇接口在接 24V 供电电压的时候单个可以达到 1A；如果接 12V 或 5V 的供电电压的时候，3 个加一起最大只能 1.5A。
- 测温接口默认只能接 NTC100K，如果想要接 PT1000 的话需要加 4.12K 电阻。（下面红框位置）

<img src=img/MMB_Cubic/MMB_Cubic_Klipper12.png width="600" />
