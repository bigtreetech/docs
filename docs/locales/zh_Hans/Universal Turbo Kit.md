# Universal Turbo Kit

<img src=img/Turbo_Kit/Turbo_Kit_Title.png width="600"/>

**产品链接:**

https://biqu.equipment/products/universal-turbo-kit

 

**GitHub存储库:**

https://github.com/bigtreetech/Universal-Turbo-Kit

## **产品简介**

BIQU通用涡轮套件由Wonsmart Motor（医疗设备供应商）提供的高质量、高性能组件，以及我们自主开发的控制器适配器板和定制电缆组成，使您的CPAP鼓风机安装体验与连接常规直流风扇一样轻松。即插即用是我们的游戏！

## **功能亮点**

- 为即插即用通用兼容性而设计的适配器板和电缆。
- 来自Wonsmart Motor（医疗设备供应商）的高品质、高性能WS7040鼓风机和驱动器。
- 最大转速45000转/分。
- 6.6 Kpa最大静压。
- 14.7 CFM最大流量。
- 配有空气过滤器，可延长涡轮的使用寿命并降低噪音，同时过滤大的细丝颗粒。
- 包括Voron 2.4排气罩模块安装硬件。
- 提供Voron 2.4排气罩模型。
- 参考三维模型可用于帮助您围绕套件设计自己的组件。
- 提供印刷降噪护罩3D模型。

## **包装清单**

| **项目**                            | **数量** |
| :---------------------------------- | -------- |
| **WS7040-24-V200鼓风机**            | **1**    |
| **WS2403DY01V04无刷驱动器**         | **1**    |
| **进气滤清器**                      | **1**    |
| **控制器适配器板**                  | **1**    |
| **20AWG x 1m带Spade端子的电力电缆** | **1**    |
| **控制信号电缆20AWG x 1m w/XH2.54** | **1**    |
| **BLS驱动器电源线**                 | **1**    |
| **BLS驱动信号电缆**                 | **1**    |
| **电位计旋钮**                      | **1**    |

## **电机规格**

<img src=img/Turbo_Kit/Turbo_Kit_Motor1.png width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Motor2.png width="600"/>

## **驱动程序规范**

<img src=img/Turbo_Kit/Turbo_Kit_Driver.png width="600"/>

## **尺寸**

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions1.png width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions2.png width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions3.png width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions4.png width="600"/>

## **接线说明书**

**使用电位计旋钮进行手动速度控制:**

1、将电源连接到24V。

2、将3针XH2.54接头插入电位计。

**要使用主板或Pi SBC进行固件速度控制，请遵循下图:**

1. 将无刷直流驱动器电源电缆插入适配器板。
2. 将3针XH2.54连接器插入适配器板。
3. 将随附的电源线和信号线切割成您喜欢的长度。
4. 将电源线和信号线插入适配器板。
5. 将电源连接到24V DC。
6. 将信号电缆连接到任何风扇端口（3.3-24V全量程兼容性）。

<img src=img/Turbo_Kit/Turbo_Kit_Wiring1.png width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Wiring2.png width="600"/>

## **固件设置**

### Klipper

将风扇端口引脚插入下面的引脚部分，并将其复制到“printer.cfg”文件中：

```
[fan]

pin: # Output pin controlling the fan. This parameter must be provided.

max_power: 0.8 

# This should be set to 0.8 on most motherboards to give full range of control to your slicer. 

# Anything above 80% duty cycle will be full power on this particular brushless driver.

# To fine-tune the max_power parameter for your particular motherboard, set max_power to 1.0, go into the Klipper dashboard, and increase fan speed 1% at a time until the actual fan speed stops increasing as you increase the fan speed. Divide the fan speed at this point by 100 and enter it into the max_power parameter.

# This parameter defines the maximum power (expressed as a value from 0.0 to 1.0) that the pin may be set to. 

# The value 1.0 allows the pin to be set fully enabled for extended periods, while a value of 0.5 would allow the pin to be enabled for no more than half the time. 

# This setting may be used to limit the total power output (over extended periods) to the fan. 

# If this value is less than 1.0, then fan speed requests will be scaled between zero and max_power (for example, if max_power is 0.9 and a fan speed of 80% is requested, then the fan power will be set to 72%).

shutdown_speed: 0 

# The desired fan speed (expressed as a value from 0.0 to 1.0) if 

# The microcontroller software enters an error state. 

# The default is 0.

cycle_time: 0.005 

# The amount of time (in seconds) for each PWM power cycle to the fan. 

# It is recommended this be 10 milliseconds or greater when using software-based PWM. 

# The default is 0.010 seconds.

hardware_pwm: False 

# Enable this to use hardware PWM instead of software PWM. 

# Most fans do not work well with hardware PWM, so it is not recommended to enable this unless there is an electrical requirement to switch at very high speeds. 

# When using hardware PWM, the actual cycle time is constrained by the implementation and may be significantly different than the requested cycle_time. 

# The default is False.

kick_start_time: 0.100 

# Time (in seconds) to run the fan at full speed when either first enabling or increasing it by more than 50% (helps get the fan spinning). 

# The default is 0.100 seconds.

off_below: 0.1 

# The blower will not spin with the included brushless driver when the duty cycle is below 8%. When scaled with Max_power at 0.8, the off_below parameter should be set to 0.1. 

# To calibrate this setting, gradually lower the fan speed to determine the lowest input speed that reliably drives the fan without stalls. 

# Set off_below to the duty cycle corresponding to this value (for example, 8% -> 0.08/Max_power -> 0.08/0.8 -> 0.1) or slightly higher. 

# This parameter is the minimum input speed that will power the fan (expressed as a value from 0.0 to 1.0). 

# When a speed lower than off_below is requested, the fan will instead be turned off. 

# This setting may be used to prevent fan stalls and to ensure effective kick starts. 

# To calibrate this setting, start with off_below set to 0.0 and the fan spinning. 

# Gradually lower the fan speed to determine the lowest input speed that reliably drives the fan without stalls. 

# Set off_below to the duty cycle corresponding to this value (for example, 12% -> 0.12) or slightly higher.

#Tachometer_pin:

# Tachometer input pin for monitoring fan speed. A pullup is generally required. 

# This parameter is optional.

#Tachometer_ppr: 1

# When tachometer_pin is specified, this is the number of pulses per revolution of the tachometer signal.

#Tachometer_poll_interval: 0.0005

# When tachometer_pin is specified, this is the polling period of the tachometer pin, in seconds. 

# The default is 0.0015, which is fast enough for fans below 10,000 RPM at 2 PPR. 

# This must be smaller than 30/(tachometer_ppr*rpm), with some margin, where rpm is the 

# maximum speed (in RPM) of the fan.
```

