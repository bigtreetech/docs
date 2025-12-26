# SKSM

<img src=/img/SKSM/SKSM_Title.webp width="600" />

## **产品简介**

SKSM 是 BIGTREETECH 推出的一款具有实现断电数据保存功能的 3D 打印机外接模块，适用于使用 Klipper 固件的 DC12-24V 以内的开关电源供电的 3D 打印机，如 Ender 3 打印机。

## **特点**

- 采用电压比较器 MCU 芯片，断电检测灵敏。
- 搭载 2 个 2.7V 20F 的超级电容蓄电，使得检测到断电后有充足的电能供给，让打印机顺利完成相应的操作。
- 电源接口处增设有防反接的保护电路，预防反接电源带来的不可逆损坏，大大的保护了电路板。
- 模块小巧，便于安装。
- 主要功能：实现断电保存功能。
- USB 电源输出+5V/2A。

## **产品参数**

| **外观尺寸**     | **40.8mm*32.9mm**                                          |
| ---------------- | ---------------------------------------------------------- |
| **电源输入**     | **DC12-24V**                                               |
| **输出电压**     | **BAT +5V/2A**                                             |
| **输出电压**     | **USB +5V/2A**                                             |
| **充电时间**     | **100 秒钟（上电开始计算）**                               |
| **电池输出功率** | **5W 放电时间 13 秒（请注意带载功率）**                    |
| **支持机型**     | **使用 Klipper 的 DC12-24V 供电的 3D 打印机（如 Ender3）** |

## **产品尺寸**

<img src=/img/SKSM/SKSM_Dimensions.webp width="600" />

## **模块通电**

SKSM 上电之后，左上角的红灯，（电容完全没有电时，LED 灯上电等待 15秒开始闪亮）充电时红灯闪亮， BAT+5V 开始正常放电时，红灯常亮

<font  color="red">**注：输入电源只支持 DC12-24V，接线时注意分清正负极，接线过程必须在断电状态下进行，确认接线无误方可上电；因接线有无造成的损失，我司不予承责。**</font>

## **模块与打印机主板通信**

SKSM 与主板通过 XH2.54mm 5P 插线进行通信，接线时请认准信号线“PB0 PB1 PB2”的位置，只有信号线与主板信号线接口正确连接方可实现断电保存功能。

<img src=/img/SKSM/SKSM_Connection.webp width="600" />

<img src=/img/SKSM/SKSM_Connection1.webp width="600" />

**引脚说明：**

1、PB0 SKSM(INPUT PIN)：输入检测，高电平有效。接收来自主机的高电平信号。

2、PB1（OUTPUT PIN）：掉电时输出低电平信号；当主机检测到该信号时，数据将被同步并且系统将关闭。

3、PB2（OUTPUT PIN）：如果断电期间恢复供电，则输出低电平信号以复位主机。主机需要支持该功能（请参阅：注意事项，第 3 点）。

### SKSM + BIGTREETECH Pi V1.2 接线图

<img src=/img/SKSM/SKSM_Wiring.webp width="600" />

<font  color="red">**注意：2.54MM 插座处+5V 为应急电源输出，不做常用供电输出，请使用 USB-C供电。**</font>

### 树莓派接线图

<img src=/img/SKSM/SKSM_Wiring1.webp width="600" />

<font  color="red">**注意：2.54MM 插座处+5V 为应急电源输出，不做常用供电输出，请使用 USB-C供电。**</font>

### SKSM + BIGTREETECH Pi 2 V1.0.1 接线图

<img src=/img/SKSM/SKSM_Wiring2.webp width="600" />

### SKSM+Manta 接线图

<img src=/img/SKSM/SKSM_Wiring3.webp width="600" />

## **系统配置**

### BIGTREETECH Pi V1.2 的用法：

1、通过输入 IP 地址远程登录软件访问 BIGTREETECH Pi V1.2

2、发送命令：sudo nano /boot/boardEnv.txt

3、按照图片进行修改

<img src=/img/SKSM/SKSM_System.webp width="600" />

4、修改后保存 Ctrl + S 并退出 Ctrl + X（或者直接 Ctrl + X 退出，按 Y 确认更改并回车保存），输入 sudo reboot 重启上位机。

### BIGTREETECH Pi 2 的用法：

1、通过输入 IP 地址远程登录软件访问 BIGTREETECH Pi 2。

2、发送命令：sudo nano /boot/armbianEnv.txt。

3、启用图片上的内容。

<img src=/img/SKSM/SKSM_System1.webp width="600" />

4、修改后保存 Ctrl + S 并退出 Ctrl + X（或者直接 Ctrl + X 退出，按 Y 确认更改并回车保存），输入 sudo reboot 重启上位机。

### 树莓派用法：

树莓派和上面操作类似，树莓派需要将装有系统镜像的 SD 卡插入电脑中，在config.txt文件中添加dtoverlay=gpio-shutdown,gpio_pin=21这一行命令，然后保存退出即可。


## **注意事项**

<font  color="red">**1、模块检测到DC12-24V掉电后最长会维持15s的5V输出(15S时间负载为5V-1A)**</font>

2、BIGTREETECH Pi 2 搭配 SKSM 使用时，需要使用 12V-24V 电源供电，不能使用TYPE-C 5V 供电（为确保模块工作正常，SKSM 板内 5V 输出电压不能低于 4.9V，否则 SKSM 会从内部升压取电，电容会一直处于充电状态，导致模块持续发热）

3、SKSM 上的复位引脚可以接在带有电源复位的上位机，例如 BIGTREETECH Pi 2，树莓派 4B（如没有接上复位线会出现主机掉电马上又来电的情况下主机还是会进入待机，不会自动重新启动，要手动重新启动主机）。
