# KRAKEN V1.0/V1.1

<img src=/img/Kraken/kraken_title.webp width="600" />

## **产品简介**

BIGTREETECH Kraken V1.0主板是深圳市必趣科技有限公司3D打印团队针对大型机器研发的32位打印机主板，板载高压大电流步进电机驱动，大大简化了主板与高压驱动的连接，也大大节省了机箱中的安装空间，主板采用ID设计的丝印，搭配ID设计的散热片进行辅助散热，既美观也实用。

## **产品特点**

- 采用32位主频550 MHz的ARM Cortex-M7系列STM32H723ZGT6主控芯片；
- 电源芯片采用TPS5450-5A，支持DC12/24V电源输入,该芯片输出电流高达5A，峰值可达6A，完美支持树莓派供电；
- 主板预留BOOT按键，用户可以通过DFU方式更新主板引导程序；
- 增加热敏电阻部分的保护电路，避免因热床或者加热棒漏电导致主控芯片烧毁；
- 数控风扇24V、12V、5V电压可选，省去客户外接变压模块的操作，从而减少主板损坏几率；
- 板载两路MAX31865，支持双路PT热电偶，支持两线或四线PT100/PT1000可选，方便客户DIY使用；
- 可通过MicroSD卡升级MCU固件，也可通过Klipper的make flash命令通过DFU更新MCU固件；
- 板载8路TMC2160驱动的SPI模式，板载DIAG功能引脚，只需通过简单的拔插跳帽即可使用；
- 预留接口：断料检测、打完关机、Probe、RGB、I2C、舵机接口、EXP1+EXP2、CAN、UART（SBC）接口、USBA电源输出接口等；
- 采用高性能MOSFET管，减少发热量；
- 采用可更换的保险丝，方便更换；
- 预留两路四线风扇接口，24V、12V、5V电压可选,且可用于接水冷装置；
- 预留接近开关接口，支持NPN和PNP型选择，（24V，12V，5V）电压可选；
- 预留SPI拓展接口，供使用Klipper固件的客户外接加速度传感器来进行加速度补偿；
- TMC2160的MOS管控制电源由外部DC12V提供，降低驱动的输出阻抗，降低芯片发热。

## **产品参数**

| 微处理器               | ARM Cortex-M7 STM32H723ZGT6 550MHz                           |
| ---------------------- | ------------------------------------------------------------ |
| 驱动输入电压           | HV (24-60V)                                                  |
| 主板输入电压           | DCIN = DC12V or DC24V                                        |
| 热床输入电压           | BED IN = DC12V or DC24V                                      |
| 逻辑电压               | DC3.3V                                                       |
| 加热接口               | 热床（HB）、加热棒（HE0，HE1，HE2，HE3）                     |
| 热床端口最大输出电流   | 10A，峰值11A                                                 |
| 加热棒端口最大输出电流 | 6A，峰值6.5A                                                 |
| 风扇接口               | 6路两线数控风扇（FAN0，FAN1，FAN2，FAN3，FAN4，FAN5），2路四线数控风扇（FAN6，FAN7），5路常开风扇，其中数控风扇电压（5V，12V，24V）可选 |
| 风扇接口最大输出电流   | 1A，峰值1.5A                                                 |
| 加热棒 +风扇的总电流   | 小于14A                                                      |
| 主板5V输出最大电流     | 5A（峰值6A）                                                 |
| 主板12V输出最大电流    | 5A（峰值6A）                                                 |
| 拓展接口               | Probe（Servos、Probe）、舵机、断料检测、PS-ON、I2C、RGBx2、SPI、SBC（UART）、EXP1+EXP2、CAN、USB-A 5V供电接口、接近开关接口等 |
| 电机驱动               | 板载TMC2160，支持24-60V， S5-S8最大支持3A驱动电流（Rsense=75mR）；<br>V1.0版本S1-S4最大支持8A驱动电流（Rsense=22mR），<br>V1.1版本S1-S4最大支持4.7A驱动电流 |
| 驱动工作模式支持       | SPI                                                          |
| 电机接口               | S1, S2, S3, S4, S5, S6, S7, S8总共8路                        |
| 温度传感器接口         | 5路100K NTC，2路MAX31865端口                                 |
| 显示屏                 | LCD显示屏                                                    |
| PC通信接口             | Type-C，方便插拔                                             |
| 支持机器结构           | Cartesian、Delta、Kossel、Ultimaker、CoreXY                  |
| 推荐软件               | Cura, Simplify3D, Pronterface, Repetier-host, Makerware      |
| 外观尺寸               | 200 x 113mm                                                  |
| 安装尺寸               | 见BIGTREETECH Kraken V1.0-SIZE.webp                           |

