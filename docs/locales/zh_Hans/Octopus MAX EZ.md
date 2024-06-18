# Octopus MAX EZ

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Title.png width="600"/>

## **产品简介**

BIGTREETECHOctopusMAXEZ主板是必趣创新科技（深圳）有限公司3D打印团队针对Octopus Pro优化升级的32位打印机主板，采用自主研发的步进电机驱动座子，增强安全性及用户体验，新增一系列OctopusPro不具有的功能，加大DIY可能性。

## **功能亮点**

- 采用32位主频550MHz的ARMCortex-M7系列STM32H723ZET6主控芯片；

- 主板预留BOOT按键，用户可以通过DFU方式更新主板引导程序；

- 增加热敏电阻部分的保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁；

- 数控风扇24V、12V、5V电压可选，省去客户外接变压模块的操作，从而减少主板损坏几率；

- 增加E-FUSE保护，反应速度快，保护力强，有效避免因为短路、过流、打火等情况造成主板烧毁；

- 可通过SD卡升级MCU固件，也可通过Klipper的makeflash命令通过DFU更新MCU固件；

- 使用十轴EZ驱动插座，避免手指被针扎破；板载TMC驱动的SPI和UART工作模式，只需通过固件设置即可使用；

- 支持断料检测、断电续打、CAN、打完关机、BLTouch、RGB灯等功能；

- 采用可更换的保险丝，方便更换；

- 预留三路四线风扇接口，且可用于连接水冷装置；

- 预留接近开关接口，支持NPN和PNP型选择，（24V，12V，5V）电压可选；

- 预留SPI拓展接口，供使用Klipper固件的客户外接加速度传感器来进行加速度补偿；


## **规格**

| **外观尺寸**                      | **160mm x 100mm 详情请参考： BIGTREETECH Octopus MAX EZ V1.0-SIZE.pdf** |
| :-------------------------------- | ------------------------------------------------------------ |
| **安装尺寸**                      | **见BIGTREETECHOctopusMAXEZV1.0-SIZE.pdf**                   |
| **微处理器**                      | **ARMCortex-M7STM32H723ZET6550MHz**                          |
| **驱动输入电压**                  | **24V，HV(≤56V)可选**                                        |
| **主板输入电压**                  | **VIN = DC12V或DC24V**                                       |
| **热床输入电压**                  | **BED IN = DC12V或DC24V**                                    |
| **逻辑电压**                      | **DC 3.3V**                                                  |
| **加热接口**                      | **热床（HB）、加热棒（HE0，HE1，HE2，，HE3）**               |
| **热床端口最大输出<br/>电流**     | **10A，峰值12A**                                             |
| **加热棒端口最大输<br/>出电流**   | **5.5A，峰值6A**                                             |
| **风扇接口**                      | **两线数控风扇（FAN0，FAN1，FAN2，FAN3），<br/>四线数控风扇（FAN4，FAN5，FAN6），<br/>常开风扇（24VFANx2），<br/>其中数控风扇和MFAN电压（5V，12V，24V）可选；** |
| **风扇接口最大输出<br/>电流**     | **1A，峰值1.5A**                                             |
| **加热棒+驱动+<br/>风扇的总电流** | **＜12A**                                                    |
| **拓展接口**                      | **BLTouch（Servos、Probe）、PS-ON、FWS、PWRDET、<br/>RGB*2、SPI、IND-Probe、CAN、WIFI、TFT** |
| **电机驱动**                      | **支持EZ5160、EZ2209、EZ2225、EZ2226、EZ2208、EZ2130等**     |
| **驱动工作模式支持**              | **SPI, UART**                                                |
| **电机驱动接口**                  | **Motor1，Motor2，Motor3（双电机接口），Motor4，<br/>Motor5，Motor6，Motor7，Motor8，Motor9，Motor10<br/>总共10路** |
| **温度传感器接口**                | **5路100KNTC，其中4路为NTC与PT1000可选端口**                 |
| **显示屏**                        | **MINI12864（FPC连接）、TFT串口屏**                          |
| **PC通信接口**                    | **Type-C，方便插拔**                                         |
| **支持机器结构**                  | **Cartesian, Delta, Kossel, Ultimaker, CoreXY**              |
| **推荐软件**                      | **Cura, Simplify3D, Pronterface, Repetier-host, Makerware**  |

