# EZ5160 Pro

!!! info
    此界面已迁移到 Bigtreetech WiKi NEO

    [EZ5160 Pro Bigtreetech WiKi NEO](https://neo.bttwiki.com/docs/module-docs/ez-series/ez-5160/ez-5160-intro)
    
<img src=img/EZ5160Pro/EZ5160Pro_Title.png width="600"/>  

## **产品简介**

TMC5160是一款大功率步进电机驱动控制芯片，外接MOSFET，其最大电压可达48V，因此支持的步进电机范围更宽，适应性更高。

## **功能亮点**

- 采用外置MOSFET，可以支持更高的电压和更大的电流，最大电流可达8A（由于模块受尺寸和连接器的限制，电流不能超过3A）；
- 超静音模式；
- 发热量低，远低于2100、2130等驱动因素；
- 可防止电机抖动；
- 不易失步；
- 可驱动57台步进电机；
- 采用新开发的板框与新连接器相匹配，让客户体验到美感，避免了旧驱动针扎手的事故；
- 采用新型特制散热片，增强散热效果，保护驱动芯片不受外部损坏；
- 采用环保包装，提高成本效益。

## **规格**

| **产品尺寸**       | **18.5 x 20mm**                            |
| ------------------ | ------------------------------------------ |
| **芯片驱动器**     | **TMC5160-TA**                             |
| **输入电压（VM）** | **8V-48V**                                 |
| **最大电流**       | **2.5A，峰值：3A（集管能承受的最大电流）** |
| **最大细分**       | **256**                                    |
| **工作模式**       | **SPI**                                    |

## **尺寸**

<img src=img/EZ5160Pro/EZ5160Pro_Diagram.png width="600"/>

## **接口示意图**

<img src=img/EZ5160Pro/EZ5160Pro_Interface1.png width="600"/>

<img src=img/EZ5160Pro/EZ5160Pro_Interface2.png width="600"/>

将EZ版本驱动程序安装到新标头的方向如下图所示：

<img src=img/EZ5160Pro/EZ5160Pro_Interface3.png width="600"/>

<table border="1">
	<tr>
    <td>J1</td><td>功能</td><td>J2</td><td>功能</td></tr>
	<tr>
    <td>1</td><td>(EN)使能</td><td>1</td><td>(VM)电机电源电压</td></tr>
	<tr>
    <td>2</td><td>(SDI/CFG1)数据</td><td>2<td>(GND)GND</td></tr>
    <tr>
    <td>3</td><td>(SCK/CFG2)时钟</td><td>3</td><td>(B2) B 相</td></tr>
    <tr>
    <td>4</td><td>(CSN/CFG3) 片选</td><td>4</td><td>(B1) B 相</td></tr>
    <tr>
    <td>5</td><td>(SDO/CFG0) 数据</td><td>5</td><td>(A1) A 相</td></tr>
    <tr>
    <td>6</td><td>(DIAG) 堵转检测</td><td>6</td><td>(A2) A 相</td></tr>
    <tr>
    <td>7</td><td>(STEP) 脉冲输入</td><td>7</td><td>(VIO) 逻辑电压</td></tr>
    <tr>
    <td>8</td><td>(DIR) 方向输入</td><td>8</td><td>(GND) GND</td></tr>
    <tr>
</table>

## **软件配置**

详情请点击：

https://bigtreetech.github.io/docs/TMC5160.html#software-configuration



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/ez-drive-easy-driver-ez2209-ez5160-pro-v1-0?variant=39787467178082



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
