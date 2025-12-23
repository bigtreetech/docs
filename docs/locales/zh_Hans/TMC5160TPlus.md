# TMC5160T Plus

!!! info "Bigtreetech WiKi NEO"
    此界面已迁移到 Bigtreetech WiKi NEO

    [TMC5160T Plus Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/tmc-driver/tmc-5160-t-plus/)

<img src=img/TMC5160TPlus/TMC5160TPlus_Title.webp width="600"/>

## **产品简介**

TMC5160T Plus是一款大功率步进电机驱动器控制模块，具有8个大功率MOSFET，分别安装在板上，最大电压为60V。这支持更广泛的步进电机，并提供更大的适应性。

## **功能亮点**

- <p>8个大功率MOSFET，分别安装在100V电压的板上电阻，93A电流电阻，等效电阻低至6mΩ，显著提高了驱动器的性能</</p>
  
- 支持60V的最大电压、10.6A的最大有效电流（IRMS）和高达15A的正弦波峰值电流；

- StealthChop™模式和SpreadCycle™模式可选，独立模式、UART模式和SPI模式可选；

- 与具有相同芯片型号的其他驱动器相比，产生的热量明显较少，并且优于市场上的其他驱动器；

- 可防止电机抖动，避免丢步；

- 测试驱动36、42、57、86等步进电机；

- 对驱动电源、逻辑电源等进行ESD保护，防止电源波动和静电造成损坏；

- 板载24V常开风扇接口便于主动冷却；

- 编码器接口预留供自己动手使用；

- 一体化散热器设计，提供高散热，同时增强结构完整性和美观性；

- 提供标准驱动器和EZ驱动器的适配器和电线，方便用户使用；

- 散热器预先设计有风扇安装孔，用于DIY风扇安装。

## **规格**

| **尺寸**             | **TMC5160T Plus:64 x 56 x 32.55mm**             |
| -------------------- | ----------------------------------------------- |
| **尺寸**             | **TMC5160T Plus（不带外壳）：58 x 50 x 28毫米** |
| **驱动芯片**         | **TMC5160-TA**                                  |
| **输入电压（HVIN）** | **8V-60V**                                      |
| **最大有效电流**     | **10.6A，正弦波峰值电流15A**                    |
| **电容器**           | **2 x 560uF**                                   |
| **操作模式**         | **SPI、SD**                                     |
| **采样电阻**         | **22mΩ**                                        |

## **接口示意图**

<img src=img/TMC5160TPlus/TMC5160TPlus_Dim.webp width="600"/>

## **引出线/功能**

<img src=img/TMC5160TPlus/TMC5160TPlus_Pin.webp width="600"/>

## **接口介绍**

### **安装和接口**

常见主板（如SKR3）的连接方法，使用提供的TMC驱动适配器和电缆将TMC5160T Plus与SKR3连接，如图所示：

<img src=img/TMC5160TPlus/TMC5160TPlus_Ins1.webp width="600"/>

对于EZ系列主板（例如，Octopus MAX EZ），使用提供的EZ驱动适配器和电缆将TMC5160T Plus与Octopus MAX EZ连接，如图所示：

<img src=img/TMC5160TPlus/TMC5160TPlus_Ins2.webp width="600"/>

## **软件配置**

### **Marlin固件设置**

<font  color="red">**重要提示：目前，只有Marlin 2.0及更高版本的固件支持TMC5160的SPI模式。**</font>

<p>步骤1:在Marlin 2.0固件中，找到并打开“Configuration.h”文件，然后找到行“#define MOTHERBOARD XXXXXX”。“XXXXXX”代表所使用的板的模型。确认您正在使用的主板</p>

<img src=img/TMC5160TPlus/TMC5160TPlus_Software1.webp width="600"/>

步骤2：在Marlin\src\pins目录中，找到与您的板对应的“pins_xxxxxx.h”文件（xxxxxx表示板型号），然后在文件中找到“X_CS_PIN”、“Y_CS_PIN“、“Z_CS_PIN”和“EO_CS_PIN“。根据这些变量将端号名称修改为正在使用的端号。

<img src=img/TMC5160TPlus/TMC5160TPlus_Software2.webp width="600"/>

步骤3：在步骤2的文件中，找到“#define TMC_SW_MOSI XXX”、“#defined TMC_SW_MISO XXX”和“#defin TMC_SW_SCK XXX”。将“XXX”更改为要使用的引脚。

<img src=img/TMC5160TPlus/TMC5160TPlus_Software3.webp width="600"/>

步骤4：找到并打开“Configuration_adv.h”，然后找到“#define TMC_USE_SW_SPI”并删除注释符号“//”。

<img src=img/TMC5160TPlus/TMC5160TPlus_Software4.webp width="600"/>

步骤5：在“Configuration_adv.h”文件中，找到“#define X_CURRENT”、“#defin X_MICROSTEPS”和“#define X_RSENSE”，并修改跟随（对于正在使用的每个轴）。每个使用的轴的RSENSE值应更改为“0.022”。

<img src=img/TMC5160TPlus/TMC5160TPlus_Software5.webp width="600"/>

步骤6：在“Configuration.h”文件中将相应的轴驱动类型设置为“TMC5160”。

<img src=img/TMC5160TPlus/TMC5160TPlus_Software6.webp width="600"/>

### **Klipper固件设置**

<img src=img/TMC5160TPlus/TMC5160TPlus_Software7.webp width="600"/>

<font  color="red">**注意：Klipper中的默认sense_resistor为0.075；需要将其设置为0.022。**</font>

## **注意事项**

- 安装驱动程序之前请先关闭电源，以防损坏。
- 请勿在电源打开的情况下插拔驱动模块，以免损坏。
- 连接时要注意极性；接反会导致驱动烧坏。
- 不应拆除出厂安装的散热器，因为这样做会在没有热接口材料的情况下降低散热。
- 对于大电流（大于3A），正常运行需要主动冷却。
- 该产品采用0.022R采样电阻，因此最大有效驱动电流为10.6A。
- 注意电源顺序；确保在逻辑电源之前开启驱动器电源。也就是说，先打开驱动器电源，然后打开主板电源。
- 无论驱动器使用高压还是低压供电，主控制板到驱动器的输出电压都不得超过24V；超过这个值会损坏驱动。
