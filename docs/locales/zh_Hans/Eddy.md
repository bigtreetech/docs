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

## **产品尺寸及接口**

<img src=img/Eddy/Eddy_Dimensions.png width="600" />

用于计算 XY 偏移的线圈中心点如下：

<img src=img/Eddy/Eddy_Dimensions1.png width="600" />

## **BOOT 按键位置**

<img src=img/Eddy/Eddy_Boot.png width="600" />

BOOT 按钮在首次对 Eddy 烧录 Klipper 固件时使用；之后 Klipper 可以自动进入BOOT 模式并重新烧录固件。

**注意：**仅仅 Eddy V1.0 拥有 BOOT 功能，Eddy Coil V1.0 上的按键无功能。

## **安装指南** 

### 安装高度

确保 Eddy 的安装位置高于喷嘴 2 至 3 毫米，以确保最佳性能。如果在校准过程中遇到错误，这些可能与 Eddy 的安装高度有关。有关解决方案，请参阅本手册
的故障排除部分。

重要提示：需要注意的是，用户可能会将电流校准高度 20 毫米与 Eddy 的安装高度 2 至 3 毫米混淆。20 毫米的高度仅在本手册后续部分进行线圈电流校准时使用。

### 以 Voron2.4 为例

安装位置，完全替代原有 PL-08N 安装位
使用两颗 M3*25 螺丝（包装内附）将模块固定再 X Carriage 打印件上，如视图

<img src=img/Eddy/Eddy_Installation1.png width="600" />

<img src=img/Eddy/Eddy_Installation2.png width="600" />

### 在其他机器上的安装

用户可在我们的 GitHub 仓库以及其他常见模型分享平台中找到适用于多种常见机型的支架。在安装 Eddy 的过程中，请确保 PCB 侧（背面）与热端保持尽可能大的距离。此类布局有助于最小化从热端到 Eddy 的热传导。

### Eddy + Manta M5P

<img src=img/Eddy/Eddy_Connection.png width="600" />

### Eddy + Manta M8P V2.0

<img src=img/Eddy/Eddy_Connection1.png width="600" />

### Eddy Coil + EBB36 V1.2

<img src=img/Eddy/Eddy_Connection2.png width="600" />

### Eddy Coil + EBB42 V1.2

<img src=img/Eddy/Eddy_Connection3.png width="600" />

## **固件**

**重要提示：**Eddy 和 Eddy Coil 只支持基于 Python 3 的 Klipper 虚拟环境。即使系统已安装 Python 3，也不代表 klippy 虚拟环境是用 Python 3 建立的。若出现' Internal error during connect: split() takes no keyword arguments '等错误信息，说明您的 klippy 主机可能还在使用基于 Python 2 的虚拟环境，需要进行升级。推荐使用 KIAUH 工具，这是在不覆盖现有配置的情况下，更新 klippy主机至 Python 3 环境的最简便方法。

### 编译固件

此编译教程仅适用于 Eddy USB。如果您使用的是 Eddy Coil，则需将其连接到工具板上的 I2C 端口。首先在 Klipper 的 master 分支上为该工具板编译固件，编
译完成后，将新固件上传并更新到工具板上。在 Klipper 中配置 Eddy 时，只需设置其通过该工具板的 I2C 端口进行通信，具体通信配置取决于工具板的引脚设置。

如果您是从 Klipper 的旧 BIGTREETECH 分支转来，建议使用 KIAUH 迁移到主线分支，并推荐更新所有 Klipper 设备的固件，确保它们也运行在从主线编译的二进制文件上。

编译步骤如下：

1.确保您使用的是主线 Klipper，在 ssh 终端中运行以下命令 

