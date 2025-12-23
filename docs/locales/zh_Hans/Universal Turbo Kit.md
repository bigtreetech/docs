# Universal Turbo Kit

<img src=img/Turbo_Kit/Turbo_Kit_Title.webp width="600"/>

**产品链接:**

https://biqu.equipment/products/universal-turbo-kit

 

**GitHub存储库:**

https://github.com/bigtreetech/Universal-Turbo-Kit

## **产品简介**

BIQU无刷涡轮吹料套件，采用医疗设备供应商 Wonsmart 提供的高品质高性能鼓风机和驱动，以及我们自主研发的控制转接板和定制线材，让您安装CPAP鼓风机就像连接普通直流风扇一样轻松。即插即用是我们的服务宗旨！

## **功能亮点**

- 专门设计的转接板和线材，实现即插即用的便利性；
- Wonsmart（医疗设备供应商）高性能WS7040鼓风机及驱动；
- 45，000 最大转速；
- 6.6 Kpa 最大静压；
- 14.7 CFM 最大流量；
- 配有进气过滤器，降低运行噪音，防止异物进入风机损坏扇叶，使套件运行更加安静平稳；
- 包含 Voron 2.4 排气罩改装安装所需的螺丝和螺母；
- 提供Voron 2.4 排气罩改装模型文件；
- 提供3D 打印降噪罩模型文件；
- 提供该套件的模型参考文件，便于您设计自己的安装组件。

## **包装清单**

| **项目**                               | **数量** |
| :------------------------------------- | -------- |
| **WS7040-24-V200 鼓风机**              | **1**    |
| **WS2403DY01V04无刷驱动**              | **1**    |
| **进气过滤器**                         | **1**    |
| **控制转接板**                         | **1**    |
| **20AWG×1m电源线，带叉型端子**         | **1**    |
| **20AWG×1m控制信号线，带XH2.54连接器** | **1**    |
| **无刷驱动电源线**                     | **1**    |
| **无刷驱动信号线**                     | **1**    |
| **电位器旋钮**                         | **1**    |

## **电机规格**

<img src=img/Turbo_Kit/Turbo_Kit_Motor1.webp width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Motor2.webp width="600"/>

## **驱动规范**

<img src=img/Turbo_Kit/Turbo_Kit_Driver.webp width="600"/>

## **尺寸**

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions1.webp width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions2.webp width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions3.webp width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Dimensions4.webp width="600"/>

## **接线说明**

**若使用电位器旋钮手动控制转速:**

1、连接电源到 24V。

2、将 3 针 XH2.54 连接器插入电位器。

**若使用主板或Pi SBC控制转速，请依下图操作:**

1. 将无刷驱动电源线线插入转接板；
2. 将3针XH2.54连接器插入转接板；
3. 剪裁电源和信号线至所需长度；
4. 将电源和信号线插入转接板；
5. 连接24V直流电源；
6. 将信号线连接至任意风扇接口(3.3-24V兼容)。

<img src=img/Turbo_Kit/Turbo_Kit_Wiring1.webp width="600"/>

<img src=img/Turbo_Kit/Turbo_Kit_Wiring2.webp width="600"/>

## **固件设置**

### Klipper

将风扇端口引脚插入下面的引脚部分，并复制到 “printer.cfg” 文件中：

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

启用"FAN_SOFT_PWM"选项，并将"SOFT_PWM_SCALE"设置为5。

**Duet Board**

https://docs.duet3d.com/en/User_manual/Connecting_hardware/Fans_connecting

## **打印件说明**

下载链接：[https://github.com/bigtreetech/Universal-Turbo-Kit/tree/master/3D%20Model/Voron2.4%26Trident](https://github.com/bigtreetech/Universal-Turbo-Kit/tree/master/3D Model/Voron2.4%26Trident)

首先，打印"Stealthburner Parts"文件夹中的所有模型。您还需要以下额外部件来完成热端组装:

1x BTT KNOMI V2.0；1x 15mm CPAP管；2x扎带。

接下来，根据您偏好的配置，从"Exhaust parts"文件夹中选择一个，并打印该文件夹内的所有模型。您可以从以下4种配置中选择:



1、Voron 排气罩的重新设计版本，集成了 SFS V2.0 模块，使用了随附的空气过滤器，不需要60mm排气风扇。

这是推荐配置，因为它完全封闭了风扇，将噪音降至最低。

*此设计是基于 Printables 上 @MichalKelnar_1267496 的设计改编而成。

原始设计链接:

https://www.printables.com/model/668556-modified-voron-exhaust-filter/files

对于此配置，您将需要以下额外部件：

1x BIGTREETECH SFS V2.0 模块



2、Voron-Exhaust-UTK-without-fan: 修改后的 Voron design V2.4 排气罩，不带60mm排气风扇。这是非 SFS 用户的推荐配置，因为它完全封闭了风扇，将噪音降至最低。

对于此配置，不需要额外部件。



3、Voron-Exhaust-UTK-SFS-with-fan: 这是 Voron 排气罩的重新设计版本，集成了 SFS V2.0 模块和一个 60mm 排气风扇。由于 CPAP 风扇位置的原因，需要一个强力的 60mm 风扇来保持打印机机壳内的负压；请注意，这将产生较高的噪音，因为风扇没有被封闭。

*此设计是基于 Printables 上 @MichalKelnar_1267496的设计改编而成。

原始设计链接: 

https://www.printables.com/model/668556-modified-voron-exhaust-filter/files

对于此配置，您将需要以下额外部件：

1x BIGTREETECH SFS V2.0 模块；1x 60mm 轴流风扇



4、Voron-Exhaust-UTK-with-fan: 原始 Voron design V2.4 排气罩，带有 60mm排气风扇。由于 CPAP 风扇位置的原因，需要一个强力的 60mm 风扇来保持打印机机壳内的负压；请注意，这也将产生较高的噪音，因为风扇没有被封闭。

对于此配置，您将需要以下额外部件：

1x 60mm 轴流风扇

## **产品购买链接**

购买链接:
https://biqu.equipment/products/universal-turbo-kit



**如果您对产品有任何问题，请与我们联系并提交支持工单.**
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

