# Pi2

<img src=img/Pi2/Pi2_Title.png width="600" />

## **产品简介**

BIGTREETECH Pi 2 采用性能更优的四核 A55-RK3566 芯片，接口功能丰富多彩，内置eMMC5.1，板载支持 2.4G/5G 双模，WIFI 传输速度高达 433.3Mbps，还支持蓝牙 BT5.2版本，与树莓派相同的安装孔位置，安装使用起来方便快捷。

## **产品特点**

* CPU: 瑞芯微 RK3566，四核 Cortex-A55 @1.8GHz
* GPU: Mali-G52 1-Core-2EE
* NPU: 0.8 TOPS NPU
* RAM: 2GB LPDDR4（其它可以定制 1GB/2GB/4GB/8GB）
* 板载 eMMC 32G（其它可以定制 8GB/32GB/64GB/128GB…）
* MIPI DSI 显示支持(320P-1080P 60HZ)
* SPI FLASH：可以定制 W25Q256JWEIQ
* 摄像头 2-Lane MIPI CSI2 (320P-1080P 60HZ)
* 3 路 USB2.0 端口 1 路 USB3.0
* PCIe PCIe 2.1 1x1 Lane （ 支持型号：M.2 2242 4PIN+5PIN）
* 支持 TF 卡（SDIO2.0）
* 千兆以太网/WiFi（433.3Mbps）/BT5.2
* Audio 接口，3.5mm 兼容 MIC 输入
* 电容麦输入接口
* 40Pin GPIO
* HDMI2.0 OUT(480P-4k 60hz) 
* 板载红外接收头(38khz)
* 与树莓派相同的安装孔位置
* 24VDC 输入接口

## **产品参数**

| **外观尺寸**        | **93.8mm x 56mm**                        |
| ------------------- | ---------------------------------------- |
| **安装尺寸**        | **58.2mm x 49.4mm**                      |
| **Type-C 输入电压** | **DC 5V±5%/2A**                          |
| **输出电压**        | **3.3V±2%/100mA**                        |
| **WiFi**            | **2.4G/5G, 802.11 ac/a/b/g/n/ 无线标准** |
| **Bluetooth**       | **5.2**                                  |

## **尺寸图**

<img src=img/Pi2/Pi2_Dimensions.png width="600" />

## **外设接口**

### 接线图

<img src=img/Pi2/Pi2_Interface1.png width="600" />

<img src=img/Pi2/Pi2_Interface2.png width="600" />

## **接口介绍**

### 供电方式

输入:

·	UBS-C: DC 5V 2A 

·	接线端子: DC 12-24V

<img src=img/Pi2/Pi2_Power1.png width="600" />



### 40 pin GPIO

<img src=img/Pi2/Pi2_GPIO.png width="1200" />

GPIO 引脚的计算方式如下：

GPIO4_B2 = (‘B’ - ‘A’) * 8 + 2 = 1 * 8 + 2 = gpiochip4/gpio10

GPIO3_D7 = (‘D’ - ‘A’) * 8 + 7 = 3 * 8 + 7 = gpiochip3/gpio31

### UPS POWER

<img src=img/Pi2/Pi2_UPS.png width="600" />

规格为PH-2.0MM-5Pin 卧式，可配我司的SKSM模块使用（需要自行压接线缆和端子）

<img src=img/Pi2/Pi2_SPI.png width="600" />

规格型号：W25Q256JWEIQ (出厂默认不带此芯片，如有需要请联系定制)

### SPDIF OUT

<img src=img/Pi2/Pi2_SPDIF.png width="600" />

### eMMC-EN

默认 OFF 挡，代表可以正常使用 eMMC，如不使用 eMMC 启动，把 EMMC-EN 档位拨到 ON档，会将 eMMC 的信号线短路到 GND，禁用 eMMC 启动

<img src=img/Pi2/Pi2_eMMC.png width="600" />

### OTG

OTG 模式，请把 OTG KEY 拨到 ON 档,（注意：黑色 USB2.0 将不能正常工作）

<img src=img/Pi2/Pi2_OTG.png width="600" />

### MIC IN

<img src=img/Pi2/Pi2_MIC.png width="600" />

### DSI

<img src=img/Pi2/Pi2_DSI.png width="600" />

<img src=img/Pi2/Pi2_DSI1.png width="600" />

### CSI

<img src=img/Pi2/Pi2_CSI.png width="600" />

<img src=img/Pi2/Pi2_CSI1.png width="600" />

## **烧录系统**

### 下载系统镜像

只能下载安装我们提供的系统镜像:

https://github.com/bigtreetech/CB2/releases