## **固件支持**

此产品支持Marlin、Klipper和RRF(RepRapFirmware)固件。

## **产品尺寸**

<img src=/img/Kraken/kraken_dimension.webp width="600" />

## **外设接口**

### 接口示意图

<img src=/img/Kraken/kraken_interface.webp width="600" />

### Pin脚说明

<img src=/img/Kraken/kraken_pin.webp width="600" />

## **接口介绍**

### USB供电

Kraken主板上电之后，板子上的电源指示灯会亮起红色，表示供电正常。VUSB是电源选择端，仅当使用USB给主板供电时，才需要使用跳线帽短接。

<img src=/img/Kraken/kraken_usb.webp width="600" />

### 步进电机驱动

#### 板载TMC2160的SPI模式

无需任何跳线帽选择模式，客户直接使用SPI模式；使用Sensorless Homing功能时就插上跳帽，不使用则不插，DIAG的连接如下：

<img src=/img/Kraken/kraken_stepper.webp width="600" />

#### 数控风扇的电压选择

通过跳线帽来设置输出电压为5V，12V或是24V，风扇接口输出电流为1A，注意选型；

**<font  color="red">注意：选择电压前请确认清楚风扇支持的电压为哪一档，因为选错导致的风扇烧毁，我司不与承责。</font>**

<img src=/img/Kraken/kraken_pwm.webp width="600" />

### MicroProbe V2.0接线

<img src=/img/Kraken/kraken_microprobe.webp width="600" />

### 打完关机模块(Relay V1.2)接线

<img src=/img/Kraken/kraken_power_off.webp width="600" />

### EXP1+EXP2与MINI12864 V2.0屏的接线

<img src=/img/Kraken/kraken_display.webp width="600" />

### RGB接线

<img src=/img/Kraken/kraken_rgb.webp width="600" />

### 舵机接线

<img src=/img/Kraken/kraken_servo.webp width="600" />

### I2C接线（温湿度传感器）

<img src=/img/Kraken/kraken_i2c.webp width="600" />

### 两线风扇连接

<img src=/img/Kraken/kraken_2pin.webp width="600" />

### 接近开关的连接

常开（NPN型），不用通过跳线帽短接，如下图24V为例：

<img src=/img/Kraken/kraken_proximity.webp width="600" />

常闭（PNP型），需要将跳线帽短接，如下图24V为例：

<img src=/img/Kraken/kraken_proximity1.webp width="600" />

### 四线数控风扇及水冷装置的连接（下图以12V为例）

<img src=/img/Kraken/kraken_4pin.webp width="600" />

### 与树莓派的连接

<img src=/img/Kraken/kraken_pi.webp width="600" />

## **Marlin**

### 安装编译环境

