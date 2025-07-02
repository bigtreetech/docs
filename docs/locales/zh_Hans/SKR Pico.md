# SKR Pico

## **产品简介**

BTT SKR Pico V1.0 是必趣创新科技（深圳）有限公司 3D 打印团队推出的一款专门为 VORON V0 打印机量身定制的主板。

## **功能亮点**

- 主板外观美观；
- 采用Raspberry Pi(树莓派)Arm Cortex-M0+主控RP2040；
- 采用全新设计散热片，增强散热及美观性；
- 贴片电容（MLCC）采用村田的电容；
- 保险丝采用保险丝座+保险丝的形式，拆卸方便；
- 采用TYPE-C接口用于主控通信。
- 采用树莓派板框，最优尺寸设计。

## **规格**

| 外观尺寸                       |               85*56mm               |
| ------------------------------ | :---------------------------------: |
| 安装尺寸                       | 详见BTT SKR Pico V1.0-SIZE.pdf 资料 |
| 板层                           |                 4层                 |
| MCU                            |        ARM Cortex-M0+ RP2040        |
| 电源输入                       |              DC 12/24V              |
| 逻辑电压                       |                3.3V                 |
| 电机驱动器                     |        板载TMC2209的UART模式        |
| 电机驱动接口                   |         X、 Y、 Z1、Z2、 E          |
| 温度传感器接口                 | TH0、 THB， 2 路 100K NTC（热电阻） |
| 与Raspberry Pi(树莓派)通信接口 |            TYPE-C、串口             |

## **尺寸**

<img src=img/SKR_Pico/SKR_Pico_Dimension.png width="600" />

## **外围设备接口**

<img src=img/SKR_Pico/SKR_Pico_Pinout_CN.png width="600" />

## **接口介绍**

### 主板指示灯说明

主板上电后：
LED6红灯为电源指示灯： 红灯亮起，表示供电正常；
LED4红灯为热床 HB状态指示灯：加热时常亮，不加热时熄灭;
LED5红灯为加热棒 HE状态指示灯：加热时常亮，不加热时熄灭;
LED1绿红灯为数控风扇 FAN1状态指示灯：打开时亮起，关闭时熄灭；
LED2红灯为数控风扇 FAN2状态指示灯：打开时亮起，关闭时熄灭。
LED3红灯为数控风扇 FAN2状态指示灯：打开时亮起，关闭时熄灭。
LED7灯为RGB灯，可设置灯亮灭或颜色。

### Sensorless homing功能选择

<img src=img/SKR_Pico/SKR_Pico_Sensorless.png width="600" />

使用跳帽对相应的轴进行如图连接，即可使用Sensorless homing功能;

**<font  color="red">注意：选择该功能就不能使用外部ENDSTOP！！！ </font>**

### 与RGB彩灯的连接

<img src=img/SKR_Pico/SKR_Pico_RGB.png width="600" />

### 与BLtouch的连接

<img src=img/SKR_Pico/SKR_Pico_BLtouch.png width="600" />

###  与接近开关的连接

与接近开关的连接，可通过跳帽选择接近开关的类型为PNP或者NPN

<img src=img/SKR_Pico/SKR_Pico_Proximity.png width="600" />

### 与Raspberry Pi的连接

a. 通过 USB 通信

<img src=img/SKR_Pico/SKR_Pico_Rasp.png width="600" />

b. 通过 UART 通信

<img src=img/SKR_Pico/SKR_Pico_Rasp3.png width="600" />

线序参考BTT SKR Pico V1.0-PIN.pdf。

## **主板固件说明**

1. 主板固件获取方式

  问客服或者技术人员获取；

  官方社群：
  1群：190180312（已满）
  2群：633401944

  登录我司开原网址进行下载：https://github.com/bigtreetech

2. 登录我司开原网址进行下载:

    (1) 在主板的Boot引脚上插上跳帽然后单击Reset按钮，使其进入烧录模式。

    <img src=img/SKR_Pico/SKR_Pico_Firmware.png width="600" />

    (2) 将主板的USB-C插到电脑上，此时电脑上会出现一个名为 RPI-PR2 的U盘，将编译好的 klipper.uf2 文件复制粘贴到此U盘中，主板会自动重启并更新固件，等待电脑重新识别出此U盘后代表固件更新完成，拔掉Boot引脚上的跳帽并单击Reset按钮，进入正常工作模式。

<img src=img/SKR_Pico/SKR_Pico_Firmware1.png width="600" />

​		(3) 主板固件 DIY 请参考BTT SKR Pico V1.0-PIN.pdf资料。

## **注意事项**

1. 若要使用0.8A以上的电机驱动电流，推荐使用风扇来为驱动芯片主动散热；
2. 非必要请不要拆下散热片。如要拆下，请安装时确保导热硅胶片贴合散热片底部，不要造成短路；
3. 接线过程必须是在断电前提下进行，在检查线路正确连接后方可上电，防止接错线导致主板和驱动被烧毁，造成不必要的损失；
4. 注意要使用功能的跳线帽的插入。

若您使用中还遇到别的问题，欢迎您联系我们，我们定会细心为您解答；若您对我们的产品有什么好的意见或建议，也欢迎您回馈给我们，我们也会仔细斟酌您的意见或建议，感谢您选择BIGTREETECH 制品，谢谢！