### 烧录系统到 MicroSD 卡

1、下载 balenaEtcher（https://www.balena.io/etcher/）软件，安装并运行

2、将 Micro SD 卡通过读卡器插入到电脑

3、S选择下载到电脑中的镜像

<img src=img/Pi2/Pi2_System35.png width="600" />

4、选择待烧录的 Micro SD 卡（烧录镜像会将 Micro SD 卡格式化，千万注意不要选错盘符，否则会将其他存储上的数据格式化），点击“烧录”

<img src=img/Pi2/Pi2_System36.png width="600" />

5、等待烧录完成。

<img src=img/Pi2/Pi2_System37.png width="600" />

### 烧录系统到 eMMC

#### 烧录系统到 eMMC

下载 RKDevTool（https://github.com/bigtreetech/CB2）到电脑上并解压。并且注意不要插 MicroSD 卡。

1、如下图所示，将 USB OTG 的拨码开关拨到 ON 挡位，此时 USB OTG 端口接到了Type-C 上，将 eMMC 的拨码开发拨到 OFF 挡位，此时 RK3566 可以正常访问 eMMC

<img src=img/Pi2/Pi2_System1.png width="600" />

2、按住“Recovery”键，然后用 Type-C 线将 BIGTREETECH Pi 2 插到电脑上，通电 3s后即可松开按键。

<img src=img/Pi2/Pi2_System2.png width="600" />

3、安装驱动

① 在“设备管理器”中，如果发现“未知设备”意味着电脑缺少驱动

<img src=img/Pi2/Pi2_System3.png width="600" />

② 打开下载的 RKDevTool 中的 DriverAssitant 工具，先点击“①驱动卸载”，再点击“②驱动安装”，这样可以保证安装的驱动为最新版本的。

<img src=img/Pi2/Pi2_System4.png width="600" />

③ 等待安装完成后，按住“Recovery”键，重新拔插一下 Type-C 线，“设备管理器”会识别出“Rockusb Device”，意味着驱动已经安装成功

<img src=img/Pi2/Pi2_System5.png width="600" />

4、打开“RKDevTool”软件

<img src=img/Pi2/Pi2_System6.png width="600" />

注意：软件中的参数默认如图所示，正常情况下仅需要设置④“.img 系统实际的路径”即可。如果您软件中的参数与图中不一致，请手动修改为一致。

<img src=img/Pi2/Pi2_System7.png width="600" />

① 找到下载的工具所在的路径

② 打开 RKDevTool 工具

③ 软件会识别出一个“LOADER”或者“MASKROOM”的设备

④ 选择要烧录的系统（系统镜像需要提前解压为.img 文件，此工具不支持直接烧录压缩后的.xz 文件）

⑤ 勾选“Write by Address”

⑥ 点击“Run”，开始烧录系统

⑦ “Download image OK”意味着系统已经烧录成功

5、烧录完成后，请将 USB OTG 的拨码开关拨到 OFF 挡位，此时即可正常开机使用了。注意：eMMC 内的文件无法像 MicroSD 卡那样直接被电脑访问，所以无法通过修改system.cfg 配置文件的方式配置 WiFi 网络，只能用网线或者 USB 转 UART 连接终端，然后通过终端配置。

#### 使用 MicroSD 卡烧录系统到 eMMC

1、如下图所示，将 eMMC 的拨码开发拨到 OFF 挡位，此时 RK3566 可以正常访问 eMMC

<img src=img/Pi2/Pi2_System8.png width="600" />

2、先将系统烧录到 MicroSD 卡中，然后将 MicroSD 卡插到主板的卡槽，然后等待系统启动。

3、通过网线，WiFi 或者 USB 转 UART 连接到系统的终端，登录系统

login: `biqu`

password: `biqu`

① 运行 sudo nand-sata-install 命令，在弹出的界面中，选择 “2 Boot 

From eMMC - system on eMMC”, 然后选择 “OK”

<img src=img/Pi2/Pi2_System9.png width="600" />

② 选择 “Yes”，开始擦除并烧录系统到 eMMC

<img src=img/Pi2/Pi2_System10.png width="600" />

③ 选择文件系统为 “1 ext4”，然后选择 “OK”

<img src=img/Pi2/Pi2_System11.png width="600" />

④ 等待烧录完成

<img src=img/Pi2/Pi2_System12.png width="600" />

⑤ 烧录完成后会弹窗提示是否关机，选择“Power off”关机

<img src=img/Pi2/Pi2_System13.png width="600" />

⑥ 关机后断电，然后拔出 MicroSD 卡，重新再通电即可从 eMMC 启动

