# TMC5160T Pro V1.0

!!! info
    此界面已迁移到 Bigtreetech WiKi NEO

    [TMC5160T Pro V1.0 Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/tmc-driver/tmc-5160-t-pro/)

<img src=img/tmc5160t_pro/tmc5160t_pro_title.png width="600"/>

## **产品简介**

TMC5160 是一款大功率的步进电机驱动控制芯片，外扩功率 MOS 管，最大电压可达56V，支持的步进电机范围更广，适配性更高。

## **产品特点**

- 采用外部功率 MOS 管，可支持更高电压和更大的电流；
- 发热远远低于 2209、2130 等驱动；
- 更大的扭力能防止电机抖动，减少丢步发生的可能；
- 可驱动 57 步进电机；
- 采用普通驱动的板框，兼容性高，应用面广；
- 采用齿片更多的散热片，增强散热能力；
- I预留拓展接口，增强 DIY 的可能性；

## **产品参数**

- 外观尺寸： 20.4mmx15.3mmx23.2mm
- 驱动芯片： TMC5160-TA
- 输入电压（VM）： 8V-56V（TMC5160T Pro）、8V-24V（TMC5160T）
- 最大电流：RMS-3.1A，峰值 4.4A（座子的能承受的最大电流为 3A）
- 最大细分：256
- 工作模式：SPI

## **外设接口**

### 尺寸图

<img src=img/tmc5160t_pro/tmc5160t_pro_dimension.png width="600"/>

### 接口示意图

<img src=img/tmc5160t_pro/tmc5160t_pro_pin.png width="600"/>

| J1   | 功能               | J2   | 功能              |
| ---- | ------------------ | ---- | ----------------- |
| 1    | (EN) 使能          | 1    | (VM) 电机供电电压 |
| 2    | (SDI/CFG1) 数据    | 2    | (GND) 接地        |
| 3    | (SCK/CFG2) 时钟    | 3    | (A2) A 相         |
| 4    | (CSN/CFG3) 片选    | 4    | (A1) A 相         |
| 5    | (SDO/CFG0) 数据    | 5    | (B2) B 相         |
| 6    | (CLK) 外部时钟输入 | 6    | (B1) B 相         |
| 7    | (STEP) 脉冲输入    | 7    | (VIO) 逻辑电压    |
| 8    | (DIR) 方向输入     | 8    | (GND) 接地        |

<img src=img/tmc5160t_pro/tmc5160t_pro_pin1.png width="600"/>

## **接口介绍**

### 安装方式及接口

驱动上有白色方框的引脚为使能（EN）引脚如下图红色方框所示：

<img src=img/tmc5160t_pro/tmc5160t_pro_Interface.png width="600"/>

## **固件设置**

### Marlin固件设置

<font  color="red">**特别注意：目前只有 Marlin2.0 及以上的固件支持 TMC5160 的 SPI 模式。**</font>

**步骤一**: 

在 marlin 2.0 固件里找到并打开“Configuration.h”文件，然后找到“#define MOTHERBOARD XXXXXX”“XXXXX”代表所使用板子的型号。确认自己所使用的主板。

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin1.png width="600"/>

**步骤二：** 

在 Marlin\src\pins 目录下找到自己板子所对应的“pins_xxxxxx.h”文件（xxxx 代表
板子型号），然后在该文件下找到

- X_CS_PIN
- Y_CS_PIN
- Z_CS_PIN
- E0_CS_PIN

等，修改后面的引脚名为自己所使用的引脚。

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin2.png width="600"/>

**步骤三：**

在步骤二的文件下找到

**#define TMC_SW_MOSI XXX**

**#define TMC_SW_MISO XXX**

**#define TMC_SW_SCK XXX**

修改为自己所要使用的引脚。

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin3.png width="600"/>

**步骤四：**

找到并打开“Configuration_adv.h”,然后找到“#define TMC_USE_SW_SPI” 去掉屏蔽符“//”

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin4.png width="600"/>

**步骤五：**

在“Configuration_adv.h”文件下，找到“#define X_CURRENT”“#define X_MICROSTEPS”“#define X_RSENSE”修改后面的参数（所使用到的轴都需要修改），<font  color="red">**所使
用到的轴的 RSENSE 都应改为“0.075”**</font>

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin5.png width="600"/>

**步骤六：**

步骤五的修改完成后，找到并打开“Configuration.h”然后找到“#define DEFAULT_AXIS_STEPS_PER_UNIT”修改后面的参数来设置细分，该地方的细分必须与步骤
五的细分对应。

细分计算方法，“80,80,400,96”代表 16 细分，如果修改为 32 细分就为“80*（32/16），80*（32/16），400*（32/16），96*（32/16）”

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin7.png width="600"/>

本产品使用的采样电阻为 0.075R，因此本产品驱动电流的最大有效值为 3.1A。

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin8.png width="600"/>

如果需要使用更大的电流，则需要自行更换采样电阻的大小（需自己准备元件和焊接）。

<font  color="red">**更换的电阻不要小于 0.066R（受模块大小限制）。**</font>

<font  color="red">**注：不建议更换电阻，如果一定要更换，在更换过程中造成驱动的损坏，需自行承
担后果。**</font>

更换的的元件位置如下图红色方框所示：

<img src=img/tmc5160t_pro/tmc5160t_pro_marlin9.png width="600"/>

## **注意事项**

- 安装驱动前一定要断开电源，防止驱动烧毁；

- 安装驱动前一定要确认驱动的方向，防止反接导致驱动不工作；

- 请不要带电插拔驱动模块，以免造成损坏；
