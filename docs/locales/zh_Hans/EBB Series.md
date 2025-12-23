# EBB 系列

## **编译固件**

1.通过ssh连接到Raspberry Pi后，在命令行键入以下句子：

```
cd ~/klipper/
```

```
make menuconfig
```

使用以下配置编译固件（如果以下选项不可用，请将Klipper固件源更新为最新版本

<font  color="red">***注意: EBB36/EBB42 VersionV1.0***</font>

**[\*] Enable extra low-level configuration options**

 **Micro-controller Architecture (STMicroelectronics STM32) --->**

 **Processor model (STM32F072) --->**

 **Bootloader offset (No bootloader) --->**

 **Clock Reference (8 MHz crystal) --->**

 **If using USB communication over Type-C**

 **Communication interface (USB (on PA11/PA12)) --->**

 **If using CANBus communication**

 **Communication interface (CAN bus (on PB8/PB9)) --->**

 **(1000000) CAN bus speed**

<img src=img/EBB36CAN/072/EBB_072_Make.webp width="600"/>

<font  color="red">***注意: EBB36/EBB42 VersionV1.1***</font>

**[\*] Enable extra low-level configuration options**

 **Micro-controller Architecture (STMicroelectronics STM32) --->**

 **Processor model (STM32G0B1) --->**

 **Bootloader offset (No bootloader) --->**

 **Clock Reference (8 MHz crystal) --->**

**If using USB communication over Type-C**

 **Communication interface (USB (on PA11/PA12)) --->**

**If using CANBus communication**

 **Communication interface (CAN bus (on PB0/PB1)) --->**

 **(1000000) CAN bus speed**

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Make.webp width="600"/>

<font  color="red">***注意：仅在https://github.com/Klipper3d/klipper/pull/5488被合并到Klipper的主要分支，官方固件将支持STM32G0B1的CAN总线功能。如果您使用CANBus通信，您可以使用我们在GitHub上编译的firmware_CANBus.bin，也可以使用我们的源代码自己编译：https://github.com/bigtreetech/klipper/tree/stm32g0b1-canbus*** </font>

2.配置完成后，键入“q”退出配置界面。当被问及是否保存配置时，选择“是”

3.输入**make**以编译固件。我们需要的“klipper.bin”固件将在Raspberry pi的**home/pi/klipper/out**文件夹中生成。固件位于SSH软件的左侧，用户可以直接将其下载到计算机上。

<img src=img/EBB36CAN/072/EBB_072_Bin.webp width="600"/>

##  **更新固件**

### <font  color="red">***NOTE: EBB36/EBB42 VersionV1.0***</font>

通过Raspberry Pi更新固件（将板插入计算机并进入DFU模式后，您也可以通过STM32CubeProgramer软件进行更新）。

1.按下Boot（引导）按钮，然后单击Reset（重置）按钮进入DFU模式。

<font  color="red">**版本:EBB36 V1.0**</font>

  <img src=img/EBB36CAN/072/EBB_072_Update1.webp width="600"/>  

<font  color="red">**版本:EBB42 V1.0**</font>

  <img src=img/EBB42CAN/072/EBB42_072_Update1.webp width="600"/>  

2.在ssh终端命令行中键入“lsusb”以查询DFU设备的ID。

  <img src=img/EBB36CAN/072/EBB_072_Update2.webp width="600"/>

3.键入“make flash flash_DEVICE=0483:df11”以下载固件（注意：将0483:df11替换为上一步骤中查询的DFU设备的实际ID）。

  <img src=img/EBB36CAN/072/EBB_072_Update3.webp width="600"/>

4.键入“ls/dev/serial/by-id/”以在下载完固件后查询设备的串行id（串行id仅在通过USB通信时存在。通过CAN总线通信时忽略此步骤）。

<img src=img/EBB36CAN/072/EBB_072_Update4.webp width="600"/>

5.第一次下载固件后，再次更新固件时无需再次按下引导和重置按钮即可进入DFU模式。用户可以键入

 `make flash FLASH_DEVICE= /dev/serial/by-id/usb-Klipper_stm32f072xb_28002D001557434338313020-if00`