## **尺寸**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Dimensions.png width="600"/>

## 外设接口

**接口示意图**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Pinout_CN.png width="600"/>

## Pin脚说明

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Pinout.png width="600"/>

## **硬件配置**

### USB供电

OctopusMAXEZ主板上电之后，MCU左侧的D32红灯会亮起，表示供电正常。板子中部的VUSB是电源选择端，仅当使用USB给主板供电或需通过USB向外供电时，才需要使用跳帽将它短接。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware1.png width="600"/>

### 步进电机驱动

**驱动模式支持（UART、SPI）**

通过固件直接设置，无需手动跳线帽选择。

**TMC驱动的DIAG(SensorlessHoming)**

如图示位置，使用SensorlessHoming功能时就插上跳帽，不使用则不插，无需剪断驱动的DIAG引脚。（Motor1-Motor6）

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware2.png width="600"/>

**驱动电压选择**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware3.png width="600"/>

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware4.png width="600"/>

### 数控风扇的电压选择

通过跳帽来设置输出电压为5V，12V或是24V。 **<font  color="red">(其中MFAN与FAN6共用电源VFAN6). </font>**

**<font  color="red">注意：选择电压前请确认风扇支持的电压为哪一档，因选错导致的风扇烧毁，我司不与承责。 </font>**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware5.png width="600"/>

### **100KNTC或PT1000设置**

使用100KNTC热敏电阻时，无需插入跳线帽，此时TH0-TH3的上拉电阻为4.7K0.1%。使用PT1000时，需使用跳帽短接下图红框中的两Pin,并联了4.12K0.1%电阻，此时TH0-TH1的上拉电阻为2.2K。

**<font  color="red">(注意：此种方式读出的温度精度会比MAX31865差很多。)</font>**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware6.png width="600"/>

### **BLTouch 接线**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware7.png width="600"/>

### 打完关机模块(RelayV1.2)接线

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware8.png width="600"/>

### 与MINI12864屏和TFT屏的接线

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware9.png width="600"/>

### RGB 接线

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware10.png width="600"/>

### 断料检测 接线

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware11.png width="600"/>

### 接近开关的连接

常开（NPN型），不用通过跳线帽短接，如下图24V为例：

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware12.png width="600"/>

常闭（PNP型），需要将跳线帽短接，如下图24V为例：

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware13.png width="600"/>

### 四线数控风扇及水冷装置的连接

(下图以12V为例:)

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Hardware14.png width="600"/>

## 软件安装

### Marlin

#### 安装编译环境