### 擦除 eMMC

当不使用 eMMC，而使用 MicroSD 卡作为系统卡时，最好将 eMMC 的数据擦除，以免主板错误的从 eMMC 启动。

#### 使用 RKDevTool 擦除 eMMC (Windows)

1、参照“**使用 RKDevTool 烧录系统到 eMMC**”中的步骤，将主板连接到电脑

2、打开“RKDevTool”软件

<img src=img/Pi2/Pi2_System14.png width="600" />

① 找到下载的工具所在的路径

② 打开 RKDevTool 工具

③ 软件会识别出一个“LOADER”的设备，如果是“MASKROOM”则说明 eMMC中没有数据，不需要擦除

④ 点击“Advanced Function”

⑤ 点击“EraseAll”开始擦除 eMMC 中的数据

⑥ “Erasing sectors success”擦除完成

#### 从 MicroSD 卡启动系统后擦除 eMMC

1、参照“**4.3.2 使用 MicroSD 卡烧录系统到 eMMC**”中的步骤，登录到系统终端

2、运行 sudo mkfs /dev/mmcblk1 命令，然后输入“y”确认。

<img src=img/Pi2/Pi2_System15.png width="600" />

## **系统配置**

### 使用网线

网线即插即用，不需要额外的设置

### 设置 WiFi

系统镜像烧录完成后，MicroSD 卡会有一个被电脑识别的 FAT32 分区，此分区下有个名为"system.cfg" 的配置文件，打开后将 Your SSID 替换为实际的 WIFI 名称，Your Password 替换为实际的密码

<img src=img/Pi2/Pi2_System16.png width="600" />

### 配置 overlays

打开 BOOT 分区下的 armbianEnv.txt 文件,设置 overlays 的值。配置文件中同一时间仅支持打开一行 overlays，如果打开了多行 overlays 的配置，只会生效最后一行的配置。如果有打开多个 overlays 配置的需求，可以将多个配置的内容放在同一行overlays 后面，并且多个配置中间用一个空格隔开。例如我们需要同时使用 DSI 屏幕、mcp2515 SPI 转 CAN 模块，和 I2C1：

<font  color="blue">**overlays=dsi mcp2515 i2c1**</font>

<img src=img/Pi2/Pi2_System17.png width="600" />

### 配置显示屏

1、打开 BOOT 分区下的 armbianEnv.txt 文件

<img src=img/Pi2/Pi2_System18.png width="600" />

2、overlays 默认设置为 hdmi，代表系统默认使用 hdmi 屏幕。可以将其修改为实际使用的屏幕，可设置的选项如下:

· "hdmi": [HDMI 接口的屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-hdmi5-v1-0-hdmi7-v1-0)

· "dsi": [DSI接口的屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-pi-tft43-v2-0-screen-board)

· "tft_35": [SPI 接口 3.5 寸屏幕](https://biqu.equipment/collections/lcd/products/bigtreetech-tft35-spi-v2-1-touchscreen-io2can-module)

· 

其中“tft_35”还有一个参数“tft35_spi_rotate”在系统级旋转显示界面，默认的“0”代表不旋转，可使用的参数还有“90”，“180”，“270”。

**注意：**屏幕只能选择使用其中的一个，无法同时使用多个屏幕

3、设置 KlipperScreen，打开 BOOT 分区下的 system.cfg 文件，设置屏幕的类型`ks_src`，和旋转角度`ks_angle`

<img src=img/Pi2/Pi2_System19.png width="600" />

### SPI 转 CAN 的使用

打开 BOOT 分区下的 armbianEnv.txt 文件，将“mcp2515”添加到 overlays 的配置中

<img src=img/Pi2/Pi2_System20.png width="600" />

### CSI 相机使用及 crowsnest 配置

无论是 rpi v1.3 的 ov5647 还是 rpi v2 的 imx219 均不需要在 armbianEnv.txt 文件中配置 overlays，即插即用。

crowsnest.conf 文件中的配置如下图所示：

<font  color="blue">**device: /dev/video0**</font> #  CSI 相机的节点固定为 video0

<font  color="blue">**custom_flags: --format=UYVY**</font> # 当前系统 CSI 相机不支持默认的 YUYV，需要设置为支持的 UYVY 格式

<img src=img/Pi2/Pi2_System21.png width="600" />

### 蓝牙的使用

1、扫描蓝牙设备，输入如下命令，出现如下列表的蓝牙设备，如下图

<font  color="blue">**bluetoothctl --timeout 15 scan on**</font>

<img src=img/Pi2/Pi2_System22.png width="600" />

2、找到自己的蓝牙设备，比如我的蓝牙设备名字是 HONOR xSport PRO，在设备列表中找到对应的蓝牙 MAC ID 如下图

<img src=img/Pi2/Pi2_System23.png width="600" />

3、连接蓝牙设备，输入如下命令，连接成功如下图

<font  color="blue">**bluetoothctl connect E0:9D:FA:50:CD:4F**</font>

<img src=img/Pi2/Pi2_System24.png width="600" />

① 若出现如下图输出，请重新打开蓝牙设备，然后重新按 1 和 2 的步骤连接蓝牙设备

<img src=img/Pi2/Pi2_System25.png width="600" />

② 若如下图输出，请输入如下命令，然后重新进行 1 和 2 步骤:

<font  color="blue">**bluetoothctl remove E0:9D:FA:50:CD:4F**</font>  <font  color="red">**您的蓝牙设备对应的MAC ID)**</font>