[https://github.com/bigtreetech/Document/blob/master/How%20to%20install%20VScode%2BPlatformio.md](https://github.com/bigtreetech/Document/blob/master/How to install VScode%2BPlatformio.md)

https://marlinfw.org/docs/basics/install_platformio_vscode.html

参考这两个链接的说明安装 VSCode 以及 PlatformIO插件（国内的用户在线安装PlatformIO插件可能会很慢）

### 下载Marlin固件

从Marlin官方GitHub获取Marlin源码：

https://github.com/bigtreetech/BIGTREETECH-Kraken

### 配置固件

#### 打开Marlin工程

您可以通过以下几种方式之一在VSCode中打开 Marlin：

- 将下载的 Marlin Firmware 文件夹拖到VSCode应用程序图标上：
- 使用VSCode File菜单中的Open...命令
- 打开 PIO Home 选项卡，然后单击Open Project按钮

#### 配置编译环境

打开platformio.ini文件并将default_envs修改为STM32H723ZG_btt

<img src=/img/Kraken/kraken_marlin1.webp width="600" />

**配置主板类型、串口号**

设置主板类型MOTHERBOARD 为BOARD_BTT_KRAKEN_V1_0

<font  color="red">#define</font> <font  color="blue">MOTHERBOARD BOARD_BTT_KRAKEN_V1_0</font>

<font  color="red">#define</font> <font  color="blue">SERIAL_PORT</font> <font  color="green">3</font>	 (启用SBC串口)

<font  color="red">#define</font> <font  color="blue">BAUDRATE</font>  <font  color="green">115200</font>	（设置波特率，注意要跟通信的设备一致）

<font  color="red">#define</font> <font  color="blue">SERIAL_PORT_2</font>  <font  color="green">-1</font>	（启用USB模拟串口）

以上的设置根据需求自行启用

<img src=/img/Kraken/kraken_marlin2.webp width="600" />

**配置电机驱动**

Kraken板载8个TMC2160驱动

<img src=/img/Kraken/kraken_marlin3.webp width="600" />

需在Configuration_adv.h文件中使能 <font  color="blue">TMC_USE_SW_SPI2</font>

<font  color="red">#define</font> <font  color="blue">TMC_USE_SW_SPI</font>

<img src=/img/Kraken/kraken_marlin4.webp width="600" />

V1.0版本：S1-S4采样电阻是22mΩ，固件需要设置为0.022；

V1.1版本：S1-S4采样电阻是50mΩ，固件需要设置为0.05；

S5-S8采样电阻为75mΩ，固件需要设置为0.075

<img src=/img/Kraken/kraken_marlin5.webp width="600" />

**Sensorless Homing**

<img src=/img/Kraken/kraken_marlin6.webp width="600" />

<font  color="red">#define</font> <font  color="blue">SENSORLESS_HOMING</font>	// 打开驱动堵转检测作为Home限位开关的功能

<font  color="red">#define</font> <font  color="blue">xx_STALL_SENSITIVITY</font>	<font  color="green">8</font>	// 设置堵转检测的灵敏度。TMC2209范围为0~255，数值越大越灵敏，容易误触发，现象为Home的时候轴还没有回到原点就停下来了，数值越小越不灵敏容易不触发，现象为归零时一直撞轴发出“噔噔噔”的声音。其他驱动范围为63~-64，数值越小越灵敏。 

<font  color="red">#define</font> <font  color="blue">IMPROVE_HOMING_RELIABILITY</font>	// 可以在上面单独设置归零时的电流参数(xx_CURRENT_HOME)，以便得到最好的归零效果。

**100K NTC**

标准的TH端口，仅推荐接 NTK 100K 热敏电阻，板载4.7K的上拉电阻。所以Marlin固件中设置为1即代表 100K NTC + 4.7K上拉电阻。

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_0</font>	<font  color="green">1</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_1</font>	<font  color="green">1</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_BED</font>	<font  color="green">1</font>

<img src=/img/Kraken/kraken_marlin7.webp width="600" />

**Max31865**

板载两个Max31865可接2/4线PT100/PT1000，根据 Pin 图中的说明，设置拨码开关。
Marlin固件中设置为-5代表使用Max31865，并且PT100的采样电阻值和校准电阻值分别设置为100、430，PT1000则设置为1000、4300。

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_0</font>	<font  color="green">-5</font>

<font  color="red">#define</font> <font  color="blue">TEMP_SENSOR_1</font>	<font  color="green">-5</font>

<img src=/img/Kraken/kraken_marlin8.webp width="600" />

**BLTouch**

<img src=/img/Kraken/kraken_marlin9.webp width="600" />

<font  color="green">//#define Z_MIN_PROBE_USES_Z_MIN_ENDSTOP_PIN</font>	// 不把Z_PROBE_PIN重映射到Z_MIN端口上

<img src=/img/Kraken/kraken_marlin10.webp width="600" />

<font  color="red">#define</font> <font  color="blue">BLTOUCH</font>	// 使能BLtouch功能

<img src=/img/Kraken/kraken_marlin11.webp width="600" />

<font  color="red">#define</font> <font  color="blue">NOZZLE_TO_PROBE_OFFSET</font>	<font  color="green">{ -40, -10, -2.85 }</font>	// 设置BLTouch探针相对于喷嘴的偏移量

<font  color="red">#define</font> <font  color="blue">PROBING_MARGIN</font>	<font  color="green">10</font>	// 设置调平探测点到最边缘的距离

<img src=/img/Kraken/kraken_marlin12.webp width="600" />

<font  color="red">#define</font> <font  color="blue">AUTO_BED_LEVELING_BILINEAR</font>	// 设置调平策略

<font  color="red">#define</font> <font  color="blue">RESTORE_LEVELING_AFTER_G28</font>	// Home之后自动重新加载调平补偿

<img src=/img/Kraken/kraken_marlin13.webp width="600" />

<font  color="red">#define</font> <font  color="blue">GRID_MAX_POINTS_X</font>	<font  color="green">5</font>	// 设置调平探测的点数，X轴探测5个点

<font  color="red">#define</font> <font  color="blue">GRID_MAX_POINTS_Y GRID_MAX_POINTS_X</font>	// Y轴探测5个点

如果想用BLTouch作为Z轴限位开关，不需要更改接线，只需要修改固件的设置即可

<img src=/img/Kraken/kraken_marlin14.webp width="600" />

<font  color="red">#define</font> <font  color="blue">USE_PROBE_FOR_Z_HOMING</font>	// 使用Z Probe(BLTouch) 作为Z轴Home限位开关

<img src=/img/Kraken/kraken_marlin15.webp width="600" />

<font  color="red">#define</font> <font  color="blue">Z_SAFE_HOMING</font>	// Z轴Home时，将X、Y移动到指定的坐标(通常是平台中心)，保证Z轴Home时，Z Probe(BLtouch)的探针在平台的范围内。

**打完关机模块 (Relay V1.2)**

<img src=/img/Kraken/kraken_marlin16.webp width="600" />

<font  color="red">#define</font> <font  color="blue">PSU_CONTROL</font>	// 打开控制电源功能，可以通过M80开机、M81关机

<font  color="red">#define</font> <font  color="blue">PSU_ACTIVE_STATE HIGH</font>	// 设置开机的电平， Relay V1.2模块是高电平开机低电平关机，所以需要设置为 HIGH

**RGB彩灯**

<img src=/img/Kraken/kraken_marlin17.webp width="600" />

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_LED</font>	// 使能Neopixel功能

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_TYPE  NEO_GRB</font>	// 设置彩灯的类型

<font  color="green">//#define NEOPIXEL_PIN  4</font>	// 屏蔽PIN设置，使用主板pin文件中正确的信号线

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_PIXELS</font>	<font  color="green">30</font>	// 彩灯的数量

<font  color="red">#define</font> <font  color="blue">NEOPIXEL_STARTUP_TEST</font>	// 开机时会依次显示红绿蓝三种颜色便于测试

如果启用了LCD2004、12864、mini12864之类的显示器，还可以在界面上启用RGB的控制菜单

<img src=/img/Kraken/kraken_marlin18.webp width="600" />

<font  color="red">#define</font> <font  color="blue">LED_CONTROL_MENU</font>	// 在屏幕上添加控制LED颜色的菜单

**断料检测**

普通的断料检测模块一般是由机械开关设计而成的，模块给主板一个恒定的高低电平代表耗材的状态

<img src=/img/Kraken/kraken_marlin19.webp width="600" />

<font  color="red">#define</font> <font  color="blue">FILAMENT_RUNOUT_SENSOR</font>	// 使能耗材检测的功能

<font  color="red">#define</font> <font  color="blue">FIL_RUNOUT_ENABLED_DEFAULT true</font>	// true 默认是打开的状态

<font  color="red">#define</font> <font  color="blue">NUM_RUNOUT_SENSORS</font>	<font  color="green">1</font>	// 耗材检测传感器的数量

<font  color="red">#define</font> <font  color="blue">FIL_RUNOUT_STATE   LOW</font>	// 耗材异常时的电平状态，根据模块实际情况设置，如果耗材异常时模块发出低电平就设置为LOW

**智能耗材检测(SFS V1.0)**

智能耗材检测模块在耗材正常通过时会不断的发出跳变的电平信号，当堵料/断料等异常情况出现，耗材无法正常的通过SFS，模块就无法发出跳变的信号给主板，主板从而得知耗材异常。

<img src=/img/Kraken/kraken_marlin20.webp width="600" />

<font  color="red">#define</font> <font  color="blue">FILAMENT_MOTION_SENSOR</font>	// 设置耗材传感器为编码器类型

<font  color="red">#define</font> <font  color="blue">FILAMENT_RUNOUT_DISTANCE_MM</font>	<font  color="green">7</font>	// 设置检测灵敏度，SFS V1.0推荐设置为7mm，耗材7mm内如果没有电平跳变就意味着耗材异常

耗材检测还需要通过以下两个地方来设置耗材异常暂停后的动作

<img src=/img/Kraken/kraken_marlin21.webp width="600" />

<img src=/img/Kraken/kraken_marlin22.webp width="600" />

<font  color="red">#define</font> <font  color="blue">NOZZLE_PARK_FEATURE</font>	// 喷头暂停功能

<font  color="red">#define</font> <font  color="blue">NOZZLE_PARK_POINT { (X_MIN_POS + 10), (Y_MAX_POS - 10), 20 } </font>	// 设置喷头暂停时的X、Y的坐标以及Z轴抬升的高度

<img src=/img/Kraken/kraken_marlin23.webp width="600" />

<font  color="red">#define</font> <font  color="blue">ADVANCED_PAUSE_FEATURE</font>	// 可以设置暂停时耗材回抽的长度及速度，继续打印后耗材挤出的长度和速度等参数

### 编译固件

1、点击底部状态栏中的“√”编译固件

<img src=/img/Kraken/kraken_marlin24.webp width="600" />

2、编译完成后会生成“firmware.bin”文件，复制到SD卡中即可更新固件

<img src=/img/Kraken/kraken_marlin25.webp width="600" />

## **Klipper**

### 编译固件

1、使用下面的配置编译固件(如果没有下列选项，请更新Klipper固件源码到最新版本)

* [*] Enable extra low-level configuration options
* Micro-controller Architecture (STMicroelectronics STM32)  --->
* Processor model (STM32H723)  --->
* Bootloader offset (128KiB bootloader (SKR SE BX v2.0))  --->
* Clock Reference (25 MHz crystal)  --->
USB接口
* Communication interface (USB (on PA11/PA12))  --->
CANBUS接口
* Communication interface (CAN bus (on PD0/PD1))  --->

<img src=/img/Kraken/kraken_klipper1.webp width="600" />

2、2.配置选择完成后, 输入 `q` 退出配置界面，当询问是否保存配置是选择 "Yes"

3、输入make编译固件，当make执行完成后会在树莓派的home/pi/klipper/out文件夹中生成我们所需要的`klipper.bin`固件，在ssh软件左侧可以直接下载到电脑中

<img src=/img/Kraken/kraken_klipper2.webp width="600" />

4、4.将klipper.bin重命名为“firmware.bin”，复制到SD卡中即可更新固件

5、在命令行输入：ls /dev/serial/by-id/查询主板的ID来确认固件是否烧录成功，如果烧录成功了会返回一个klipper的设备ID，如下图所示

<img src=/img/Kraken/kraken_klipper3.webp width="600" />

复制保存此ID，配置文件中需要设置此ID

### 配置Klipper

1、在电脑的浏览器中输入树莓派的IP访问，如下图所示的路径中下载主板的参考配置，如果找不到此文件，请更新Klipepr固件源码到最新版本，或者到github下载

https://github.com/bigtreetech/BIGTREETECH-Kraken

<img src=/img/Kraken/kraken_klipper4.webp width="600" />

2、将主板的配置文件上传到Configuration Files中, 并且在printer.cfg文件中包含此配置文件

<img src=/img/Kraken/kraken_klipper5.webp width="600" />

[include generic-bigtreetech-kraken.cfg]

<img src=/img/Kraken/kraken_klipper6.webp width="600" />

3、将配置文件中的ID号修改为主板实际的ID

<img src=/img/Kraken/kraken_klipper7.webp width="600" />

4、 按照 https://www.klipper3d.org/Overview.html 的说明配置机器的具体功能

### 固件更新

#### Micro SD卡更新

1. 确保Micro SD卡已经被格式化为FAT32文件系统
2. 将自行编译或从github下载的固件重命名为“firmware.bin”（注意：明确电脑系统的扩展名设置，有部分用户隐藏了扩展名，“firmware.bin”实际显示的是“firmware”）
3. 将“firmware.bin”复制到microSD卡的根目录中
4. 将microSD卡插入主板的卡槽中，给主板重新通电，主板的引导程序会自动更新固件
5. 固件更新的过程中，主板右上角的状态指示灯会开始闪烁
6. 当状态指示灯停止闪烁并且microSD卡中的文件名被重命名为“FIRMWARE.CUR”代表固件更新成功

#### DFU更新Klipper

1、在命令行输入：ls /dev/serial/by-id/ 查询主板的ID，如果主板正常运行了Klipper则会返回一个klipper的设备ID，如下图所示

<img src=/img/Kraken/kraken_klipper8.webp width="600" />

2、如果 ls /dev/serial/by-id/ 能够找到MCU的klipper设备ID，可以直接输入

```
cd ~klipper
```

```
make flash FLASH_DEVICE=/dev/serial/by-id/usb-Klipper_stm32h723xx_41003D001751303232383230-if00
```

烧录固件（注意：将/dev/serial/by-id/xxx更换为上一步中查询到的实际的ID）

<img src=/img/Kraken/kraken_klipper9.webp width="600" />

烧录完成后会有dfu-util: Error during download get_status错误信息，忽略即可

## **注意事项s**

1、禁止在步进电机运动状态下切换驱动电压;

2、切换步进电机的驱动电压时，需保证MCU无工作信号输出到驱动芯片;

3、当驱动电流超过7A时，建议增加散热风扇对驱动进行散热；