[https://github.com/bigtreetech/Document/blob/master/How%20to%20install%20VScode%2BPlatformio.md](https://github.com/bigtreetech/Document/blob/master/How to install VScode%2BPlatformio.md)

https://marlinfw.org/docs/basics/install_platformio_vscode.html

参考这两个链接的说明安装VSCode以及PlatformIO插件（国内的用户在线安装PlatformIO插件可能会很慢）

#### 下载Marlin固件

1.从Marlin官网下载最新版本的bugfix版本的固件: https://github.com/MarlinFirmware/Marlin/tree/bugfix-2.0.x

2.从我们GitHub上下载预先配置好编译环境和主板类型的固件: https://github.com/bigtreetech/BIGTREETECH-OCTOPUS-Max-EZ

#### 配置固件

**打开Marlin工程**

您可以通过以下几种方式之一在VSCode中打开Marlin：

- **将下载的MarlinFirmware文件夹拖到VSCode应用程序图标上；**
- **使用VSCodeFile菜单中的Open...命令；**
- **打开PIOHome选项卡，然后单击OpenProject按钮；**

配置编译环境

打开platformio.ini文件并将default_envs修改为STM32H723Zx_btt

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software1.png width="600"/>

**配置主板类型、串口号**

**设置主板类型MOTHERBOARD为BOARD_BTT_OCTOPUS_MAX_EZ**

\#define MOTHERBOARD BOARD_BTT_OCTOPUS_MAX_EZ

\#define SERIAL_PORT 3      (启用TFT串口)

\#define BAUDRATE 115200   (设置波特率，注意要跟通信的设备一致)

\#define SERIAL_PORT_2 -1  (启用USB模拟串口)

\#define SERIAL_PORT_3 7   (启用WIFI的串口) 

以上的设置根据需求自行启用

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software2.png width="600"/>

#### 配置电机驱动

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software3.png width="600"/>

如果使用的驱动为SPI模式，还需在Configuration_adv.h文件中使能TMC_USE_SW_SPI

\#define TMC_USE_SW_SPI

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software4.png width="600"/>

#### Sensorless Homing

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software5.png width="600"/>

\#define SENSORLESS_HOMING	//打开驱动堵转检测作为Home限位开关的功能

\#define xx_STALL_SENSITIVITY 8	//设置堵转检测的灵敏度。TMC2209范围为0~255，数值越大越灵敏，容易误触发，现象为Home的时候轴还没有回到原点就停下来了，数值越小越不灵敏容易不触发，现象为归零时一直撞轴发出“噔噔噔”的声音。其他驱动范围为63~-64，数值越小越灵敏

#defineIMPROVE_HOMING_RELIABILITY	//可以在上面单独设置归零时的电流参数(X_CURRENT_HOME)，以便得到最好的归零效果

\#define IMPROVE_HOMING_RELIABILITY	//可以在上面单独设置归零时的电流参数(xx_CURRENT_HOME)，以便得到最好的归零效果

#### 100KNTC或PT1000

通过跳帽设置热敏电阻的上拉电阻为4.7K（搭配100KNTC）或是2.2K（搭配PT1000）,Marlin固件中1代表100KNTC+4.7K上拉电阻，1022代表PT1000+2.2K上拉电阻**<font  color="red"> (注意：此种方式读出的温度精度会比MAX31865差很多)</font>**

\#define TEMP_SENSOR_0 1

\#define TEMP_SENSOR_1 1

\#define TEMP_SENSOR_BED 1

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software6.png width="600"/>

#### BLTouch

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software7.png width="600"/>

//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN	//不把Z_PROBE_PIN重映射到Z_MIN端口上

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software8.png width="600"/>

\#define BLTOUCH	// 使能BLtouch功能

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software9.png width="600"/>

\#define NOZZLE_TO_PROBE_OFFSET { -40, -10, -2.85 } // 设置BLTouch探针相对于喷嘴的偏移量

\#define PROBING_MARGIN 10	// 设置调平探测点到最边缘的距离

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software10.png width="600"/>

\#define AUTO_BED_LEVELING_BILINEAR // 设置调平策略

\#define RESTORE_LEVELING_AFTER_G28 	// Home之后自动重新加载调平补偿

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software11.png width="600"/>

\#define GRID_MAX_POINTS_X 5	// 设置调平探测的点数，X轴探测5个点

\#define GRID_MAX_POINTS_Y GRID_MAX_POINTS_X	// Y轴探测5个点

如果想用BLTouch作为Z轴限位开关，不需要更改接线，只需要修改固件的设置即可

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software12.png width="600"/>

\#define USE_PROBE_FOR_Z_HOMING	//使用ZProbe(BLTouch)作为Z轴Home限位开关

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software13.png width="600"/>

\#define Z_SAFE_HOMING	// Z轴Home时，将X、Y移动到指定的坐标(通常是平台中心)，保证Z轴Home时，ZProbe(BLtouch)的探针在平台的范围内

#### 打完关机模块(RelayV1.2)

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software14.png width="600"/>

\#define PSU_CONTROL	// 打开控制电源功能，可以通过M80开机、M81关机

\#define PSU_ACTIVE_STATE HIGH	// 设置开机的电平，RelayV1.2模块是高电平开机低电平关机，所以需要设置为HIGH

#### **断电续打**

断电续打目前有两种实现方式

1、无需外接模块，固件定期向SD卡中保存打印状态，断电重启后从SD卡中保存的点继续打印，这种方式的缺点就是会向SD卡中频繁的写入数据，非常影响SD卡的使用寿命 。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software15.png width="600"/>

\#define POWER_LOSS_RECOVERY	// 使能断电续打功能

\#define PLR_ENABLED_DEFAULT  true	// true默认使用开启断电续打

2、外接UPS24VV1.0模块，断电时给主板提供电源并给主板发送信号，提醒主板保存打印状态，这方式只会在断电时向SD卡写入数据，对SD卡的使用寿命几乎没有影响。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software16.png width="600"/>

\#define POWER_LOSS_RECOVERY	// 使能断电续打功能

\#define PLR_ENABLED_DEFAULT true	// true默认使用开启断电续打

\#define POWER_LOSS_ZRAISE  10	// 断电时喷头抬升10mm避免喷头烫坏模型

\#define POWER_LOSS_STATE HIGH	// 断电时模块反馈的电平，UPS24VV1.0正常工作时反馈低电平，断电时反馈高电平，所以设置为HIGH

#### **RGB**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software17.png width="600"/>

\#define NEOPIXEL_LED	// 使能Neopixel功能

\#define NEOPIXEL_TYPE  NEO_GRB	// 设置彩灯的类型

//#define NEOPIXEL_PIN  4	// 屏蔽PIN设置，使用主板pin文件中正确的信号线

\#define NEOPIXEL_PIXELS 30	// 彩灯的数量

\#define NEOPIXEL_STARTUP_TEST	// 开机时会依次显示红绿蓝三种颜色便于测试

如果启用了LCD2004、12864、mini12864之类的显示器，还可以在界面上启用RGB的控制菜单。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software18.png width="600"/>

\#define LED_CONTROL_MENU	// 在屏幕上添加控制LED颜色的菜单

#### 断料检测

普通的断料检测模块一般是由机械开关设计而成的，模块给主板一个恒定的高低电平代表耗材的状态

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software19.png width="600"/>

\#define FILAMENT_RUNOUT_SENSOR	//使能耗材检测的功能

\#define FIL_RUNOUT_ENABLED_DEFAULT true	// true默认是打开的状态

\#define NUM_RUNOUT_SENSORS  1  // 耗材检测传感器的数量

\#define FIL_RUNOUT_STATE   LOW	// 耗材异常时的电平状态，根据模块实际情况设置，如果耗材异常时模块发出低电平就设置为LOW。

#### 智能耗材检测(SFSV1.0)

智能耗材检测模块在耗材正常通过时会不断的发出跳变的电平信号，当堵料/断料等异常情况出现，耗材无法正常的通过SFS，模块就无法发出跳变的信号给主板，主板从而得知耗材异常。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software20.png width="600"/>

\#define FILAMENT_MOTION_SENSOR	// 设置耗材传感器为编码器类型

\#define FILAMENT_RUNOUT_DISTANCE_MM 7	// 设置检测灵敏度，SFSV1.0推荐设置为7mm，耗材7mm内如果没有电平跳变就意味着耗材异常

耗材检测还需要通过以下两个地方来设置耗材异常暂停后的动作。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software21.png width="600"/>

\#define NOZZLE_PARK_FEATURE	// 喷头暂停功能

\#define NOZZLE_PARK_POINT { (X_MIN_POS + 10), (Y_MAX_POS - 10), 20 }	// 设置喷头暂停时的X、Y的坐标以及Z轴抬升的高度

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software22.png width="600"/>

\#define ADVANCED_PAUSE_FEATURE	// 可以设置暂停时耗材回抽的长度及速度，继续打印后耗材挤出的长度和速度等参数

#### **ESP3D**

Marlin中只需设置正确的“SERIAL_PORT”和“BAUDRATE”即可。主板上ESP8266与Marlin通信的串口是UART3,所以将SERIAL_PORT设置为3。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software23.png width="600"/>

可以在https://github.com/luc-github/ESP3D中获取最新的ESP3D固件，编译出您自己的二进制文件，将其重命名为“esp3d.bin”然后复制到SD卡的根目录中，插到主板上然后Reset，主板中的引导程序会自动将esp3d.bin更新到ESP8266中，更新完成后文件会被重命名为“ESP3D.CUR”

#### 编译固件

1、点击底部状态栏中的“√”编译固件。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software24.png width="600"/>

2、编译完成后会生成“firmware.bin”文件，复制到SD卡中即可更新固件。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software25.png width="600"/>

### **Klipper**

#### 准备工作

#### **下载系统镜像**

下载内置你喜欢的WebUI的系统镜像，目前主流的有Fluidd、Mainsail等

内置Fluidd的系统: https://github.com/fluidd-core/FluiddPI/releases 

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software26.png width="600"/>

内置Mainsail的系统: https://github.com/mainsail-crew/MainsailOS/releases 

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software27.png width="600"/>

或者参考Klipper官方的安装说明使用Octoprint

#### **下载并安装RaspberryPiImager**

下载并安装树莓派官方的烧录软件 https://www.raspberrypi.com/software/

#### 烧录镜像

1、将microSD卡通过读卡器插入到电脑。

2、选择系统。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software28.png width="600"/>

3、选择“用户自定义”，然后选择下载到电脑中的镜像。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software29.png width="600"/>

4、选择待烧录的microSD卡（烧录镜像会将microSD卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录”。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software30.png width="600"/>

5、等待烧录完成。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software31.png width="600"/>

#### 设置WIFI

注意：如果使用网线端口而不是WIFI，可以跳过此步

1、重新拔插一下读卡器

2、在SD卡的boot盘中找到“fluiddpi-wpa-supplicant.txt”或者“mainsail-wpa-supplicant.txt”文件，用VSCode打开（不要用windows自带的记事本打开）

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software32.png width="600"/>

3、删除红框中四行行首的‘#’字符，然后设置正确的WIFI名称和密码后保存。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software33.png width="600"/>

#### SSH软件连接树莓派

1、安装ssh软件Mobaxterm: https://mobaxterm.mobatek.net/download-home-edition.html 

2、将SD卡插到树莓派，通电后等待系统启动，大概1~2分钟。

3、树莓派连上WIFI或者插上网线后，会被自动分配一个IP。

4、进入路由器管理界面找到树莓派的IP。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software34.png width="600"/>

5、或者使用https://angryip.org/工具，扫描当前局域网下的所有IP地址，并使用主机名重新排序，找到主机名为Fluidd或者Mainsail的设备，如下图所示。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software35.png width="600"/>

6、打开已经安装的Mobaxterm软件，点击“Session”，在弹出的窗口中点击“SSH”，在Remotehost一栏中输入树莓派的IP地址，点击“OK”（注意：电脑和树莓派必须要在同一个局域网下）。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software36.png width="600"/>

7、输入登录名loginas：pi登录密码：raspberry进入SSH终端界面

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software37.png width="600"/>

#### 编译固件

1、ssh连接到树莓派后，在命令行输入：
**cd ~/klipper/**
**make menuconfig**
使用下面的配置编译固件(如果没有下列选项，请更新Klipper固件源码到最新版本)。
*** [\*] Enable extra low-level configuration options****
***** Micro-controller Architecture (STMicroelectronics STM32)  --->****
***** Processor model (STM32H723)  --->****
***** Bootloader offset (128KiB bootloader (SKR SE BX v2.0))  --->****
***** Clock Reference (25 MHz crystal)  --->****
***** Communication interface (USB (on PA11/PA12))  --->**

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software38.png width="600"/>

2、配置选择完成后,输入`q`退出配置界面，当询问是否保存配置是选择"Yes"

3、输入make编译固件，当make执行完成后会在树莓派的home/pi/klipper/out文件夹中生成我们所需要的`klipper.bin`固件，在ssh软件左侧可以直接下载到电脑中。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software39.png width="600"/>

4、将klipper.bin重命名为“firmware.bin”，复制到SD卡中即可更新固件。

5、在命令行输入：ls/dev/serial/by-id/查询主板的ID来确认固件是否烧录成功，如果烧录成功了会返回一个klipper的设备ID，如下图所示。

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software40.png width="600"/>

复制保存此ID，配置文件中需要设置此ID。

#### 配置Klipper

1、在电脑的浏览器中输入树莓派的IP访问，如下图所示的路径中下载主板的参考配置，如果找不到此文件，请更新Klipepr固件源码到最新版本，或者到github下载:https://github.com/bigtreetech/BIGTREETECH-OCTOPUS-Max-EZ

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software41.png width="600"/>

2、将主板的配置文件上传到ConfigurationFiles中,并重命名为 "printer.cfg".

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software42.png width="600"/>

3、将配置文件中的ID号修改为主板实际的ID

<img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software43.png width="600"/>

4、按照https://www.klipper3d.org/Overview.html的说明配置机器的具体功能。

## 固件更新

### MicroSD卡更新

1. 确保MicroSD卡已经被格式化为FAT32文件系统。
2. 将自行编译或从github下载的固件重命名为“firmware.bin”（注意：明确电脑系统的扩展名设置，有部分用户隐藏了扩展名，“firmware.bin”实际显示的是
   “firmware”）
3. 将“firmware.bin”复制到microSD卡的根目录中。
4. 将microSD卡插入主板的卡槽中，给主板重新通电，主板的引导程序会自动更新固件。
5. 固件更新的过程中，主板右上角的状态指示灯会开始闪烁。
6. 当状态指示灯停止闪烁并且microSD卡中的文件名被重命名为“FIRMWARE.CUR”代表固件更新成功。

### DFU更新Klipper

1. 在命令行输入：ls/dev/serial/by-id/查询主板的ID，如果主板正常运行了Klipper则会返回一个klipper的设备ID，如下图所示

   <img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software44.png width="600"/>

2. 如果ls/dev/serial/by-id/能够找到MCU的klipper设备ID，可以直接输入
   cd~klipper
   makeflashFLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32h712xx_41003D001751303232383230-if00
   烧录固件（注意：将/dev/serial/by-id/xxx更换为上一步中查询到的实际的ID）

   <img src=img/Octopus_MAX_EZ/Octopus_MAX_EZ_Software45.png width="600"/>

   烧录完成后会有dfu-util:Errorduringdownloadget_status错误信息，忽略即可

## **注意事项**

1. 所有的拔插操作请在断电的情况下进行。

2. 使用风扇时，注意电压选择必须与风扇工作电压一致，防止损坏风扇。



如果您还需要此产品的其他资源，可以到https://github.com/bigtreetech/上自行查找，
如果无法找到您所需的资源，可以联系我们的售后支持（service005@biqu3d.com）。

若您使用中还遇到别的问题，欢迎您联系我们，我们定会细心为您解答；若您对我们的产品有什么好的意见或建议，也欢迎您回馈给我们，我们也会仔细斟酌您的意见或建议，感谢您选择BIGTREETECH制品，谢谢！
