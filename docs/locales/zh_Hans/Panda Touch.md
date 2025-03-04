# Panda Touch

<img src=img/pandatouch/panda_touch.png width="600"/>

Panda Touch 的 CAD 文件可以下载 [点击这里](https://github.com/bigtreetech/PandaTouch/tree/master/3D)

## 重要提示

Panda Touch 目前与所有 Bambu Lab 打印机固件版本兼容，直到：

- P1P/S: 01.07.00.00
- X1C --> 01.08.02.00
- X1E --> 01.01.02.00
- A1 --> 01.03.01.02
- A1 Mini --> 01.04.00.00

拓竹可能会在未来发布影响 Panda Touch 可用功能的固件版本。Bigtreetech 将监控所有测试版固件版本，如果我们发现影响 Panda Touch 功能的固件版本，我们将通过电子邮件、速卖通聊天和我们的社交渠道发出警报。然后，购买者可以决定是否要冒着失去功能的风险执行更新。请注意，Panda Touch 保修不包括由于执行 Bambu Lab 固件更新而导致的功能损失。

## 重要使用信息

- 当 P1P 或 P1S 使用“仅限局域网”模式时，无需将 Panda Touch 连接到云账户，所有打印机功能都可以从 Panda Touch 上使用。
- 当打印机设置为连接云端时，您需要在 Panda Touch 上启用云模式功能，以保留控制加热器和打印功能的能力。
- 请检查产品页面描述中的固件列表，以确保您的打印机固件与 Panda Touch 兼容。将打印机固件更新到可能限制 Panda Touch 功能的不兼容版本，不在保修范围内。
- 目前，MicroSD 卡和 USB 驱动器文件只能从根目录读取，并且只有在 Bambu Studio 中将模型切片到构建板 #1 时，且文件为 3mf 格式时才会被识别。文件夹浏览和缩略图预览将在未来的固件版本中推出。
- Panda Touch 在其内置锂电池上运行时，电池续航时间大约为 20 到 30 分钟，具体取决于屏幕亮度。为了维护电池并延长产品寿命，建议在电池耗尽后及时给 Panda Touch 充电或关闭电源。
- 当锂电池电量不足时，屏幕可能会闪烁。这种闪烁是正常的，并向用户发出电池几乎耗尽的警告。然后，用户应立即给电池充电或关闭 Panda Touch。
- 如果您计划经常打开和关闭打印机，我们建议您在 DC5V 模式下运行 Panda Touch。这样可以绕过电池，防止电池经历多次充放电循环。如果您想使用电池供电，只需将 Panda Touch 背面的开关切换到电池电源模式。

## 基本参数

| 微处理器           |                        Xtensa 32 位 LX7 双核 ESP32S3R8<br/>时钟速度高达 240MHz。                         |
| :----------------- | :------------------------------------------------------------------------------------------------------: |
| 存储器             |                                          PSRAM-8MB, Flash-16MB                                           |
| 屏幕尺寸           |                                                    5”                                                    |
| 分辨率             |                                                800 x 480                                                 |
| 可视角度           |                                               IPS 完整视图                                               |
| 显示颜色           |                                                  16.7M                                                   |
| 通信方式           |                                      2.4G Wi-Fi (IEEE 802.11 b/g/n)                                      |
| 工作温度           |                                                  0-60°C                                                  |
| 工作电流（充满电） |                                     屏幕激活：0.6A，屏幕非激活：0.2A                                     |
| 工作电流（充电）   |                        屏幕激活：1.25A，(0.95A 2024 年 5 月后) 屏幕非激活：0.85A                         |
| 逻辑电压           |                                                   3.3V                                                   |
| 内置电池           |                                允许 Panda Touch 便携式使用长达 30 分钟。                                 |
| 充电时间           |                                                 1.2 小时                                                 |
| 扩展接口           | I2C（用于未来固件等中支持的温度/湿度传感器）<br/>USB 驱动器（用于从 USB 驱动器读取 3mf 文件-仅限 FAT32） |

## 装配说明

### 概述

<img src=img/pandatouch/pt_back.png width="600"/>

- 将电源开关滑动至`锂电池电源`，Panda Touch 即可使用锂电池运行，实现便携性。将其滑动至`DC 5V`，从磁性充电座直接供电，从而延长内部电池的使用寿命。如果您经常打开和关闭打印机，建议使用此模式。将开关滑动至`OFF`（关闭）可关闭 Panda Touch。

### 充电座

<img src=img/pandatouch/charging_dock.png width="600"/>

- 电源输入配备了热插拔保护，允许用户热插拔电源。

### 包装清单

| <img src=img/pandatouch/pl_1.png width="200"/> | <img src=img/pandatouch/pl_2.png width="200"/> |
| :--------------------------------------------: | :--------------------------------------------: |
|                Panda Touch x 1                 |                  安装支架 x 1                  |
| <img src=img/pandatouch/pl_3.png width="200"/> | <img src=img/pandatouch/pl_4.png width="200"/> |
|                 磁性充电座 x 1                 |               USB-C 充电电缆 x 1               |
| <img src=img/pandatouch/pl_5.png width="200"/> | <img src=img/pandatouch/pl_6.png width="200"/> |
|         M3x6 螺钉 x 4<br/>六角扳手 x 1         |                   BTT 鸭 x 1                   |

### 安装 Panda Touch

- 如图所示，使用六角/内六角扳手和两个 M3x6 FHCS 组装充电座和安装支架。
  <br> <img src=img/pandatouch/pt_1_1.png width="300"/>
- 从安装支架的底部剥离薄膜。
  <br> <img src=img/pandatouch/pt_1_2.png width="300"/>
- 确保打印机表面清洁、无油、油脂等，将组装好的充电座固定在原始屏幕的中央。施加压力使其完全粘附，并等待 12 小时以获得最佳粘附力。
  <br> <img src=img/pandatouch/pt_1_3.png width="300"/>
- 将 Panda Touch 连接到充电座。
  <br> <img src=img/pandatouch/pt_1_4.png width="300"/>

### 接线和电源连接

- 卸下打印机 USB 端口上的泡沫，即可访问该端口。
  <br> <img src=img/pandatouch/pt_2_1.png width="300"/>
- 将充电电缆穿过打印机右侧的孔，然后将 USB-C 端插入充电底座的电源输入。
  <br> <img src=img/pandatouch/pt_2_2.png width="300"/>
- 将充电电缆的 USB-A 端插入打印机上的 USB 端口以连接电源。然后如图所示将电缆布置在夹子中。

> 提示:
> 请 100%确定您已将电缆拧入夹子，以防止工具头在归位过程中卡住电缆。

<br> <img src=img/pandatouch/pt_2_3.png width="300"/>

- 后部电源开关上有三个选项。
  - 在`关闭`位置，电池将充电，但 Panda Touch 不会通电。
  - 当切换到电池位置时，USB 将为电池充电，同时为 Panda Touch 供电。如果从底座上卸下 Panda Touch，则电池将接管并为其供电长达 30 分钟。回到底座后，USB 将再次恢复为 Panda Touch 充电和供电。建议不经常打开和关闭打印机的用户使用此模式。请注意，没有电池电量指示灯。Panda Touch 专为远离码头的短时间使用而设计，不适合长时间移动使用。
  - 当切换到 DC 5V 位置时，Panda Touch 直接由 USB 输入供电，同时仍在为电池充电。将其从底座上卸下将关闭电源，而 Panda Touch 不会耗尽电池电量。建议经常打开和关闭打印机的用户使用此模式，因为它可以保持电池充电周期。如果这些用户希望在便携式模式下使用 Panda Touch，那么他们可以在将其从底座上取下后将开关切换到电池电源。
    <br> <img src=img/pandatouch/pt_2_4.png width="300"/>
- Panda Touch 已成功安装并通电。请按照屏幕上的说明进行下一步设置。
  <br> <img src=img/pandatouch/pt_2_5.png width="300"/>

## 用户界面说明

### 首次连接指南

首次启动后或执行“恢复出厂设置”命令后，您将看到下面的屏幕。

#### 语言选择指南

<img src=img/pandatouch/language_guide.png width="600"/>

- 为 Panda Touch 选择一种语言，然后点击`下一步`

#### WiFi 连接指南

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/pandatouch/guide_wifi.png width="600"/>

- 在初始设置过程中，Panda Touch 将扫描 WiFi 网络，然后显示多达 20 个具有最佳信号强度的网络。如果您在列表中找不到所需的网络，请点击`刷新`，Panda Touch 将重新扫描 WiFi 网络
  > 注意：
  > 当前的固件不支持连接到隐藏的 WiFi 网络。此外，当 Panda Touch 连接到 WiFi 的过程中，Panda Touch 无法同时执行 WiFi 扫描任务。
- 点击列表中的 WiFi 名称，会弹出[键盘界面]（#键盘界面）。输入正确的密码后，单击“确定”开始连接 WiFi。（密码长度：8~64 个字符）
- 连接状态将显示在 WiFi 网络名称旁边。`Spinner`图形表示 WiFi 仍在尝试连接`✔` 表示连接成功。
- 连接成功后，将启用`下一步`按钮。单击`下一步`进入打印机连接菜单。

> 注意：
> 如果您使用的是具有多个共享相同 SSID 的 WiFi 网络时，请在列表中选择信号强度最强的 SSID。

#### 打印机连接菜单

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/pandatouch/guide_printer.png width="600"/>

- 将 Panda Touch 连接到打印机有两种可能的方法。
  1.  自动扫描（推荐）。
  2.  手动数据输入。

#### 查找您的连接详细信息

在此过程中，您可能需要输入连接详细信息。这些可以通过以下步骤找到。

##### P1P & P1S

- 导航至 LCD 菜单上的`设置->WLAN`，然后单击`确定`。
  <br><img src=img/pandatouch/p1_1.png width="600"/>
- 在相应的 Panda Touch 输入框中输入 IP 和访问码（仅访问码用于自动扫描）。
  <br><img src=img/pandatouch/p1_2.png width="600"/>
- 在屏幕菜单中找到`设置->设备`，然后单击`确定`。
  <br><img src=img/pandatouch/p1_3.png width="600"/>
- 在相应的 Panda Touch 输入框中输入序列号代码<br><img src=img/pandatouch/p1_4.png width="600"/>

##### 自动扫描

- 要进行自动扫描，只需点击“扫描”按钮。位于同一 WiFi 网络上的 Bambu 实验室打印机将显示在扫描结果中，并预先填充`名称`、`打印机IP`、`SN`和“型号”信息。预先填充这些字段有助于更容易地添加打印机，并且可以减少由于手动数据输入错误而导致的错误。您需要输入的唯一数据是`访问代码`，它可以在打印机 WiFi/LAN 菜单中找到。有关如何查找访问代码的说明将显示在熊猫触摸屏上。先前已连接到 Panda Touch 的打印机仍将显示在扫描结果中，但 Panda Touch 不允许再次添加它们，并且“已添加”将显示在打印机图标附近。输入访问代码后，您可以确认连接或手动添加下面的一些数据。

##### 人工数据输入

- 您可以单击左侧的打印机图标，进入选择打印机型号的菜单。您必须根据所连接打印机的实际型号进行设置。Panda Touch 还会在后台进行一些检查以确认型号。可用型号如下：

  - P1P
  - P1S
  - X1C
  - A1 mini
  - A1

  使用图标选择模型后，“模型”字段中的内容将填充相应的模型名称。

- 选择打印机型号后，有 4 个必填字段。这些字段包含连接到打印机并识别打印机所需的信息。点击`i`图标并左右滑动以获取如何在打印机上查找此信息的说明。
  - `名称`：用户用来识别打印机的自定义名称。（长度：1~15 个字符）
  - `打印机IP`：用于 Panda Touch 连接到打印机。（长度：7~15 个字符）
  - `访问代码`：用于 Panda Touch 连接到打印机。（长度：8 个字符）
  - `SN`：用于 Panda Touch 连接到打印机。（长度：15 个字符）
- 有 4 个可选字段，可以帮助您在以后使用时识别打印机的某些参数。

  - `型号`：型号名称标识打印机的确切型号，并定义与之相关的图片。P1P、P1S、X1C、A1 mini、A1 或自定义。（长度：0~15 个字符）
  - `耗材颜色`：打印机使用的耗材颜色。（长度：0~6 个字符）
  - `耗材材料`：打印机使用的耗材材料。（长度：0~6 个字符）
  - `喷嘴直径`：打印机使用的喷嘴的直径。（长度：0~6 个字符）

- `确认`button
  填写“必需”信息后，您可以单击“确认”按钮开始连接打印机。Panda Touch 的标题栏将显示连接状态。

### 云模式功能

如果您的任何 P1P/P1S 打印机未设置为“仅局域网”模式，则您需要将 Panda Touch 与 P1P/P1S 打印机的通信方式切换为云模式，以使用以下功能：

- 加热
- 开始打印
- 暂停打印
- 停止打印

请按照以下步骤将 Panda Touch 与 P1P/P1S 打印机的通信方式切换为云模式。

##### 登录拓竹账号

- 点击跳转到设置页面，然后点击“登录拓竹帐户”按钮。
  <img src=img/pandatouch/add_account.png width="600"/>
- 点击弹出窗口右上角的箭头选择您的地区。
- 中国用户使用手机号码，而全球地区的用户使用电子邮件地址。
- 如果您找不到登录凭据，请参阅以下部分：[如何找到我的拓竹账号信息](#bambu_account)
  <br><img src=img/pandatouch/login.png width="600"/>

  > 注意:
  > 目前，需要关闭 2 步身份验证才能在 Panda Touch 上启用云模式。如果你想保持启用状态，那么你可以关闭它，在 Panda Touch 上启用云模式，然后再重新打开。请注意，你可能需要每三个月重复一次此过程，因为在此期间之后，Panda Touch 上的登录详细信息将过期。

  <br><img src=img/pandatouch/input_account.png width="600"/>

##### 将帐户下的打印机同步到本地设备

- 成功登录后，您可以选择将所有现有打印机与 PandaTouch 的通信方式转换为云模式。
- 我们建议，只有您的所有打印机都使用云模式运行时，才执行此操作，如果打印机打开了“仅局域网”模式，则可以跳过此操作。如果要改变 PandaTouch 与打印机之间的通信方式请查看 [如何切换 PandaTouch 和打印机之间的通信方式](#communication_mode)

  <br><img src=img/pandatouch/login_ok.png width="600"/>

- 如果您想将现有打印机与 PandaTouch 之间的通信方式转换为云模式，请点击“是”。
- 在此过程中，打印机必须与 PandaTouch 位于同一网络上。如果网络连接不佳，您可能需要重新编辑打印机的 IP 地址。

  <br><img src=img/pandatouch/sync_ok.png width="600"/>

- 一旦打印机在云模式下工作，您将在多打印机视图中注意到与其卡片关联的绿色云。云表示打印机与 PandaTouch 之间的通信方式。
- 您还将注意到一对绿色箭头，指示与该打印机的连接状态。

  <br><img src=img/pandatouch/cloud_mode.png width="600"/>

##### 如何删除已登录的账号

- 点击账户信息右上角的“X”按钮，删除保存在 PandaTouch 上的账户信息。
- 删除帐户信息后，PandaTouch 和打印机之间的通信模式将更改为本地模式。请注意，这不会将打印机本身设置为“仅 LAN”模式，而是会告诉 Panda Touch 仅使用 LAN 模式与打印机通话，这可能会导致某些功能丢失。

  <br><img src=img/pandatouch/del_account.png width="600"/>

##### 如何切换 PandaTouch 和打印机之间的通信方式 <a id="communication_mode"></a>

- 导航到打印机/组卡页面。
- 找到要启用或禁用云模式的打印机。
- 向下滚动到该打印机的“编辑”按钮。
- 选择“启用云”将打印机与 PandaTouch 的通信方式切换为云模式。
  > 提示
  > 您必须在设置菜单中输入云帐户，否则将无法将该打印机与 PandaTouch 之间的通信方式设置为云模式。

<br><img src=img/pandatouch/switch_work_mode.png width="600"/>

### 键盘接口

    ① ：使用此键可以隐藏或显示输入的信息。
    ② ：在大写字母和小写字母之间切换。
    ③ ：切换到“符号输入”。
    ④ ：切换到“数字输入”。

- `信函输入`:
  <br> <img src=img/pandatouch/keyboard_letter.png width="600"/>

- `符号输入`
  <br> <img src=img/pandatouch/keyboard_symbol.png width="600"/>

- `数字输入`
  <br> <img src=img/pandatouch/keyboard_number.png width="600"/>

### 主页打印任务和 SD 卡的缩略图显示

<br> <img src=img/pandatouch/thumbnail_preview.png width="600"/>

> 注意:
> 仅显示从 Bambu Studio 发起的打印任务，该.3mf 文件大小需<=20M，X1 系列机器暂不支持。
> 缩略图不匹配: 仅当 image 文件夹下的图片时间戳与其他打印文件相同时会导致缩略图不匹配。
> 增强缩略图显示: 在设置页面有个选项用于增强缩略图显示，开启后，从 U 盘打印或者在 SD 卡面板操作时都会有比较长的延时。

### 耗材控制

Panda Touch 允许用户配置外部线轴支架和 AMS 上使用的耗材的类型和颜色。用户还可以使用此菜单加载和卸载过滤器。

执行任何操作时，请确保选择了正确的 AMS 装置和灯丝槽。当耗材周围有红色边框时，您就会知道耗材已被选中。如果未选择任何内容，则“加载”和“卸载”按钮将变灰。

<img src=img/pandatouch/filament_screen.png width="600"/>

### HMS (健康管理系统)

&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/pandatouch/hms.png width="600"/>

- 点击 Panda Touch 的标题栏，HMS 通知中心菜单将展开。
- 当检测到新的 HMS 通知时，Panda Touch 将自动扩展 HMS 通知中心。
- 标题栏的左上角将显示已发送 HMS 通知的打印机的数量。
- 点击相应的 HMS 通知，弹出 wiki 链接二维码，用于解决此问题。
- 单击`X`可忽略此通知。
- 单击`全部忽略`可忽略所有通知**注意：** Panda Touch 将忽略除 X1C 以外的所有打印机的通知。由于 X1C 以规则的间隔重复发送通知信息，因此被忽略的通知可能在此后不久再次出现。

### 分组逻辑

Panda Touch 允许您创建多达 10 个组，每个组可以包含单个或多个打印机。

#### How To Add A Group

- 在已连接的打印机列表中点击+，弹出多功能菜单。

  <br><img src=img/pandatouch/press_plus.png width="600"/>

- 选择添加组选项。

  <br><img src=img/pandatouch/press_add_group.png width="600"/>

- 选择要添加到组中的打印机，并确保选择其中一台作为主机（组中的其他打印机将遵循发送给主机的命令）。
  <br><img src=img/pandatouch/group_choose_printer.png width="600"/>

- 点击下一步，输入组名，然后单击“确定”。

  <br><img src=img/pandatouch/group_name.png width="600"/>

- 现在，您可以在打印机列表中看到该组，点击该组将允许您控制整个组，但显示的控件将是组长的控件。

#### 在组和单个打印机控制之间切换

- 要控制单个打印机，只需单击与其对应的卡片，您就会注意到顶部栏中的名称更改为该打印机的名称。现在，即使它是组的一部分，您也可以单独向它发送命令。
- 如果您向单个打印机发送一个需要一些时间的命令（如归位），然后向它所属的组发送一个命令，如果第一个命令仍然繁忙，则第二个命令将被忽略。
- 要控制整个组，只需单击与该组对应的卡片，您就会注意到顶部栏中的名称更改为组的名称和主机的名称，用正斜杠分隔。现在，您可以向组长发送命令，组中的其他打印机也将随之发送命令。

  <br><img src=img/pandatouch/add_group_ok.png width="600"/>

#### 从 USB 打印的注意事项

尝试从 USB 打印时，请注意以下要点。

- 确保 USB 闪存驱动器的文件系统**格式化为 FAT32**。
- 使用“导出板材切片文件”选项从 Bambu Studio 或 Orca Slicer 导出“.3mf”文件。

  <br> <img src=img/pandatouch/export_3mf.png width="400"/>

- 将切好的“.3mf”文件写入 USB 闪存驱动器的根目录
  - Panda Touch 仅支持在 Bambu Studio 的“Build Plate#1”上切片的文件。
  - Panda Touch 仅支持“.3mf”文件，不支持“.gcode”文件。
  - Panda Touch 仅支持读取根目录中的文件，不支持读取文件夹中的文件。
- 将 USB 闪存盘插入 Panda Touch，然后转到“USB 闪存盘”菜单。

  <br> <img src=img/pandatouch/usb_flash_drive.png width="600"/>

#### 使用一台打印机开始打印

- 点击以选择 USB 磁盘或 SD 卡上的文件进行打印。
- 设置打印参数。根据打印机的不同，您可能会看到：

  - `热床调平`
  - `流量校准` (`P1P` and `P1S` 没有这个功能, 因此这些打印机不会显示此选项)
  - `延时摄影`
  - `使用 AMS` (Panda Touch 将自动识别此打印机是否已插入 AMS，然后确定是否需要显示此选项)
  - `自动断电` (自动识别在线的 Panda PWR,开启自动断电功能)
  - `清除用电量` (自动识别在线的 Panda PWR,重置 Panda PWR 的用电量)
    <br><img src=img/pandatouch/start_print_one.png width="600"/>

- 请确保切片的“.3mf”文件与所选打印机兼容。
- 如果使用 AMS，请确保 AMS 托盘中的耗材与切片的“.3mf”文件中的耗材一致，因为在打印开始时无法动态映射耗材。

- 如果您从 USB 开始打印，则 Panda Touch 将开始将 USB 闪存驱动器中的文件上传到打印机 MicroSD 卡的根目录。为避免上传问题，请确保：

  1. 打印机中插入了 MicroSD 卡。
  2. MicroSD 卡的剩余容量足以写入要上传的文件。

  <br> <img src=img/pandatouch/uploading.png width="600"/>

- 上传完成后，将开始打印。对于非常大的“.3mf”文件，传输到每台打印机可能需要几分钟的时间。

- 开始打印后，Panda Touch 将自动跳转到主界面并显示打印机数据。

  <br><img src=img/pandatouch/start_print_one_ing.png width="600"/>

#### 组打印

- 仅支持存储在 USB 磁盘上的文件进行组打印。
- 点击以选择 USB 磁盘上要打印的文件。
- 设置打印参数。根据组中的打印机，您可能会看到：

  - `热床调平`
  - `流量校准` (`P1P`和`P1S`没有此功能，因此这些型号的打印机将不会显示此选项。)
  - `延时摄影`
  - `使用 AMS` (Panda Touch 将自动识别此打印机是否已插入 AMS，然后确定是否需要显示此选项。)
  - `自动断电` (自动识别在线的 Panda PWR,开启自动断电功能)
  - `清除用电量`(自动识别在线的 Panda PWR,重置 Panda PWR 的用电量)

- 特定组的复选框打印选项将基于组中功能最强大的机器可用的功能。例如，您正在使用包含 X1C\P1P\P1S 的组，您将有激光雷达扫描选项可用，但此选项将仅发送给支持它的组中的打印机。

  <br><img src=img/pandatouch/start_print.png width="600"/>

- Panda Touch 将生成一个可用打印机列表供您选择。
- 已忙的打印机和组将被排除在此列表之外。这意味着，如果组中的单个打印机已经繁忙，则您将无法打印到该组中的任何打印机。这允许组始终保持彼此同步。

- 请确保切片的“.3mf”文件与所选打印机兼容。
- 如果使用 AMS，请确保 AMS 托盘中的耗材与切片的“.3mf”文件中的耗材一致，因为在打印开始时无法动态映射耗材。

- 如果使用 AMS，请确保 AMS 托盘中的耗材与切片的“.3mf”文件中的耗材一致，因为无法动态传输。Panda Touch 将开始将 USB 闪存驱动器中的文件上传到打印机 MicroSD 卡的根目录。为了避免上传问题，请确保在打印开始时绘制耗材:

  1. 打印机中插入了 MicroSD 卡。
  2. MicroSD 卡的剩余容量足以写入要上传的文件。

  <br><img src=img/pandatouch/udisk_upload.png width="600"/>

- 上传完成后，将开始打印。对于非常大的“.3mf”文件，传输到每台打印机可能需要几分钟的时间。

  <br><img src=img/pandatouch/group_printing.png width="600"/>

- 开始打印后，您将被带到打印摘要页面，在该页面上，组中每个打印机的状态都在单独的卡片上进行了摘要。

#### 组打印描述

当选择一个组并且组中的多台打印机正忙于打印时，Panda Touch 将显示“多台打印”菜单，如下所示。

<br> <img src=img/pandatouch/multi_printing.png width="600"/>

此菜单中存在以下组控件：

    ①: 打开/关闭当前打印列表中打印机的腔室LED。

    ②: 停止当前打印列表中的所有打印作业。

    ③: 暂停/恢复当前打印列表中的所有打印作业。

#### 组打印设置延时

在组打印时根据这个时间来进行延时，如果当前打印机加热完成或者时间到了，就发送打印任务到下一台。
<br> <img src=img/pandatouch/group_delay.png width="600"/>

### 与 Panda PWR 连接

#### 绑定 Panda Touch 和 Panda PWR

- 打开 Panda PWR 页面<br><img src=img/panda_pwr/bind_before.png width="600"/>
- 长按“Bind”按钮，直到蓝灯开始闪烁（大约 3 秒）。
- 将 Panda Touch 放置在 Panda PWR 外壳上，以建立连接。
  <img src=img/panda_pwr/ask_bind.png width="600"/>

- 绑定成功后，Panda PWR 的数据将在此页面显示。
  <img src=img/panda_pwr/bind_ok.png width="600"/>

#### 与 Panda PWR 解绑

- 若要将 Panda PWR 绑定到另一设备，请先解绑当前连接。
  <img src=img/panda_pwr/unbind.png width="600"/>

#### 打完关机

当您需要打印机在打印完成后自动关闭时，激活自动断电开关，设置倒计时时间和温度限值，
并在条件满足时启动倒计时。倒计时完成后，Panda PWR 将自动切断打印机的电源供应。

- 激活自动断电
  <br><img src=img/panda_pwr/start_auto_power_off.png width="600"/>

- 当打印机在线且温度达到设定限值时，倒计时将自动开始。如果条件不满足，倒计
  时将暂停，并在条件再次满足时恢复。
  <br><img src=img/panda_pwr/auto_power_off_ing.png width="600"/>

#### 清除电量消耗数据

Panda PWR 记录负载的电力消耗。要重置数据，请点击“RST Usage”按钮。
<br><img src=img/panda_pwr/reset_usage.png width="600"/>

#### 如何隐藏 Panda PWR 的控制界面

- 切换到设置页面，点击 Panda PWR，再选择 Off
  <br><img src=img/pandatouch/hide_pwr.png width="600"/>

#### USB1 跟随打印机灯光

- 设置为开：USB1 将跟随打印机的 LED 变化。如果 LED 灯亮，则 USB1 输出 5V；
  如果关闭，则输出禁用。
- 设置为关：USB1 仅在手动控制下操作，与打印机的 LED 状态无关。
  <br><img src=img/panda_pwr/usb1_function.png width="600"/>

### SD 卡和 U 盘的排序功能

#### 按名称排序

点击"Name"可切换名称按照‘A’->‘Z’或‘Z’->‘A’排序，暂时不支持中文名排序
<br><img src=img/pandatouch/sort_by_name.png width="600"/>

#### 按日期排序

点击"Date"可切换日期按照新到旧或旧到新排序
<br><img src=img/pandatouch/sort_by_new.png width="600"/>

### U 盘文件的缩略图预览功能

点击右下角的图标可切换为缩略图
<br><img src=img/pandatouch/to_thumbnail.png width="600"/>  
再次点击可切换回文件为列表
<br><img src=img/pandatouch/thumbnail.png width="600"/>

> 提示:
> 当前仅支持 Bambu Studio 生成的 3mf 文件，如果缩略图无法正常显示，请尝试使用 Bambu Studio 重新切片

### 支持打印机 SD 卡和 U 盘的文件夹访问

- 点击目录后可以切换目录
  <br><img src=img/pandatouch/change_dir.png width="600"/>

- U 盘
  <br><img src=img/pandatouch/udisk_folder.png width="600"/>

- SD 卡
  <br><img src=img/pandatouch/ftps_folder.png width="600"/>

### 重新打印

#### 从主页重新打印

<br><img src=img/pandatouch/reprint_home.png width="600"/>

> 注意: 该打印文件须存放在打印机 SD 卡默认目录下（在 Panda Touch 设置界面可以选择默认目录为 Cache 或者根目录）。

#### 从历史记录重新打印

<br><img src=img/pandatouch/print_history.png width="600"/>

### 切换打印机默认的 SD 卡目录

<br><img src=img/pandatouch/cache_root.png width="600"/>

### 新增语言

<br><img src=img/pandatouch/language_custom.png width="600"/>

- 德语
  <br><img src=img/pandatouch/de.png width="600"/>

- 西班牙语
  <br><img src=img/pandatouch/es.png width="600"/>

- 日语
  <br><img src=img/pandatouch/ja.png width="600"/>

### 如何更换主页的熊猫图片

使用 [这个工具](https://pandatouch.us.kg/) 来替换熊猫图片.

- 请确保 Panda Touch 的固件是 V1.0.6 及以上版本.
- 请确保图片格式满足以下条件:
  - 宽度不超过 280
  - 高度不超过 306
  - 色深度为 32 位
  - 格式为 PNG.
- 如果你想要替换 UI 上的文本可以上传.yml 文件.
  - [Panda Touch UI 翻译](https://github.com/bigtreetech/PandaTouch/tree/master/Translation)
    <br><img src=img/pandatouch/upload_new_panda.png width="600"/>

## 故障排除

### 连接故障排除

#### 连接失败

<img src=img/pandatouch/mqtt_connect_failed.png width="600"/>

此提示表示 Panda Touch 无法与打印机建立连接。通常有几种原因会导致这种情况：

- 打印机和 Panda Touch 不在同一局域网上-检查连接到打印机和 PandaTouch 的 WiFi 是否为同一 SSID。如果没有，请将它们连接到同一 SSID。

- 路由器限制局域网内设备之间的通信——使用无线路由器的`访客`网络时通常会出现这种情况。建议设备使用普通 WiFi 网络，而不是`访客`WiFi 网络。

- 打印机 IP 地址不正确-Panda Touch 中输入了不正确的 IP 地址，或者路由器更改了打印机的 IP 地址。检查 Panda Touch 内的 IP 地址是否与打印机的 IP 地址匹配。在未来的固件更新中，Panda Touch 将能够自动查找和修复因路由器更改打印机 IP 地址而中断的连接。

- 打印机序列号代码不正确-输入了不正确的序列号代码。检查打印机的序列号是否与 Panda Touch 中的序列号匹配。

- 弱 WiFi 信号-Panda Touch 和打印机都有显示 WiFi 信号的图标，请尽量确保 WiFi 信号尽可能强。

#### 验证失败

<img src=img/pandatouch/mqtt_login_failed.png width="600"/>

此提示意味着 Panda Touch 可以与打印机建立连接，但身份验证失败。这通常是由不正确的访问代码引起的。请检查打印机的访问代码是否与设置的代码匹配。不正确的访问代码通常由以下原因引起：

- 输入错误。
- 单击打印机上的刷新访问码按钮，导致代码发生更改。
- 启用/禁用打印机的 LAN 模式会导致打印机生成新的访问码。
- 退出或重新登录 Bambu 实验室帐户会导致打印机生成新的访问码。

## 固件

### 功能请求

如果您希望在即将发布的 Panda Touch 固件中增加产品需求，请在官方 Panda Touch github repo 上提交请求，让我们知道。

[请求功能](https://github.com/bigtreetech/PandaTouch/issues)

### 如何更新固件

> NOTE: 更新 V1.0.2 以上版本时需要同时更新两个文件:一个是 bin 文件，另一个是 img 文件. 这将有助于我们在未来为 Panda Touch 添加更多的语言，请确保同时下载.bin 和.img 文件.

#### OTA

- 将固件二进制文件[固件历史记录](#firmware_history)下载到用于执行更新的设备。这可以是运行 iOS 或 Android 等操作系统的计算机或移动设备。在下文中，它将被称为`计算机`。

  <br><img src=img/pandatouch/firmware_download.png width="600"/>

- 将 Panda Touch 连接到与电脑位于同一局域网上的 WiFi。
- 从`网络`菜单中查找 Panda Touch 的 IP 地址。

  <br><img src=img/pandatouch/ip.png width="600"/>

- 在计算机浏览器中输入 Panda Touch 的 IP 地址以访问 web UI，然后单击“Update FW”按钮。

  <br><img src=img/pandatouch/ota_1.png width="600"/>

- 单击`Choose File`按钮，然后选择下载的固件二进制文件。Panda Touch 将自动开始更新。

  <br><img src=img/pandatouch/ota_2.png width="600"/>

- 更新完成后，Panda Touch 将自动重新启动并运行新固件。

  <br><img src=img/pandatouch/ota_3.png width="600"/>

#### 如何更新 img 文件

- 当新固件的 img 部分发生更改时，ota 将要求更新 img 文件。

  <br><img src=img/pandatouch/ota_img_remind.png width="660"/>

- 将 img 文件下载到用于执行更新的设备。这可以是运行 iOS 或 Android 等操作系统的计算机或移动设备。在下文中，它将被称为`计算机`。

  <br><img src=img/pandatouch/ota_img_download.png width="660"/>

- 在计算机浏览器中输入 Panda Touch 的 IP 地址以访问 web UI，然后单击“Update File”按钮。

  <br><img src=img/pandatouch/ota_img_1.png width="660"/>

- 单击“Choose File”按钮，然后选择下载的 img 文件。Panda Touch 将自动开始更新。

  <br><img src=img/pandatouch/ota_img_2.png width="660"/>

- 更新完成后，Panda Touch 将自动重新启动并运行新的 img 文件。

  <br><img src=img/pandatouch/ota_img_3.png width="660"/>

### 固件历史记录 <a id="firmware_history"></a>

#### [V1.0.6.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.6.1/panda_touch-v1.0.6.1.bin)

##### 修复 BUG

- **当打印时崩溃**: 从 U 盘打印时崩溃重启.
- **在 OTA 页面崩溃**: 在 OTA 页面点击 wifi 名称时崩溃重启.

##### 功能修改

- **在打印时停止加载缩略图**.

#### [V1.0.6]

##### 新特性

- **支持主页打印任务和 SD 卡的缩略图显示**：仅显示从 Bambu Studio 发起的打印任务，该.3mf 文件大小需<=20M，X1 系列机器暂不支持。
- **支持打印完成后在主页快捷重新打印**：该打印文件须存放在打印机 SD 卡默认目录下（在 Panda Touch 设置界面可以选择默认目录为 Cache 或者根目录）。
- **支持显示打印历史记录并发起打印**：当前仅支持显示最新的 12 条打印记录。
- **支持文件夹目录访问**：包括 SD 卡和 U 盘。
- **支持耗材管理界面显示当前加载的耗材**：全新 UI 效果，更接近官方操作体验。
- **支持 AMS 界面显示 AMS 设备湿度**：在右下角可查看湿度显示图标及数据。
- **支持耗材管理界面选择更多类型的耗材**：耗材编辑界面现已同步 Handy APP 可设置的耗材类型。
- **支持组打印设置延时功能**：当通过 U 盘发起组打印时，能够对打印机进行延时打印操作。
- **支持隐藏 Panda PWR 控制界面**：在 Panda Touch 设置界面选择开启/关闭。
- **支持更多语言显示**：新增德语、西班牙语、日语显示。每种语言使用不同的.img 文件，以第三种语言方式使用。

##### 功能优化

- **优化打印前预选项**：Panda PWR 的自动关机（Auto Power-Off）功能选项默认为关闭。
- **优化更换熊猫封面文件的校对程序**：设备通电后检查该文件是否正确以避免更新过程中意外中断导致无法启动。
- **优化腔体温度显示图标**。
- **优化 IMG 文件生成方式**：可使用在线工具生成 new_panda 文件包：[online tool](https://pandatouch.us.kg/)。

##### 修复 BUG

- **修复 Access code 数据同步问题**：从云服务器获取的 Access code 数据错乱时会导致 SN 数据丢失后无法连接打印机。
- **修复中国地区云账号登录异常问题**。

#### [V1.0.5.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.5.1/panda_touch-v1.0.5.1.bin)

- 新增 Panda PWR 绑定模式，实现拓竹打印机智能化电源管理。

#### [V1.0.5](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.5/panda_touch-v1.0.5.bin)

- 新增 Panda PWR 绑定模式，实现拓竹打印机智能化电源管理。
  - 支持显示 Panda PWR 管理界面，可查看打印机功率和功耗，可控制打印机电源开关。
  - 支持 Panda PWR 集群管理，最高可支持控制 10 台。
  - 支持在 Panda Touch 发起打印的窗口预设 Panda PWR 选项。
    - 可一键选择打印完成后自动关机，实现节能环保打印。
    - 可一键选择重置电量选项，轻松纪录每次打印用电量。
  - 该功能需要配合 BIGTREETECH Panda PWR 产品使用。
- 新增 SD 卡文件名和 U 盘文件名排序功能。
  - 支持按名称对打印文件进行排序，方便用户查找打印文件。
- 新增 U 盘文件缩略图预览功能。
  - 支持最高 24 个仅 Bambu Studio 生成的 3mf 文件缩略图显示，用户可在列表或缩略图之间切换查看，轻松识别每个打印文件内容。
- 优化升降床按钮顺序
  - 调整了升降床按钮的顺序，更符合 P1\X1 系列升降逻辑，操作更加顺手。
- 优化 WiFi 连接体验
  - 当用户为 Panda Touch 配置 WiFi 时，如输入 WiFi 密码不正确，将不再自动重新连接 WiFi，避免消耗处理器资源。
- 修复风扇速度显示错误的问题。
- 修复 X1 系列热床不能设置超过 100 摄氏度的问题。

#### [V1.0.4.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.4.1/panda_touch-v1.0.4.1.bin)

- 修复错误：在 V1.0.4 之前的版本中设置了喷嘴材料后，升级到 V1.0.4 会导致系统崩溃和重启。

#### [V1.0.4](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.4/panda_touch-v1.0.4.bin)

- 增加在设置页面中登录拓竹账号功能，支持 PandaTouch 使用云模式通信，可解决无法使用 Panda Touch 对更新最新固件的拓竹 P 系列打印机发起打印和加热等问题。
- 支持切换不同通信方式，在打印机编辑界面增加开关，支持自由切换 Panda Touch 与打印机之间是否使用云模式进行通信。
- 增加 Wi-Fi 自动重新连接功能，并支持自动连接相同 SSID 中信号最强的 Wi-Fi，解决 Mesh 组网中无法自动连接到最强同名 Wi-Fi 的问题。
- 优化打印文件排序方式，打印机 SD 卡存储的打印文件和 Pand Touch 外接 U 盘的打印文件，将按照时间由新到旧进行排序功能，方便快速使用最新上传的打印文件。

> NOTE:
> 我们删除了该版本的 bin 文件，请使用最新版本的固件.

#### [V1.0.3](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.3/panda_touch-v1.0.3.bin)

- 支持多组控制打印机.
- 支持更换熊猫图片.
- 新增无 AMS 情况下，默认自动选择外部耗材插槽.
- 新增打印时进行轴操作，弹出提示.
- 新增 IP 地址重连功能，当打印机 IP 地址发生变化后，PandaTouch 后台自动更新打印机的 IP.
- 新增屏幕亮度控制功能.
- 新增扫描数量开放至 20 台的功能.
- 新增重新打印功能，仅支持从 PandaTouch 发起的打印任务，打印任务期间请确保 PandaTouch 不断电.
- 解决打印暂停时无法加载/卸载耗材.
- 解决德语文件名未正确显示，ä ü ö ß 字符未显示.
- WiFi 断线后，后台重连 3 次后，同时点击刷新按钮，可自动重新连接 Wifi.
- 解决相同 SSID 无法连接问题，使用 BSSID 区分 WiFi.

#### [V1.0.2](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/1.0.2/panda_touch-v1.0.2.bin)

- 增加中文语言包。

备注：自 2024 年 2 月 8 日起，中国大陆地区销售的 Panda Touch 出厂固件默认为 V1.0.2；如您在 2024 年 2 月 8 日前购买 Panda Touch，可在对应销售平台联系客服获取 V1.0.2 固件进行升级，同时可点击查看 V1.0.2 升级教程视频：[视频请点击](https://www.bilibili.com/video/BV1uJ4m1e7cu/?spm_id_from=333.337.search-card.all.click&vd_source=4d2b504c4ca810a3b6654c51b2ffd5e5)

#### [V1.0.1](https://github.com/bigtreetech/PandaTouch/blob/master/Firmware/panda_touch-v1.0.1.bin)

- 首次发布的工厂固件。

以下部分讨论了此固件版本的逻辑是如何工作的。有关最新的控制逻辑，请参阅用户指南的主要部分。

##### 分组逻辑（控制模式）

Panda Touch 有 4 种可设置的控制模式：
&nbsp;&nbsp;&nbsp;&nbsp;<img src=img/pandatouch/control_mode.png width="600"/>

- `主机`：一台机器，它为自己和可能的其他机器提供指令。
  - Panda Touch 显示的 MicroSD 卡中的温度、耗材和文件列表都来自于此打印机。
  - Panda Touch 要求在`主机`上设置一台打印机作为此信息的来源。
  - `温度/轴`和`耗材`菜单上的所有控件菜单均参考`主机`。
  - Panda Touch 将在后台监视来自“Master”的所有`打印错误`和`HMS`消息，如果它们不是关键消息，则将它们发送到通知中心，如果它们是关键消息，将用弹出窗口显示。
  - 您可以使用主机的内部 SD 内存直接在主机上启动打印作业。
- `从机`：从机将遵循用户发送给“主机”的指令。例如，所有从属机器都将遵循`主页` `加热`、`设置耗材信息`和`加载/卸载耗材`等说明。此设计用于打印场中打印机的批量控制，因此建议 `从机`机器的型号和耗材（AMS）与`主机`机器的相同。如果它们不同，请谨慎使用`从机`模式。
  - `温度/轴`和`耗材`菜单上的所有控制将在`从机`机器上生效。
  - 同时可以没有或有多个`从机`机器。
  - Panda Touch 将在后台监视来自`从机`机器的所有`打印错误`和`HMS`消息，如果它们不是关键的，则将它们发送到通知中心，如果它们是关键的，将用弹出窗口显示。
  - 您可以使用外部 USB 驱动器并选择从属打印机，在`从机`打印机上启动打印作业。
- `同步`：不遵循发送到`主机`和`从机`的指令的独立机器。
  - 同时不能有一台或多台`同步`机器。
  - Panda Touch 将在后台监视来自“同步”机器的所有`打印错误`和`HMS`消息，如果它们不是关键消息，则将它们发送到通知中心，如果它们是关键消息，将用弹出窗口显示。
  - 您可以使用外部 USB 驱动器在`同步`打印机上启动打印作业，然后选择从属打印机。
  - 您无法使用`温度/轴`和`耗材`菜单控制同步打印机。必须将它们临时设置为`主机`才能执行此操作。在未来的固件版本中，分组方案将被调整以使得这是可能的。
- `断开连接`：Panda Touch 将在这种状态下关闭与任何打印机的连接，并且不会向其发送任何指示。

###### 从打印机的 MicroSD 卡开始打印

- 确保 MicroSD 卡被**`格式化为FAT32`**，且已插入`主机`打印机。
- 转到`主打印机的MicroSD卡`菜单。
  <br> <img src=img/pandatouch/micro_sd.png width="600"/>

- Panda Touch 只支持在 Bambu Studio 的`Build Plate#1`中切片的文件。
- Panda Touch 只支持`.3mf`文件，不支持`.gcode`文件。
- Panda Touch 只支持读取根目录中的文件，不支持读取文件夹中的文件。
- 此菜单中显示的文件列表来自`主机`打印机。如果我们想从另一台打印机打印文件，我们可以将要打印的打印机设置为`主机`。
- 就像[从 USB 闪存驱动器开始打印]（#从 USB 闪存驱动开始打印）中的步骤一样，选择要开始打印的打印机。

###### 多台打印

当一台处于`同步`状态的打印机正在打印，或多台处于其他状态的打印机同时打印时，Panda Touch 将显示“多台打印”菜单，如下所示
<br> <img src=img/pandatouch/multi_printing.png width="600"/>

此菜单中存在以下组控件：

- ①: 打开/关闭当前打印列表中打印机的腔室 LED。
- ②: 停止当前打印列表中的所有打印作业。
- ③: 暂停/恢复当前打印列表中的所有打印作业。

## 技术支持

这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：service001@biqu3d.com