<font  color="blue">**cd ~/klipper/**</font>

<font  color="blue">**git checkout master**</font>

2.接下来，输入：<font  color="blue">**make menuconfig**</font>

3.使用下面的配置编译固件

<img src=img/Eddy/Eddy_System1.png width="600" />

<font  color="blue">**[*] Enable extra low-level configuration optionsMicro-controller**</font>

<font  color="blue">**Micro-controller Architecture (Raspberry Pi RP2040) --->**</font>

<font  color="blue">**Bootloader offset (No bootloader) --->**</font>

<font  color="blue">**Flash chip (W25Q080 with CLKDIV 2) --->**</font>

<font  color="blue">**Communication interface (USB) --->**</font>

<font  color="blue">**USB ids --->**</font>

<font  color="blue">**() GPIO pins to set at micro-controller startup**</font>

4.配置选择完成后, 输入 ‘q’ 退出配置界面，当询问是否保存配置时选择“Yes”；

5.输入 <font  color="blue">**make**</font> 编译固件，当 make 执行完成后会在 home/pi/klipper/out 文件夹中生成我们所需要的‘klipper.uf2’固件，在 SSH 软件左侧可以直接下载到电脑中。

<img src=img/Eddy/Eddy_System2.png width="600" />

### 更新固件

#### 通过电脑更新固件

1.按住 Boot 按钮，用 USB 线将 Eddy 接到电脑的 USB 端口。（无需拆开 Eddy，Boot 按钮位于如图所示的位置，可直接操作。）

<img src=img/Eddy/Eddy_System3.png width="600" />

2.电脑会识别出一个存储设备，将上面步骤下载下来的 klipper.uf2 文件拷贝到这个存储设备，设备会自动更新固件并重启，重启后即完成了更新固件。

<img src=img/Eddy/Eddy_System4.png width="600" />

#### 通过 DFU 更新固件

1.按住 Boot 按钮，用 USB 线将 Eddy 接到树莓派/BIGTREETECH Pi 的 USB 端口。（无需拆开 Eddy，Boot 按钮位于如图所示的位置，可直接操作。）

<img src=img/Eddy/Eddy_System5.png width="600" />

2.在 SSH 终端命令行中运行 lsusb 查询 DFU 设备 ID

<img src=img/Eddy/Eddy_System6.png width="600" />

3.运行

<font  color="blue">**cd ~/klipper**</font>

<font  color="blue">**make flash FLASH_DEVICE=2e8a:0003**</font>

开始烧录固件 <font color="blue">(注意：将 2e8a:0003 更换为上一步中查询到的实际的设备的ID）</font>

4.输入 <font  color="blue">ls /dev/serial/by-id/*</font>到命令行。找到的设备将被输入到您的klipper 配置中，作为[mcu eddy]下的 Serial 变量。

## **Klipper 和 Eddy 配置**

### 打印机配置文件模板

现在您已经成功安装了正确的固件到您的 Eddy 设备上，接下来是完成 Klipper配置的步骤。BIGTREETECH 提供了三种不同的示例配置文件，帮助您开始设置。您需要根据下面的标准选择最适合您需求的文件。仔细阅读选定配置文件中的注释，它们将帮助您了解如何修改安装中的特定参数。每个配置文件的链接如下所示，您也可以通过访问 https://github.com/bigtreetech/Eddy 找到它们：

- 如果您希望使用 Eddy 作为自动调平传感器，但使用另一设备作为 Z 轴限位开关，[使用该无归零功能的配](https://github.com/bigtreetech/Eddy/blob/master/sample-bigtreetech-eddy.cfg)。
- 如果您希望 Eddy 同时作为自动调平传感器和 Z 轴限位开关，[使用该包含归零功能的配置](https://github.com/bigtreetech/Eddy/blob/master/sample-bigtreetech-eddy-homing.cfg)。
- 如果您希望 Eddy 同时作为自动调平传感器和 Z 轴限位开关，并希望使用beta Z 轴偏移功能，[使用该包含归零和 Z 轴偏移的配置](https://github.com/bigtreetech/Eddy/blob/master/sample-bigtreetech-eddy-zoffbeta.cfg)。

选择任何配置后，将其全部内容复制到您的 printer.cfg 文件中。如果出现 gcode宏冲突，请查看 FAQ 中的“Error: gcode command < ANY GCODE COMMAND > already registered”部分。

### Z轴限位开关配置

您可以将 Eddy 配置为 Z 轴限位开关，或者选择使用其他设备作为限位开关。如果您选择使用其他设备作为 Z 轴限位开关，请根据该设备调整您的归零（homing）和限位开关设置。

如果您希望为 Eddy 启用 Z 轴归零/限位开关功能，请按照以下步骤操作：

a. 在 printer.cfg 文件中的[stepper_z]部分，将 endstop_pin: PA5 修改为endstop_pin: probe:z_virtual_endstop ，并注释或删除 position_endstop: 0。**请注意**，您当前使用的限位开关可能不是 PA5，因此请查找与您的限位开关相匹配的行并进行更改。

b. 确保您选择了正确的示例配置文件，并将该文件的全部内容复制到您的printer.cfg 文件中。如果您使用着 KNOMI，可能会有一些宏与 KNOMI.cfg 文件中的宏存在冲突。解决这些冲突的方法是注释掉 KNOMI.cfg 文件中的宏，并取消注释 Eddy 宏中处理 KNOMI 功能的行。

c. 根据您的设备特定需求编辑配置文件的相关部分。可能需要调整的设置包括

- MCU serial
- X offset 和 Y offset
- Mesh_min 和 mesh_max
- Home_xy_position

**重要提示：**示例配置要求您调整 x_offset 和 y_offset 以匹配您的 Eddy 位置相对于您的喷嘴的位置。所有示例配置文件中均包含标准 Voron X 滑车的设置。

## **校准**

### 驱动电流校准

完成固件和配置后，您现在可以开始对 Eddy 的驱动电流进行校准。

1. 将 Eddy 置于热床上方约 20mm 处。如果您计划将 Eddy 用作限位开关，则尚不能使用其进行归零操作，您需要手动移动龙门或床，使 Eddy 位于床面上方20mm。
2. 在 Mainsail 或 Fluidd 中运行以下命令：<font  color="blue">LDC_CALIBRATE_DRIVE_CURRENT CHIP=btt_eddy</font>
3. 输入 SAVE_CONFIG 以将驱动电流设置保存到配置中。

### 将 Eddy 读数映射到喷嘴高度

驱动电流校准完成后，Eddy 将能够从打印床获取读数。Klipper 需要知道这些读数与喷嘴的高度如何对应。以下校准程序将喷嘴定位在床面上，使 Z 高度等于 0。
然后，它从 Eddy 获取读数，随着喷嘴高度逐渐增加，将这些读数映射到已知的高度。

- 如果您使用了推荐的配置模板，可以简单按照以下步骤执行映射程序。

1. 发送命令 <font  color="blue">PROBE_EDDY_CURRENT_CALIBRATE_AUTO CHIP=btt_eddy</font>
2. 按照 klipper UI 的提示，逐步降低喷嘴，直至其接触到放在打印床上的纸张。确保纸张在适当的压力下可以平滑移动，同时感受到轻微的摩擦力。注意，在此过程中要避免喷嘴对打印床造成过大的压力或损坏。
3. 点击“ACCEPT(接受)”，并观察 Eddy 执行映射过程。完成后确保发送 <font  color="blue">SAVE_CONFIG</font>。
4. 执行网格校准 Bed Mesh Calibration。

- 如果您没有使用配置模板，按以下步骤执行映射程序：

1. 使用命令 G28 X Y 归零 X 轴和 Y 轴。
2. 确保没有加载床面高度图。从控制台发送 <font  color="blue">BED_MESH_CLEAR</font> 以清除高度图。
3. 使用命令 G0 X150 Y150 F6000 将喷嘴移动到平台中心。此命令基于300x300mm 的打印机设置，但您可能需要根据您的打印床尺寸进行相应调整。

4. 开始手动 Z 轴偏移校准[**(Paper test)**]([Bed leveling - Klipper documentation (klipper3d.org)](https://www.klipper3d.org/Bed_Level.html#the-paper-test))：输入 <font  color="blue">PROBE_EDDY_CURRENT_CALIBRATE CHIP=btt_eddy</font>。您将看到一个调整框，允许您降低喷嘴。降低喷嘴直至其接触到放在打印床上的纸张。确保纸张在适当的压力下可以平滑移动，同时感受到轻微的摩擦力。

5. 完成后使用 <font  color="blue">SAVE_CONFIG</font> 保存配置。

<img src=img/Eddy/Eddy_System8.png width="600" />

### 床面网格校准

1. Home 所有轴。
2. 带有 z_tilt 或者 quad_gantry_level（QGL）功能的打印机，先运行一次 <font  color="blue">Z_TILT_ADJUST </font>或者<font  color="blue">QUAD_GANTRY_LEVEL</font>，防止网格扫描时喷嘴撞到热床
3. 执行以下命令进行快速的网格扫描 <font  color="blue">BED_MESH_CALIBRATE METHOD=scan SCAN_MODE=rapid</font>
4. 完成后使用 <font  color="blue">SAVE_CONFIG </font>保存配置。

### 温度补偿校准（coil 版本无温度补偿，忽略此步骤即可）

**重要提示：** 以下步骤仅适用于 Eddy USB。Eddy Coil 没有温度补偿功能，因此可忽略下面的步骤。 **当 Eddy 执行温度补偿时，热床极限温度很高，谨防烫伤。**

1. Home 所有轴并通过输入 G0 Z5 或通过操作界面上的控制按钮，将 Z 轴调整至床面上方 5 毫米。
2. 执行 <font  color="blue">SET_IDLE_TIMEOUT TIMEOUT=36000</font> 将机器的 idle timeout 设置长一点，避免我们升温过程的时候 timeout
3. 运行 <font  color="blue">TEMPERATURE_PROBE_CALIBRATE PROBE=btt_eddy TARGET=56 STEP=4</font>

**提示：**<font  color="red">在上述命令中，目标温度设置为 56℃，适用于多数设备。如果您的 3D 打印机腔体的实际温度更高，您可以适当提高目标温度。请注意，目标温度越高，校准所需时间将相应延长，因为 Eddy 需要更长时间来达到温度平衡。</font>

4. 执行此操作后，UI 将显示 Z 轴调整框。请使用上述提到的[手动 Z 轴偏移校准（Paper Test）方法](https://www.klipper3d.org/Bed_Level.html#the-paper-test)，将纸张夹在喷嘴和床面之间，然后确认该值。

5. 接受值后，将热床温度调至最高，喷嘴温度调至 220℃。
6. 如果您在有空调或开窗的房间中，为了确保 Eddy 的温度上升，建议关闭空调或窗户，因为风会影响温度的升高。
7. 随着 Eddy 温度的上升，系统会自动提示您每隔 4℃执行一次手动 Z 偏移校准。**热床温度很高，谨防烫伤**。
8. 重复手动 Z 偏移校准（Paper Test）直到校准完成。如果发现 Eddy 的温度不再上升，可以使用下面的相关命令提前结束校准。

在漂移校准期间可用的额外 gcode 命令包括：<font  color="blue">TEMPERATURE_PROBE_NEXT</font>

- <font  color="blue">TEMPERATURE_PROBE_NEXT</font> - 可用于在达到步进增量前强制采样新数据。
- <font  color="blue">TEMPERATURE_PROBE_COMPLETE</font> - 可用于在达到目标前完成校准。
- <font  color="blue">ABORT</font> - 可用于终止校准并忽略结果。

<font  color="red">**提示：**</font>Eddy 的热校准过程不仅考虑了 Eddy 的漂移，还考虑了机器内部机械部件的热膨胀。这种膨胀可能非常显著，使用其他传感器时可能导致第一层打印质量不佳。请记住，如果您在喷嘴和热床均开启的情况下进行热校准，则热端和热床会同时发生热膨胀。因此，如果您稍后尝试进行手动 Z 偏移校准（Paper Test），只开启喷嘴或热床中的一个，您可能会发现有大约 0.05mm 的间隙（不足以引起第一层问题，但足以感觉到纸张的夹持力减小）。如果这听起来有些复杂，不用
担心。您只需要知道，应在热床和喷嘴均加热的情况下进行校准，然后在热床和喷嘴均加热的情况下进行打印，这样可以获得极佳的首层效果。

完成这些步骤后，Eddy 将能够在广泛的温度范围内提供出色的首层打印效果！

## **附加信息**

### Z 轴偏移

**此部分仅适用于将 Eddy 用于 Homing 的用户。**

由于 Eddy 经过校准，可以准确识别 z=0 的位置，因此通常不需要使用 Z 轴偏移。然而，如果您希望使用 Z 轴偏移，请使用[包含 Z 轴偏移功能的示例配置文件]([Eddy/sample-bigtreetech-eddy-zoffbeta.cfg at master · bigtreetech/Eddy · GitHub](https://github.com/bigtreetech/Eddy/blob/master/sample-bigtreetech-eddy-zoffbeta.cfg))。

要确定正确的 Z 轴偏移，请按照以下步骤操作：

1. Home 所有轴。
2. 在喷嘴下方放置一张纸。
3. 使用 Mainsail 或 Fluidd 设置 Z 轴高度为 z=0。请勿使用微调（babystep）来将喷嘴调整到 z=0！应将其设置为 Z 轴的实际高度。
4. 设置 Z 轴高度为 z=0 后，检查纸张夹紧的松紧是否合适。如果不合适，则使用微调功能进行调整。
5. 调整到合适的高度后，使用 Mainsail 或 Fluidd UI 上的按钮保存调整结果。

### 打印床网格校准参数

Eddy 允许您在每次打印前进行非常快速的床面网格扫描，以确保获得最佳的首层效果。为此，我们建议将标准的 <font color="blue">BED_MESH_CALIBRATE</font> 宏替换为示例配置文件中的修改版本，并在打印开始宏中包含 <font color="blue">BED_MESH_CALIBRATE</font> 调用。

### 网格扫描高度

扫描高度由 [bed_mesh] 配置中的 horizontal_move_z 选项设置。此外，还可以通过 <font  color="blue">BED_MESH_CALIBRATE G-code</font> 命令中的 <font  color="blue">HORIZONTAL_MOVE_Z</font> 参数指定。

扫描高度必须足够低，以避免扫描误差。通常情况下，设置为 2mm（即：<font  color="blue">HORIZONTAL_MOVE_Z=2</font>）会比较合适，前提是 Eddy 正确安装。

需要注意的是，如果 Eddy 距离床面超过 4mm，则扫描结果将无效。因此，在床面有严重表面偏差或极端倾斜未被校正的情况下，将无法进行有效的扫描。

### 快速（连续）扫描

在执行快速床面网格扫描时，由于每个点的样本采集时间较短，可能无法积累足够的样本进行平均和去噪。因此，快速扫描的准确性可能不如标准床面网格扫描。但通常情况下，它仍能提供满意的首层效果。

可以通过允许 travel planner 略微超出扫描的床面网格并平滑移动来改善快速扫描。您可以在 bed_mesh 配置部分使用 scan_overshoot: parameter。请注意，您需要确保轴可以移动到网格边界加上此超出值的区域，因此请小心不要指定过高的值。通常情况下，8mm 足够。

## FAQ 常见问题解答

**1.有时我收到“Error during homing probe: Eddy current sensor error”报错**

- 这通常表示 Eddy 中的传感器在探测/归零尝试开始前没有达到有效值。我们建议尝试以下步骤：

1)仔细检查 Eddy 高度。 可能 Eddy 离床面太近或太高。我们建议当喷嘴刚触及床面时，Eddy 高度应为 2mm-3mm。大多数情况下，2.5mm是最优的，但如果您发现 Eddy 在高温下出现错误，可以尝试将其略微降低到 2mm 以下。然而，如果 Eddy 在 QGL 尝试过程中出现报错，您可能需要稍微提高 Eddy 高度。

2)调整 Eddy 高度后， 从配置文件中删除所有校准设置，并重新校准Eddy。

3)如果仍然收到此报错， 如果 reg_drive_current 值设置为 15，请将其增加到 16。

**2.有时我收到“Probe Triggered Before Movement”报错**

- 这是因为您尝试执行两个连续的 PROBE 命令。请在两个 PROBE 命令之间将龙门架抬起几毫米，以避免此问题。

**3.Eddy 在运行床网格校准时执行 Z Hops**

确保您使用了正确的宏调用：<font  color="blue">BED_MESH_CALIBRATE METHOD=rapid_scan</font>

删除或修改 <font  color="blue">KAMP - Adaptive Bed Mesh</font> 以及任何自定义的BED_MESH_CALIBRATE 宏。请使用 Klipper 自适应网格，或者不要在<font  color="blue">KAMP_Settings.cfg</font>中包含 <font  color="blue">KAMP/Adaptive_Meshing.cfg</font>。

**4.Eddy USB 还是 Eddy Coil，如何选择？**

- 这取决于您的需求。Eddy USB 和 Eddy Coil 几乎相同，但 Eddy Coil 更适用于工具头板，通过 I2C 连接。
- Eddy Coil 没有温度补偿，因此在密封腔体内使用时可能不如 Eddy USB稳定。

**5.错 误 ： gcode command < ANY GCODE COMMAND > already registered**

这通常是因为存在冲突的 G-code 宏。检查所有 G-code 宏，确保没有重复的名称，并解决这些冲突。通常情况下，如果出现冲突且不确定如何处理，请优先选择 Eddy 宏中的功能。

**6.我的 z-offset 似乎无法保存并会重置？**

- 对于常见调平传感器，这可能看起来像一个 bug。然而，如果您正确校准了 Eddy 并使用了特殊的归零宏，那么 z-offset 是没有必要的。解释起来有些复杂，但本质上，当使用 Eddy 时，z-offset 参数不会调整喷嘴的打印高度，只会调整归零或探测触发的高度。
- 我们强烈建议通过 Eddy 进行校准以获得准确的喷嘴高度，但您也可以使用 [Z-offset beta 示例配置文件]([Eddy/sample-bigtreetech-eddy-zoffbeta.cfg at master · bigtreetech/Eddy · GitHub](https://github.com/bigtreetech/Eddy/blob/master/sample-bigtreetech-eddy-zoffbeta.cfg)) 来模拟标准的 z-offset。只需取消注释与 beta z-offset 功能相关的宏，您就可以使用标准的 Mainsail 按钮来调整喷嘴高度，并将其保存为 z-offset。

**7.我的 Eddy 宏与 KNOMI 宏冲突**

- Eddy 和 KNOMI 使用了类似的宏。Eddy 宏中已经包含了 KNOMI 所需的所有功能。如果有冲突，请注释掉有冲突的 KNOMI 宏，并使用 Eddy 宏中的功能。
- 请注意，您可能需要取消注释 Eddy 宏中的某些行，这些行是专门为 KNOMI用户设置的。检查宏文件，查看哪些行已被注释，并在需要使用 KNOMI时取消注释这些行。

**8. KAMP 与 Eddy**

- [KAMP aka Klipper-Adaptive-Meshing-Purging](https://github.com/kyleisah/Klipper-Adaptive-Meshing-Purging)在使用Eddy之前需要从Klipper中移除。请在 KAMP_SETTINGS.cfg 文件中注释掉相关的包含行，例如#[include ./KAMP/adaptive_meshing.cfg]。
- 自 2024 年 1 月 起 ， KAMP 已 被 合 并 到 Klipper 中 ， 您 应 在BED_MESH_CALIBRATION 调用中使用 ADAPTIVE=1 选项。有关[自适应网格的更多信息，请查看相关文档](https://www.klipper3d.org/Bed_Mesh.html#adaptive-meshes)。

