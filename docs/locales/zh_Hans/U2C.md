# U2C

<img src=/img/U2C/U2C_Title1.webp width="600"/>

<img src=/img/U2C/U2C_Title2.webp width="600"/>

## **产品简介**

BIGTREETECH U2C 是一款 USB 转 CAN 总线的模块，可以通过它将 Raspberry Pi 的 USB端口转为 CAN 总线，通过 CAN 总线连接 3D 打印主板、BIGTREETECH EBB35/36/42 CAN 等产品。板上具有多种不同形态的 CAN 接口，有助于连接到不同的板子上。

由于 CAN 总线在工业控制领域的诸多优势，所以我司推出了此 USB 转 CAN 模块。CAN总线传输距离较远，并且总线上可以挂载大量的节点，所以主板、EBB、其他扩展板可以同时挂载到同一个 CAN 总线上。

## **功能亮点**

- 支持 CAN 总线连接，数据传输较远、抗噪声能力强、实时性强、可靠性高
- PCB 表面采用沉金工艺
- TYPE-C 口 ESD 保护，防止静电损坏硬件
- 支持通过 SWD 或者硬件 DFU 方式给主控更新固件
- 丰富的 CAN 接口

## **产品尺寸**

<img src=/img/U2C/U2C_Dimension.webp width="600"/>

## **接口示意图**

<img src=/img/U2C/U2C_CAD.webp width="600"/>

CAN_IN: USB 转 CAN 接口，用于连接树莓派。

CAN_OUT*: 用于连接无 CAN 收发器但具备 CAN 功能的接口，比如连接主板的 USB 口，其中，主板 USB 口与主控连接的引脚要具备 CAN 功能。例如：

<img src=/img/U2C/U2C_CAD1.webp width="600"/>

CAN_OUT: 用于连接 BIGTREETECH EBB CAN 或其他具备 CAN 收发器的板子。

Power: 电源.

## **引出线**

<img src=/img/U2C/U2C_Pinout.webp width="600"/>

## **产品展示**

<img src=/img/U2C/U2C_Display1.webp width="600"/>

<img src=/img/U2C/U2C_Display2.webp width="600"/>

<img src=/img/U2C/U2C_Display3.webp width="600"/>

<img src=/img/U2C/U2C_Display4.webp width="600"/>

<img src=/img/U2C/U2C_Display5.webp width="600"/>

## **硬件配置**

### **可选择的接线图**

<img src=/img/U2C/U2C_Wiring.webp width="600"/>

## **软件配置**

### **固件源代码**

V1.0/1.1 使用开源CandleLight固件: 

https://github.com/candle-usb/candleLight_fw 

MCU 型号为: STM32F072C8

V2.0/2.1 在开源的 candlelight 基础上增加了 STM32G0 芯片的支持:

https://github.com/bigtreetech/candleLight_fw/tree/stm32g0_support 

MCU 型号为: STM32G0B1C8

### **固件更新**

模块完全断电，按住 Boot 按钮，插入 Type-C 数据线给模块供电，进入 DFU 模式，使用STM32CubeProgrammer 软件更新固件

<img src=/img/U2C/U2C_DFU.webp width="600"/>

### **Klipper 配置**

固件配置参考: https://www.klipper3d.org/CANBUS.html

1.在 ssh 终端中输入

```
sudo nano /etc/network/interfaces.d/can0 
```

并执行

```
auto can0
iface can0 can static
bitrate 500000
up ifconfig $IFACE txqueuelen 1024
```

<font  color="red">***将 CANBus 速度设置为 500K (必须与固件中设置的速度一致 (500000) CAN bus speed), 修改后保存 (Ctrl + S) 并退出 (Ctrl + X), 输入 sudo reboot 重启树莓派***</font>

2.CANBus 上的每个设备都会根据 MCU 的 UID 生成一个 canbus_uuid，要查找每个微控制器设备 ID，请确保硬件已通电并正确接线，然后运行:

```
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
```

3.如果检测到未初始化的 CAN 设备，上述命令将报告设备的 canbus_uuid:

```
Found canbus_uuid=0e0d81e4210c
```

4.如果 Klipper 已经正常运行并且连接到此设备，那么 canbus_uuid 将不会被上报，此为正常现象

## **注意事项**

- 12/24V 和 GND 不要接反。
- 使用 CAN 通讯时，需要看哪个 CAN 节点用作终端，如果是终端，必须将 120R 位置插上跳线帽；



## 产品购买链接

**购买链接:**

https://biqu.equipment/products/bigtreetech-ebb-36-42-can-bus-for-connecting-klipper-expansion-device?variant=39762747949154



**如果您对产品有任何问题，请与我们联系并提交支持工单。**

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