### Marlin

Enable "FAN_SOFT_PWM" and set "SOFT_PWM_SCALE" to 5.

**Duet Board**

https://docs.duet3d.com/en/User_manual/Connecting_hardware/Fans_connecting

## **印刷零件说明书**

首先，打印“Stealthburner Parts”文件夹中的所有内容。您将需要以下额外部件来完成打印头：1x BTT KNOMI V2.0；1x 15mm CPAP导管；2条拉链

要完成从打印头到鼓风机的连接，您需要单独购买15mm CPAP



接下来，根据您的首选配置，选择“排气部件”中的一个文件夹，并打印文件夹中的所有内容。以下是您可以选择的4种配置：

 

1、Voron Exhaust UTK SFS无风扇：Voron排气罩的重新设计版本，带有集成SFS V2.0模块，利用附带的空气过滤器，不带60mm排气风扇。

这是推荐的配置，因为它完全包围了鼓风机，将噪音水平保持在最低水平。

*此设计是基于Printables上@MichalKelnar_1267496的设计进行的混音。

原创设计环节: https://www.printables.com/model/668556-modified-voron-exhaust-filter/files

对于此配置，您将需要以下额外部件：

1x BIGTREETECH SFS V2.0 模块

 

2、无风扇的Voron Exhaust UTK：改进的Voron设计V2.4排气罩，无60mm排气风扇。这是非SFS用户的推荐配置，因为它完全封闭了鼓风机，将噪音水平保持在最低水平。

对于这种配置，不需要额外的部件。

 

3、VVoron Exhaust UTK SFS带风扇：这是Voron排气罩的重新设计版本，带有集成SFS V2.0模块和60mm排气风扇。由于CPAP鼓风机的位置，需要一个强大的60mm风扇来维持打印机外壳中的负压；请记住，这将产生高噪音水平，因为鼓风机不是封闭的。

*此设计是基于Printables上@MichalKelnar_1267496的设计进行的混音。

原创设计环节: https://www.printables.com/model/668556-modified-voron-exhaust-filter/files

对于此配置，您将需要以下额外部件：

1x BIGTREETECH SFS V2.0模块；1x 60mm轴流风机

 

4、Voron Exhaust UTK带风扇：Voron独创设计V2.4排气罩，带60mm排气风扇。由于CPAP鼓风机的位置，需要一个强大的60mm风扇来维持打印机外壳中的负压；请记住，这也会产生高噪音水平，因为鼓风机不是封闭的。

对于此配置，您将需要以下额外部件：

1x 60mm轴流风机

## **产品购买链接**

购买链接:
https://biqu.equipment/products/universal-turbo-kit

如果您对产品有任何问题，请提交支持单.
https://biqu3d.com/pages/submit-a-ticket



**导航:**

BIQU官方网站：                            							  http://biqu3d.com

BIGTREETECH官方网站：            				 			 http://bigtree-tech.com

网上商店：                                          				 		https://biqu.equipment

BIGTREETECH官方群: 								  			  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/

微信公众号：																BIGTREETECH 

官方社群：

1群：																			190180312（已满）

2群：																			633401944

微信社群：																   关注微信公众号获取社群二维码

资料获取由微信公众号提供，关注公众号发送及消息即可获取（网盘链接）

