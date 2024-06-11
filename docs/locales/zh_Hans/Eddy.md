# Eddy

<img src=img/Eddy/Eddy_Title.png width="600" />

***Eddy 安装视频***

<video width="500" height="300" controls>
    <source src="img/Eddy/installationcn.mp4" type="video/mp4">
</video>





## **功能亮点**

- 整体体积小，重量轻；
- 具备温度补偿功能；
- 高效率调平；
- 应用广泛，兼容性强；
- 精度高，稳定性强；
- 非接触式；

## **规格**

| **产品名称** | **Eddy**                                            |
| ------------ | --------------------------------------------------- |
| **产品重量** | **6g**                                              |
| **电压**     | **5V**                                              |
| **静态电流** | **30mA**                                            |
| **工作电流** | **30mA**                                            |
| **电缆长度** | **2.5 m（USB 版），15cm（coil 版）**                |
| **接线**     | **USB：4pin, 间距 1.5mm**                           |
|              | **Coil：4-2.54mm 杜邦母头，一头 ZH1 5mm 4P 连接器** |
| **使用温度** | **≤60℃ 环境温度**                                   |
| **标准误差** | **0.5μm**                                           |
| **适配机型** | **所有使用 Klipper 的 FDM 打印机**                  |

## ****尺寸****

<img src=img/Eddy/Eddy_Dimensions.png width="600" />

<font  color="red">**注意：在安装 Eddy 时，底部之于喷嘴的位置需至少在喷嘴上面 1-2 mm。**</font>

线圈中心点如下:

<img src=img/Eddy/Eddy_Dimensions1.png width="600" />

## **BOOT 按键说明**

<img src=img/Eddy/Eddy_Instructions.png width="600" />

<font  color="red">**注意：仅仅 Eddy V1.0 拥有 BOOT 功能，Eddy Coil V1.0 上的按键无功能。**</font>

## **安装指南** 

### voron2.4 为例

安装位置，完全替代原有 PL-08N 安装位

使用两颗 M3*25 螺丝（包装内附）将模块固定再 X Carriage 打印件上，如视图

<img src=img/Eddy/Eddy_Installation1.png width="600" />

<img src=img/Eddy/Eddy_Installation2.png width="600" />

### Eddy + Manta M5P

<img src=img/Eddy/Eddy_Connection.png width="600" />

### Eddy + Manta M8P V2.0

<img src=img/Eddy/Eddy_Connection1.png width="600" />

### Eddy Coil + EBB36 V1.2

<img src=img/Eddy/Eddy_Connection2.png width="600" />

### Eddy Coil + EBB42 V1.2

<img src=img/Eddy/Eddy_Connection3.png width="600" />

## **固件**

### 重要提示