下载固件（注意：将“/dev/serial/by-id/xxx”替换为上一步骤中查询的实际id）

<img src=img/EBB36CAN/072/EBB_072_Update5.webp width="600"/>

### <font  color="red">***注意: EBB36/EBB42 VersionV1.1***</font>

警告：当使用DFU通过Type-C端口更新固件时，STM32G0B1CB需要跳转到系统内存区域以运行bootloader（STMicroelectronics编写）。参考手册AN2606中的说明

(https://www.st.com/content/ccc/resource/technical/document/application_note/b9/9b/16/3a/12/1e/40/0c/CD00167594.pdf/files/CD00167594.pdf/jcr:content/translations/en.CD00167594.pdf), 该引导加载程序的初始化过程如下图所示：

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update1.webp width="600"/>

USART的IO将在进入USB DFU模式之前进行配置。

进入DFU模式后，**PA2**将被**系统内存**区域的引导加载程序配置为输出高电平，请参阅STM32G0B1CB的数据表

(https://www.st.com/resource/en/datasheet/stm32g0b1cb.pdf)

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update2.webp width="600"/>

**PA2**用于**EBB36 CAN V1.1**和**EBB42 CAN V1.1***中的hotend MOSFET，DFU模式中的高电平将hotend更改为加热状态。因此，在使用Type-C端口的DFU更新固件时，请注意断开hotend的主电源VIN，或者确保固件更新很快完成并进入正常工作模式。当<font color=“red”>***主电源和hotend连接***时，切勿将***MCU长时间保持在DFU模式***</font>。

使用STM32CubeProgramer升级

1.打开已安装的STM32CubeProgrammer，选择要下载的固件（klipper.bin）。

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update3.webp width="600"/>

2.按住Boot（引导）按钮，然后单击RST（重新设置）按钮进入DFU模式。

<font  color="red">**Verison:EBB36 V1.1**</font>

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update4.webp width="600"/>

<font  color="red">**Verison:EBB42 V1.1**</font>

<img src=img/EBB42CAN/G0B1/EBB42_G0B1_Update1.webp width="600"/>

3.单击STM32CubeProgram中的“刷新”按钮，直到端口从“无DFU d…”变为“USB1”，然后单击“连接”连接芯片。

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update5.webp width="600"/>

4.连接成功后，“连接”将变为“断开连接”，然后单击“下载”，下载完成后，将出现“文件下载完成”的弹出窗口，表示刻录成功。

<img src=img/EBB36CAN/G0B1/EBB_G0B1_Update6.webp width="600"/>

## **CANBus 配置**

### **与BIGTREETECH U2C模块一起使用**

<img src=img/EBB36CAN/072/EBB_072_CANBus1.webp width="600"/>

1.在ssh终端中键入以下命令“sudo nano/etc/network/interfaces.d/can0”并执行

 `auto can0`

 `iface can0 can static`

 `bitrate 1000000`

 `up ifconfig $IFACE txqueuelen 1024`

将CAN总线的速度设置为250K（必须与固件中设置的速度（1000000）CAN总线速度相同），修改后保存（Ctrl+S），然后退出（Ctrl+X）。键入命令“sudo reboot”以重新启动Raspberry Pi。

2.CANBus上的每个设备都会根据MCU的ID生成一个CANBus_uuid。如果用户想找到每个微控制器的ID，请确保硬件已通电并正确接线，然后运行以下命令：

 `~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0`

3.如果检测到未初始化的CAN设备，上述命令将报告该设备的canbus_uuid：

 `Found canbus_uuid=0e0d81e4210c`

4.如果Klipper工作正常并且连接到设备，那么它不会报告canbus_uuid，这也是正常的。

### **与BIGTREETECH RPI-CAN HAT模块一起使用**

<img src=img/EBB36CAN/072/EBB_CANBus2.webp width="600"/>

1.键入并运行以下命令“sudo nano/boot/config.txt”，并在文件config.txt中添加以下内容。

 `dtparam=spi=on`

 `dtoverlay=mcp2515-`

 `can0,oscillator=12000000,interrupt=25,spimaxfrequency=1000000`

修改后，保存“（Ctrl+S）”并存在“（Ctrl+X）”，键入sudo reboot以重新启动Raspberry Pi。

2.键入并运行命令“dmesg|grep-i”\（can\|spi\）“”以测试RPI-can HAT模块是否正常连接。正常响应应如下所示：

 `[ 8.680446] CAN device driver interface`

 `[ 8.697558] mcp251x spi0.0 can0: MCP2515 successfully initialized.`

 `[ 9.482332] IPv6: ADDRCONF(NETDEV_CHANGE): can0: link becomes ready`

<img src=img/EBB36CAN/072/EBB_CANBus3.webp width="600"/>

3.在ssh终端上键入“sudo nano/etc/network/interfaces.d/can0”，然后运行该命令。

 `auto can0`

 `iface can0 can static`

 `bitrate 1000000`

 `up ifconfig $IFACE txqueuelen 1024`

将CAN总线的速度设置为250K（必须与固件中设置的速度相同**（1000000）CAN总线速度）**。修改后保存“（Ctrl+S）”并退出“（Ctrl+X）”。键入命令sudo reboot以重新启动Raspberry Pi。

4.CANBus上的每个设备都会根据MCU的ID生成一个CANBus_uuid。如果用户想找到每个微控制器的ID，请确保硬件已通电并正确接线，然后运行以下命令：

```
~/klippy-env/bin/python ~/klipper/scripts/canbus_query.py can0
```

5.如果检测到未初始化的CAN设备，上述命令将报告该设备的canbus_uuid：

 `Found canbus_uuid=0e0d81e4210c`

6.如果Klipper运行良好并且连接到设备，那么它不会报告canbus_uuid，这是正常的。

##  **Klipper 配置**

1.在电脑浏览器中输入Raspberry Pi的IP访问权限，并从文件路径下载主板的参考配置，如下图所示。如果找不到此文件，请将Klipper固件源代码更新到最新版本，或从GitHub下载：https://github.com/bigtreetech/EBB

<img src=img/EBB36CAN/072/EBB_072_klipper1.webp width="600"/>

2.将主板的配置文件上传到配置文件。

<img src=img/EBB36CAN/072/EBB_072_klipper2.webp width="600"/>

3.将主板的配置添加到文件“printer.cfg”中。

 `[include sample-bigtreetech-ebb-canbus-v1.1.cfg]`

<img src=img/EBB36CAN/072/EBB_072_klipper3.webp width="600"/>

4.将配置文件的ID号修改为主板的实际ID（USB串行或CANBus）。

<img src=img/EBB36CAN/072/EBB_072_klipper4.webp width="600"/>

5.按照以下说明配置模块的特定功能：https://www.klipper3d.org/Overview.html

## **注意事项**

- 当TH0接口无法与PT1000配合使用时，您不能在其上插入跳线，否则100K NTC将无法工作。
- 当使用CAN通信时，您需要查看它是否被用作终端。如果是，则必须在120R位置插上一个跳线帽。
- DIY压接时，根据丝网布线，根据引脚和示意图进行DIY，以避免电源线反向连接或连接到CAN信号，从而烧毁模块。
- 如果在通过USB端口编程的过程中没有外部电源，则需要通过跳线将VUSB短路，以便为模块提供工作电压。
- 加热器筒和风扇接口的负载电流不得超过最大耐受电流，以防止MOS管烧坏。
-<font color=“red”>**请注意4.2固件更新中的注意事项，避免主电源和hotend连接时MCU长时间处于DFU模式。**</font>

## **常问问题**

**Q: 加热棒和风扇接口的最大电流是多少？**

A: 加热棒接口的最大输出电流：5A。

风扇接口的最大输出电流：1A。

加热棒、驱动器和风扇的总电流需要小于9A。


**Q: 无法通过USB端口更新固件？**

A: 您需要确保跳线帽已插入VUSB，并且板上的指示灯亮起。