<font  color="blue">**rfkill block bluetooth**</font>

<font  color="blue">**sleep 3s**</font>

<font  color="blue">**rfkill unblock bluetooth**</font>

<font  color="blue">**pulseaudio -k**</font>

<font  color="blue">**pulseaudio –start**</font>

<img src=img/Pi2/Pi2_System26.png width="600" />

4、蓝牙使用中途退出语音播放功能，如果不能再次使用蓝牙，需要手动删除对应的播放进程，用 ps 命令查看播放的进程号，然后用 kill -9 进程号 删除对应的播放进程。如下图所示

<img src=img/Pi2/Pi2_System27.png width="600" />

### 3.5mm 圆口耳机设置

1、输入命令: <font  color="blue">**aplay -l**</font>

查看对应的声卡，如下图所示 (由图所示耳机口的声卡对应的是 <font  color="blue">**card 0**</font>).

<img src=img/Pi2/Pi2_System28.png width="600" />

2、输入命令:

<font  color="blue">**amixer -c 0 contents**</font>	(**0 表示的上述的 aplay -l 所找到的 card 0**)

查看播放通道和录音通道设置，如下图所示.

<img src=img/Pi2/Pi2_System29.png width="600" />

3、输入命令:

<font  color="blue">**amixer -c 0 cset numid=1 3**</font>

设置播放通道，如下图所示.

<img src=img/Pi2/Pi2_System30.png width="600" />

4、 输入命令:

<font  color="blue">**amixer -c 0 cset numid=2 1**</font>

设置录音通道，如下图所示.

<img src=img/Pi2/Pi2_System31.png width="600" />

5、输入如下命令播放音频，音频文件目录 xxx 加音频文件名 xxxxx.wav

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxxx.wav**</font>

6、输入如下命令录音（其中 10 表示录音 10 秒），录音存放的目录是 xxx，文件名 xxxx.wav:

<font  color="blue">**sudo arecord -Dhw:0,0 -d 10 -f cd -r 44100 -c 2 -t wav /xxx/xxxx.wav**</font>

7、输入如下命令播放录音：

<font  color="blue">**aplay -D plughw:0,0 /xxx/xxxx.wav**</font>

## **SSH 连接设备**

1、安装 ssh 软件 Mobaxterm: 

https://mobaxterm.mobatek.net/download-home-edition.html

2、通电后等待系统启动，大概 1~2 分钟

3、设备连上 WIFI 或者插上网线后，会被自动分配一个 IP 

4、进入路由器管理界面找到设备的 IP（这里应为 BTT-CB2）

<img src=img/Pi2/Pi2_System32.png width="600" />

5、打开已经安装的 Mobaxterm 软件，点击“Session”，在弹出的窗口中点击“SSH”，在 Remote host 一栏中输入设备的 IP 地址，点击“OK”（注意：电脑和设备必须要在同一个局域网下）

<img src=img/Pi2/Pi2_System33.png width="600" />

6、输入登录名和登录密码进入 SSH 终端界面

登录名 login as：`biqu`

密码：`biqu`

<img src=img/Pi2/Pi2_System34.png width="600" />

## **注意事项**

1、上电后大概 10s 左右，系统进入 kernel 阶段。此时蓝灯常亮，绿灯会不断的闪烁，代表系统在正常运行。

2、root 管理员

login：`root`

password：`root`

biqu 普通用户：

login：`biqu`

password：`biqu`



3、PCIe M.2 接口不支持热插拔，需要预先插上固态硬盘才能识别到设备。

4、使用 eMMC 启动时，不要插 MicroSD 卡。使用 MicroSD 卡启动时，需要将 eMMC 中的数据擦除。



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