1、Klipper 还没有合并[快速扫描的 PR](https://github.com/Klipper3d/klipper/pull/6558)，所以在此之前请使用 BIGTREETECH 版本的 Klipper。

在 ssh 终端中运行以下命令

<font  color="blue">**cd ~/klipper/**</font>

<font  color="blue">**git remote add eddy** https://github.com/bigtreetech/klipper</font>

<font  color="blue">**git fetch eddy**</font>

<font  color="blue">**git checkout eddy/eddy**</font>

然后执行以下命令，重启 Klipper 服务:

<font  color="blue">**sudo systemctl restart klipper**</font>

2、Eddy 进行温度补偿时热床温度较高，谨防烫伤

### 编译固件

<font  color="red">**USB 版本需要更新 Eddy 内置的 MCU 固件，而 coil 版本需要更新其连接的主板的 MCU 固件。**</font>

1、SSH 连接到树莓派后，在命令行输入：

<font  color="blue">**cd ~/klipper/**</font>

<font  color="blue">**make menuconfig**</font>

使用下面的配置编译固件

<img src=img/Eddy/Eddy_System1.png width="600" />

<font  color="blue">**[*] Enable extra low-level configuration optionsMicro-controller**</font>

<font  color="blue">**Micro-controller Architecture (Raspberry Pi RP2040) --->**</font>

<font  color="blue">**Bootloader offset (No bootloader) --->**</font>

<font  color="blue">**Flash chip (W25Q080 with CLKDIV 2) --->**</font>

<font  color="blue">**Communication interface (USB) --->**</font>

<font  color="blue">**USB ids --->**</font>

<font  color="blue">**() GPIO pins to set at micro-controller startup**</font>

2、配置选择完成后, 输入 ‘q’ 退出配置界面，当询问是否保存配置时选择“Yes”；

3、输入 make 编译固件，当 make 执行完成后会在 home/pi/klipper/out 文件夹中生成我们所需要的‘klipper.uf2’固件，在 SSH 软件左侧可以直接下载到电脑中。

<img src=img/Eddy/Eddy_System2.png width="600" />

### 通过电脑更新固件

1、按住 Boot 按钮，用 USB 线将 Eddy 接到电脑的 USB 端口.

<img src=img/Eddy/Eddy_System3.png width="600" />

2、电脑会识别出一个存储设备，将上面步骤下载下来的 klipper.uf2 文件拷贝到这个存储设备，设备会自动更新固件并重启，重启后即完成了更新固件。

<img src=img/Eddy/Eddy_System4.png width="600" />

### 通过 DFU 更新固件

1、按住 Boot 按钮，用 USB 线将 Eddy 接到树莓派/BIGTREETECH Pi 的 USB 端口。

<img src=img/Eddy/Eddy_System5.png width="600" />

2、在 SSH 终端命令行中运行 lsusb 查询 DFU 设备 ID

<img src=img/Eddy/Eddy_System6.png width="600" />

3、运行:

<font  color="blue">**cd ~/klipper**</font>

<font  color="blue">**make flash FLASH_DEVICE=2e8a:0003**</font>

开始烧录固件 <font  color="blue">**(Note: Replace 2e8a:0003 with the actual ID of the device obtained in the previous step)**</font>。

4、固件烧录完成后，运行

<font  color="blue">**ls /dev/serial/by-id/***</font>

查询 USB 通信的 ID。或者在 mainsail 中也可以找到

<img src=img/Eddy/Eddy_System7.png width="600" />

### Klipper 配置

#### USB 版本配置

在 printer.cfg 中配置 eddy

<font  color="blue">**[mcu eddy]**</font>

<font  color="blue">**serial: /dev/serial/by-id/ **</font><font  color="red">**(根据上面的方法在 ssh 或 mainsail 里面查找到的实际 ID)**</font>

<font  color="blue">**[temperature_sensor btt_eddy_mcu]**</font>

<font  color="blue">**sensor_type: temperature_mcu**</font>

<font  color="blue">**sensor_mcu: eddy**</font>

<font  color="blue">**[probe_eddy_current btt_eddy]**</font>

<font  color="blue">**sensor_type: ldc1612**</font>

<font  color="blue">**z_offset: 1.0**</font> **# 不要设置为 0 即可**

<font  color="blue">**i2c_mcu: eddy**</font>

<font  color="blue">**i2c_bus: i2c0f**</font>

<font  color="blue">**x_offset: 0**</font>	**\# 根据实际相对于喷嘴的偏移量设置**

<font  color="blue">**y_offset: 20**</font>	**\# 根据实际相对于喷嘴的偏移量设置**

<font  color="blue">**data_rate: 500**</font>



<font  color="blue">**[temperature_probe btt_eddy]**</font>

<font  color="blue">**sensor_type: Generic 3950**</font>

<font  color="blue">**sensor_pin: eddy:gpio26**</font>

<font  color="blue">**horizontal_move_z: 2**</font>



<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**horizontal_move_z: 2**</font>

**\# 其他参数根据机器实际情况配置**



#### Coil 版本配置

在 printer.cfg 中配置 eddy coil

<font  color="blue">**[probe_eddy_current btt_eddy]**</font>

<font  color="blue">**sensor_type: ldc1612**</font>

<font  color="blue">**z_offset: 1.0**</font>	**\# 不要设置为 0 即可**

<font  color="blue">**i2c_mcu: EBBCan**</font>	**\# eddy coil 实际连接的主板的 mcu 名称**

<font  color="blue">**i2c_bus: i2c3_PB3_PB4**</font>	**\# eddy coil 实际连接的 I2C 总线**

<font  color="blue">**x_offset:0**</font>	**\# 根据实际相对于喷嘴的偏移量设置**

<font  color="blue">**y_offset: 20**</font>	**\# 根据实际相对于喷嘴的偏移量设置**

<font  color="blue">**data_rate: 500**</font>



<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**horizontal_move_z: 2**</font>

**# 其他参数根据机器实际情况配置**

**\# coil 版本没有内置的热敏电阻，所以无需配置 temperature_probe**



#### bed_mesh 配置

<font  color="blue">**[bed_mesh]**</font>

<font  color="blue">**speed: 50**</font>

**\# 校准 X、Y 移动的速度（毫米/秒）**

<font  color="blue">**horizontal_move_z: 2**</font>

**\# 在开始探测操作前,头部被命令移动到的高度(mm)**

<font  color="blue">**mesh_min: 10, 10**</font>

**\# 对于矩形热床，定义网格的最小 X，Y 坐标。此坐标相对于探测头的位置。这将是第一个探测点，最接近原点。矩形热床必须提供此参数。**

<font  color="blue">**mesh_max: 220, 220**</font>

**\# 对于矩形热床，定义网格的最大 X，Y 坐标。遵循与 mesh_min 相同的原则，但这将是离床原点最远的探测点。矩形热床必须提供此参数。**

<font  color="blue">**probe_count: 5, 5**</font>

**\# 对于矩形热床，这是一对逗号分隔的整数值 X，Y，定义沿每个轴探测的点数。单个值也有效，此时该值将应用于两个轴。**

**参考** https://www.klipper3d.org/Config_Reference.html#bed_mesh

<font  color="red">**[bed_mesh] 里的 horizontal_move_z 参数，建议设置为 2， 使扫描平台的时候，Eddy 尽可能的靠近平台。**</font>



#### 校准

1、上述配置完成后，首先需要校准 Eddy 的驱动电流，将 Eddy 放置在平台上方 20mm左右的地方。在 Mainsail 的 Console 执行

<font  color="blue">**LDC_CALIBRATE_DRIVE_CURRENT CHIP=btt_eddy**</font>

自动获取电流，然后 SAVE_CONFIG 保存参数

2、校准 Eddy 频率与 Z 轴高度的关系，先 home X 和 Y 轴: 

<font  color="blue">**G28 X Y**</font>

然后将喷头移动到平台中心（注意：此步骤要确保机器没有加载 heightmap）

<font  color="blue">**G0 X150 Y150 F6000**</font>

开始手动 z 偏移校准 <font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>:

<font  color="blue">**PROBE_EDDY_CURRENT_CALIBRATE CHIP=btt_eddy**</font>

校准完成后 SAVE_CONFIG 保存参数

<img src=img/Eddy/Eddy_System8.png width="600" />

3、带有 z_tilt 或者 quad_gantry_level（QGL）功能的打印机，先运行一次 <font  color="blue">**Z_TILT_ADJUST 或者 QUAD_GANTRY_LEVEL**</font> ，防止网格扫描时喷嘴撞到热床

4、此时可以 home 所有轴，然后执行以下命令进行快速的网格扫描：

<font  color="blue">**BED_MESH_CALIBRATE METHOD=scan SCAN_MODE=rapid**</font>

扫描完成后 SAVE_CONFIG 保存参数

5、温度补偿 (coil 版本无温度补偿，忽略此步骤即可):

<font  color="red">**注意：热床极限温度很高，谨防烫伤。**</font>

(1)	home 所有的轴。

(2)	执行

​	<font  color="blue">**SET_IDLE_TIMEOUT TIMEOUT=36000**</font>

​	将机器的 idle timeout 设置长一点，避免我们升温过程的时候 timeout

(3)	记录下常温下的 BIGTREETECH Eddy 温度。设定一个热床极限温度，并设置常用的工具头温度，等待 BIGTREETECH Eddy 温度稳定后记录这个极限的BIGTREETECH Eddy 温度。 <font  color="red">**这个极限 BIGTREETECH Eddy 温度作为下面的目标温度。目标温度不要超过极限温度，最好少一两度。**</font>

<img src=img/Eddy/Eddy_System9.png width="600" />

(4)	等待回到常温后执行：

​	<font  color="blue">**PROBE_DRIFT_CALIBRATE PROBE=btt_eddy TARGET=50 STEP=5**</font>

​	其中 TARGET=50 是指目标温度到 50℃， STEP=5 指的是每个节点的温度刻度是 5℃。

​	例如当前的温度为 30℃，目标温度是 50℃，那么总的温度范围为 50-30=20℃，每个节点的刻度是 5℃，也就是会采样 20 / 5 = 4 个节点。

​	执行以上命令会立刻要求一个手动 z 偏移校准（<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>），然后手动加热热床、喷头等待温度升高，等待 BIGTREETECH Eddy 的温度升高，BIGTREETECH Eddy 在下一个节点也就是 35℃会再要求一个手动 z 偏移校准（<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>），然后再在下一个节点也就是 40℃再要求一个手动 z 偏移校准（<font  color="blue">**[Paper test](https://www.klipper3d.org/Bed_Level.html#the-paper-test)**</font>），以此类推。

<font  color="red">**注意：如上述的例子，第二个温度节点为 35℃，但是手动 z 偏移校准需要时间，并且此时温度可能仍然在不断的升高，如果校准完成时候的实际温度为 36℃，那么下一个节点的温度会在此基础上增加一个刻度值，也就是 41℃。**</font>

