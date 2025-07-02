# SKR MINI E3

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Title.png width="600" />

## **产品简介**

BTT SKR MINI E3 V3.0是必趣创新科技（深圳）有限公司3D打印团队为Ender3设计的主板，是对Ender3原有主板的完美替代。

## **功能亮点**

- 重新设计的主板ID（工业设计）使其美观
- 采用STMicroelectronics G0系列MCU STM32G0B1RET6
- 升级后的散热器提高了散热效果
- 热敏电阻输入受到保护，不会对Vin短路
- 增加了第三个PWM控制的冷却风扇输出
- 采用MicroUSB代替MiniUSB接口
- 为SPI输出头增加+3.3V电源

## **规格**

<table border="1">
	<tr>
    <td><b>产品尺寸：</b></br>103.75*70.25mm</td><td><b>安装尺寸：</b></br>请参阅BTT SKR MINI E3 V3.0-SIZE.pdf了解更多信息</td></tr>
	<tr>
    <td><b>板层：</b></br>4</td><td><b>MCU:</b></br>ARM Cortex-M0+STM32G0B1RET6</td></tr>
	<tr>
    <td><b>电源输入：</b></br>DC 12/24V</td><td><b>逻辑电压：</b></br> 3.3V</td></tr>
    <tr>
    <td><b>电机驱动器：</b></br>板载TMC2209的UART模式</td><td><b>电机驱动器接口：</b></br> XM, YM, ZAM, ZBM, EM</td></tr>
    <tr>
    <td><b>温度传感器接口：</b></br>TH0, THB, 2-way 100K NTC (RTD)</td><td><b>显示屏：</b></br>2.4英寸TFT、3.5英寸TFT、Ender3原装LCD12864屏幕等。</td></tr>
	<tr>
    <td><b>PC通讯接口：</b></br>Micro B型，易于插入，</br> 通信波特率115200</td><td>			<b>文件格式：</b>	</br>G-code</td></tr>
	<tr>
    <td colspan="5"><b>推荐软件：</b></br>Cura、Simplify3D、Pronterface、Repetier主机、Makerware</td></tr>
	<tr>
</table>
## **尺寸**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Dimension.png width="600" />

## **外围设备接口**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Pinout_CN.png width="600" />

## **接口介绍**

### **主板指示灯说明**

当主板通电时：

- 电源指示灯=红色。持续亮起=正常电源。
- 状态指示灯=红色。固件更新期间闪烁。否则由固件控制。
- D8热床HB状态指示灯绿灯：加热时常亮，不加热时熄灭。
- 加热棒E0状态指示灯D6绿光：加热时常亮，不加热时熄灭。
- 数控风扇FAN0状态指示灯D10绿色指示灯：打开时点亮，关闭时熄灭。
- 数控风扇FAN1状态指示灯D7绿色指示灯：打开时点亮，关闭时熄灭。
- D3数控风扇FAN2状态指示灯绿色指示灯：打开时亮，关闭时关。
- D9 SD卡状态指示灯的绿色指示灯：插入SD卡时亮起，拔出时熄灭。

### 无传感器归位功能

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Sensorless.png width="600" />

如图所示，将相应的轴与跳跃帽连接，以选择无传感器归位功能。

**<font  color="red">注意：如果选择此功能，则不能使用外部ENDSTOP！ </font>**

### **用于BLtouch、TFT、RGB接口的5V电源**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Power.png width="600" />

1、 要使用板载5V PSU，请使用跳线短接上图所示的引脚

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Power1.png width="600" />

2、要使用外部BIGTREETECH DCDC5V V1.0模块，请使用跳线短接上图所示的引脚。

### **冷却风扇的连接**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Fan.png width="600" />

通过FAN2连接风扇，实现整机制冷。

**<font  color="red">请注意，工作电压与输入电源电压相同，以避免损坏。 </font>**

### **连接BIGTREETECH继电器V1.2**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Relay.png width="600" />

### **连接至BTT UPS 24V V1.0**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_UPS.png width="600" />

### **连接到Neopixel灯**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_Neopixel.png width="600" />

### **连接至BL触摸**

<img src=img/SKR_MINI_E3/SKR_MINI_E3_BLtouch.png width="600" />

## **软件配置**

### **主板与PC机的通讯**

主板可以使用USB接口与PC进行通信。

相同的USB接口可用于与Raspberry pi或任何其他主机设备进行通信。

<img src=img/SKR_MINI_E3/SKR_MINI_E3_COM.png width="600" />

### **主板固件**

该包包含用于测试的固件（Ender3），可以直接使用，也可以根据您的需要进行更改。

**如何获取固件**

- 联系我们的客服或技术支持；

- 登录我们的网站下载：https://github.com/bigtreetech

**主板固件更新**

- 将firmware.bin复制到SD卡的根目录

- **<font  color="red">注意：不要更改文件名！</font>**
- 将SD卡插入插槽，重新通电或重置，更新将在10S后完成，在更新过程中，您应该会看到状态LED闪烁红色。。

**请参阅BTT SKR MINI E3 V3.0-PIN.pdf**

- 用于主板固件DIY。


## **注意事项**

- SD卡中固件的文本形式和文件名不能从“firmware.bin”更改。
- 必须在通电前进行接线。
- LCD屏幕仅支持具有CR10_STOCKDISPLAY接口的LCD12864屏幕。



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-skr-mini-e3-v2-0-32-bit-control-board-for-ender-3



**如果您对产品有任何问题，请与我们联系并提交支持工单**

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
