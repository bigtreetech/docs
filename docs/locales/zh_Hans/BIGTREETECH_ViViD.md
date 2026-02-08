# BIGTREETECH ViViD

<img src=/img/ViViD/product.webp width="60%"/>

产品链接: [BIGTREETECH Official Website](https://biqu.equipment/products/biqu-vivid?_pos=1&_sid=5ae86dc46&_ss=r)


## 装配指引

###  PTFE管连接

#### 主机与 Buffer 的连接

<img src=/img/ViViD/PTFE1.webp width="50%"/>

<img src=/img/ViViD/PTFE2.webp width="50%"/>

请先取消卡扣后，使用 PTFE 管将 ViViD 主机与 Buffer 的 T-0 至 T-3 接口一一对应连接，连接完成后安装好卡扣。

如果您是 VORON 用户，可使用修改后的过滤背包来简化管路布设。修改后的背包允许将 Buffer 塞入打印仓格栅口，ViViD 主机可放置在 VORON 机箱顶部。

<img src=/img/ViViD/PTFE3.webp width="50%"/>

打印件下载链接：<https://github.com/bigtreetech/BIGTREETECH_ViViD/tree/master/STL/Voron2.4>

**重要提示：PTFE连接要求**

连接ViViD主机与 Buffer 之间的 PTFE 管时，请务必保证管路顺畅。

**建议最小弯曲半径不小于 60mm**（推荐 100mm 以上）。过小的弯曲半径会显著增大阻力，严重影响耗材切换成功率，甚至可能导致耗材断裂。

####  Buffer 与工具头的连接

<img src=/img/ViViD/PTFE4.webp width="100%"/>

管路连接完成后，请**务必**安装 Buffer 出口处的卡扣，否则 PTFE 管可能会在耗材反复受力后脱出。

###  供电连接

我们提供两种线缆连接方式，功能上无本质区别，用户可根据自身使用环境选择。

<img src=/img/ViViD/zh/供电1.webp width="80%"/>

<img src=/img/ViViD/zh/供电2.webp width="60%"/>

* **方式一**：使用USB线材，将USB口连接上位机USB,另一端连接ViViD本体Input，另外一根双头MX3.0线，插入ViViD本体Output，另一端插入缓冲器的Input。

    <img src=/img/ViViD/zh/供电3.webp width="60%"/>

    <img src=/img/ViViD/zh/供电4.webp width="60%"/>

* **方式二**：使用USB线材，将USB口连接上位机USB,另一端连接缓冲器Input,另外一跟双头MX3.0，插入缓冲器Output，另一端插入ViViD本体Input。

**供电说明：**

* ViViD 主机采用交流电源供电。请使用标准的三孔电源线（品字尾电源线）连接设备。

    <img src=/img/ViViD/Power_Connection5.webp width="50%"/>

* 连接完成后，将电源开关拨至 **ON** 位置（“\|”符号按下）。

* 此时设备完成通电。在未进行软件配置或未成功连接至 Klipper 时，指示灯将亮起**浅红色**。

    <img src=/img/ViViD/Power_Connection6.webp width="60%"/>

###  强化辅助安装选项

#### 安装HUB及磁环

<img src=/img/ViViD/USB_HUB.webp width="30%"/>

部分主控板的USB接口信号由SOC直驱（如BTT Pi V1.2系列、BTT Pi2系列等），这导致USB信号强度较弱，很难保持长距离稳定通讯，VVD与这类主板连接时，需要使用随机配送的USB HUB转接线进行转接，以增强USB信号强度，增大传输距离，提高信号稳定性。

#### 磁环的使用

<img src=/img/ViViD/Ferrite.webp width="50%"/>

<img src=/img/ViViD/zh/磁环2.webp width="60%"/>

另外可通过增加磁环来防止VVD的USB线受到干扰导致信号不良出现断连情况。

当USB线材从电机旁边穿过时，步进电机在工作时会干扰USB信号的正常通讯；这种情况下我们这边建议可以在电机线上加上磁环来减小电机的干扰，磁环建议加在电机线和主板连接端。

##  软件配置

###  MMS 软件部署

####  安装步骤

<img src=/img/ViViD/MMS1.webp width="100%"/>

* **进入用户目录：**

    ``` bash
    cd ~
    ```

* **克隆代码仓库：**

    ``` bash
    git clone https://github.com/bigtreetech/BIGTREETECH_MMS.git
    ```

* **进入目录并执行安装脚本：**

    ``` bash
    cd ~/BIGTREETECH_MMS
    ./install.sh
    ```

####  脚本配置引导

执行 `install.sh` 后，脚本将引导您进行配置。当终端提示 `(y/n)?` 时，输入 `y` 表示确认/启用，输入 `n` 表示否。

**安装步骤（由上至下）：**

* **版本检查**

    <img src=/img/ViViD/Version_Check.webp width="100%"/>

* **设备串口检查：**

    如果检测到串口，会提示用户在现有串口中选择是否为该设备的串口号

    <img src=/img/ViViD/serial_port1.webp width="100%"/>

    如果未检测到，会提示用户是否继续安装。

    <img src=/img/ViViD/serial_port2.webp width="100%"/>

* **功能模块配置：**

    确认“切刀”配置是否开启。

    确认“工具头传感器”是否开启。

    确认是否启用“冲刷”和“清理喷嘴”。

    <img src=/img/ViViD/Module_Configuration.webp width="100%"/>

* **重启 Klipper 服务：**

    脚本执行完毕后将请求重启 Klipper 服务以应用更改。此步骤可能需要输入密码。

    <img src=/img/ViViD/Restart_Klipper.webp width="100%"/>

* **KlipperScreen 适配（可选）：**

    如有安装 KlipperScreen，可在此处按 `Y` 进一步安装 ViViD 修改版本。安装结束后会提示重启。

    <img src=/img/ViViD/KlipperScreen.webp width="100%"/>

#### 版本升级

在后续升级MMS时,可输入以下命令进行更新，更新完后会出现 ViViD update is complete的提示。

``` bash
cd ~/BIGTREETECH_MMS
git pull origin master
./install.sh -u
```

<img src=/img/ViViD/update.webp width="90%"/>

###  MMS 软件配置

#### ID 配置（串口 ID）

**配置文件位置：** `config/bigtreetech-mms/mms/mms.cfg`

如果出现长时间无法启动或显示 `unable to connect MCU"vivid"` 或 `unable to connect MCU"buffer"`，用户需要检查串口ID是否配置正确。

<img src=/img/ViViD/serial_IDs.webp width="100%"/>

**提示：** 若安装时已检出串口 ID，此项会被自动填充，可忽略。

####  传感器配置（Entry Sensor）

**配置文件位置：** `config/bigtreetech-mms/mms/mms.cfg`

若您的工具头安装了位于挤出机齿轮前约 **5-15mm** 处的传感器（即 Entry Sensor），请取消注释并正确填写 `entry_sensor` 的引脚（Pin）。

<img src=/img/ViViD/Entry_Sensor.webp width="100%"/>

**重要： 该传感器能显著提高换料精度。若未安装，MMS 将依赖 Buffer 传感器估算位置，可靠性可能降低。**

####  切刀配置（Cutter）

**配置文件位置：** `config/bigtreetech-mms/base/mms-cut.cfg`

此文件用于定义安装在工具头上的切刀动作。

- **动作逻辑：** 切刀从 `init` 坐标行至 `final` 坐标执行动作，动作结束后返回 `init` 坐标。

- **坐标形式：** 配置中的坐标形式为 `(X 轴, Y 轴)`。

- **适配性：** 这种控制方式允许适配 Filametrix 的 X 轴方向运动，也可以适配 A4T 的 Y 轴方向运动。用户可按需自行修改。

- **配置方法**：在打印机运行Home之后，可以在Klipperscreen或者Mainsail等Web UI上移动Toolhead，确认切刀撞击的起始坐标（`cutter_init_point`）及切刀装机的最终坐标（`cutter_final_point`）。

<img src=/img/ViViD/cutter.webp width="80%"/>

####  冲刷配置（Purge）

**配置文件位置：** `config/bigtreetech-mms/base/mms-purge.cfg`

MMS 使用 Purge 配置进行装载流程结束后冲刷残留耗材。

| 变量名 | 描述 |
| :--- | :--- |
| `enable` | 设定该功能的开启/关闭（1/0）。 |
| `orphan_filament_length` | 设定冲刷长度。 |
| `purge_modifier` | 设定冲刷长度的倍率。 |
| `tray_point` | 设定冲刷位置/停靠位置。 |

<img src=/img/ViViD/Purge1.webp width="80%"/>

<img src=/img/ViViD/Purge2.webp width="80%"/>

**配置说明：** 在打印机运行Home之后，可以在Klipperscreen或者Mainsail等Web UI上移动Toolhead，确认冲刷时Toolhead停留位置（`tray_point`）。

`eject_point`的作用是为某些具有弹射结构清理装置设计，此时运动逻辑为tray point处冲刷，后移动至eject point位置，达到冲刷料弹射作用。

**注意：** 为防止填充/冲刷过程中喷嘴溢料对模型造成影响，用户应在此处设定一个**通常打印范围外的坐标**。

即使未开启冲刷功能，Tray_Point作为更换耗材（Swap）时的停靠点，也同样需要根据机器情况进行设置。

####  擦拭功能配置（Brush）

**配置文件位置：** `config/bigtreetech-mms/base/mms-purge.cfg`

此文件定义 XY 平面的喷嘴擦拭。

- 敲击通常在擦拭执行完毕后执行。

- **配置说明：** 在打印机运行Home之后，可以在Klipperscreen或者Mainsail等Web UI上控制移动Toolhead，确认擦拭坐标（`wipe-point`）。

    | 变量名 | 描述 |
    | :--- | :--- |
    | `enable` | 设定该功能的开启/关闭（1/0）。 |
    | `wipe-point` | 设定擦拭位置坐标。 |
    | `wipe_times` | 设置擦拭次数。 |

    <img src=/img/ViViD/Brush.webp width="80%"/>

####  运动参数配置（Motion）

**配置文件：** `config/bigtreetech-mms/base/mms-motion.cfg`

若在测试中发现进退料通道顺畅，但驱动轮（Drive Gear）磨损耗材严重，说明挤压力过大或加速度过高。请在 `mms-delivery.cfg` 中适当降低 `speed_drive`（速度）和 `accel_drive`（加速度）的值。

<img src=/img/ViViD/Motion.webp width="80%"/>

完成以上文件配置后，ViViD 即可开始工作。如需进一步安装/调试，请查阅本手册中的**调优指南**。

更多参数说明请查看文档：<https://github.com/bigtreetech/BIGTREETECH_MMS/blob/master/docs/zh/mms_config.md>

##  ViViD运行逻辑说明及调试命令

<img src=/img/ViViD/Operation_Logic.webp width="100%"/>

强烈推荐安装进料传感器（Entry Sensor）后进行使用ViViD。

安装Entry Sensor后的整体运动逻辑如下。

###  ViViD工作流程

为便于理解，ViViD 结构可简单理解为：Buffer (T0-T3) -> Gate Sensor -> Entry Sensor -> 挤出机 (Extruder) -> 喷嘴 (Nozzle)。

MMS 常规的一次 **Swap**（换料）流程如下：

**步骤 1：Eject（退料）判断**

- **判断条件：** 若 `entry` 传感器或 `gate` 传感器触发（即当前有耗材装载），则执行 Eject 流程。

- **否则：** 直接进入 Load 流程（步骤 3）。

**步骤 2：Eject（退料）流程**

- **尖端成型与切割：**

    > 若检测到 `entry` 传感器触发，且热端温度大于挤出设定温度时，挤出机会进行**尖端成型**动作。
    > 随后先执行 `CUT` 动作，再尝试卸载 **120mm** 耗材。

- **高速退料：**

    > 若检测到 `entry` 传感器释放，以高速进行大段长度卸载，直至检测到 `gate` 传感器释放。

- **完成退料：**

    > 在再次对耗材进行小段卸载后，完成 Eject 流程。

**步骤 3：Load（进料）流程**

- **选择器调整：**

    > Eject 完成后进行 Load 流程。首先尝试调整选择器（Selector），直到选择器的角度合适（触发对应的 `selector-sensor`）。

- **高速装载：**

    > 尝试使用大段高速装载动作，直至检测到 `entry` 传感器触发（若未安装Entry Sensor，则为检测到 `outlet` 传感器触发）。

- **进入 Charge 流程：**

    > 随后进入 Charge 流程。该流程的理想结束状态为耗材末端刚好接触到挤出轮。

**步骤 4：Charge流程**

Charge 流程用于令挤出机夹持耗材，并判断耗材是否已被挤出机成功夹持。

- **夹持尝试：** 挤出机尝试夹持，随后驱动轮（Drive Wheel）会有小幅运动。

- **状态检测：** 在此时持续检测 `buffer-runout` 及 `outlet` 传感器状态，以判断耗材是否已正确被挤出轮夹持。

- **失败处理：** 若未夹持成功，则执行 Eject 后重试 Load（重试次数默认为 3 次，可通过配置文件修改）。

- **成功处理：** 成功则进入 Purge 流程。

**步骤 5：Purge（冲刷）流程**

- **运动与填充：** 若 `enable` 参数设定为 `1`，工具头运动至指定坐标后进行小段低速度冲刷耗材。

- **冲刷：** 随后执行相对高速的挤出用于**冲刷**（具体长度和速度都可以在配置文件中设定）。

- **进入 Brush 流程：** Purge 结束后进入 Brush 流程。

**步骤 6：Brush（清理）流程**

- **清理：** 若 `enable` 参数设定为 `1`，工具头运动至指定的 Brush 坐标并反复运动指定次数，以清理喷嘴残留。

- **流程结束：** Brush 结束后，该轮调用结束，视作完成一次完整的 Swap 动作。

###  工作台指令

ViViD 的 T0 至 T3 所对应的料盘槽位分别被定义为 **SLOT0-SLOT3**。

<img src=/img/ViViD/T0T3.webp width="60%"/>

| 命令（别名） | 用途 | 示例（以 SLOT0 为例） |
| :--- | :--- | :--- |
| `MMS` | 显示当前 MMS 版本 | `MMS` |
| `MMS STATUS` | 显示当前所有传感器状态 | `MMS STATUS` |
| `MMS_POP` | 将所有耗材末端停靠于 GATE 传感器前（待机状态） | `MMS_POP SLOT=0` |
| `MMS_SELECT` | 控制选择器选中指定 SLOT | `MMS_SELECT SLOT=0` |
| `MMS_LOAD` | 对指定的 SLOT 执行装载动作（包含 SELECT） | `MMS_LOAD SLOT=0` |
| `MMS_MOVE` | 控制指定槽位的耗材向挤出机方向运动指定长度（负号为反向运动） | `MMS_MOVE SLOT=0 DISTANCE=10` |
| `MMS_EJECT` | 卸载当前已装载耗材 | `MMS_EJECT` |
| `MMS_BUFFER_ACTIVATE` | 开启异步进料功能 | `MMS_BUFFER_ACTIVATE` |
| `MMS_BUFFER_DEACTIVATE` | 关闭异步进料功能 | `MMS_BUFFER_DEACTIVATE` |
| `MMS_CUT` | 执行 MMS 内置的切刀动作（可用于验证切刀坐标） | `MMS_CUT` |
| `MMS_PURGE` | 依据设定的 Purge 参数，达成排出空腔甚至冲刷耗材颜色（单独使用可用于验证参数及坐标） | `MMS_PURGE` |
| `T*` | 将对应 SLOT 的耗材装载至挤出头 | `T0` / `T1` / `T2` / `T3` |

**关于 `T*` 命令：** `T*` 命令包含 `LOAD`、`CHARGE`、`PURGE` 逻辑。如在输入命令时存在其他槽位的耗材已装载，也会在执行 `CUT`、`EJECT`、`SELECT` 后进行 `LOAD`、`CHARGE`、`PURGE`。常用于在切片中调用一次完整的换料流程。

###  异常判断

当出现异常时，可通过发送`MMS_STATUS`指令分析异常状态。

<img src=/img/ViViD/MMS_STATUS.webp width="80%"/>

若未配置Entry Sensor则不会显示Entry状态。

- `Slot [0]` 表示T0, 从左到右第一个料槽位。

- `Slot [1]` 表示T1, 从左到右第二个料槽位。

- `Slot [2]` 表示T2, 从左到右第三个料槽位。

- `Slot [3]` 表示T3, 从左到右第四个料槽位。

- `[selector]` 表示对应仓位的选料电机是否夹紧，`1`表示对应槽位已选择，`0` 表示对应槽位未选择。

- `[inlet]` 表示进料开关是否触发 - `0`表示耗材未进入ViViD,进料开关未触发，`1` 表示耗材已进入vivid，进料开关触发。

- `[gate]` 表示缓存进料开关是否触发，`0`表示未触发，耗材未进入buffer，`1`表示触发，耗材进入buffer。

- `[outlet]` 表示缓存出口开关是否触发，当耗材进入喷嘴，开始挤压，作为是否到Extruder的判断标准，`0`表示未触发，耗材未挤压，`1`表示已触发，耗材处于挤压状态。

    若工作台中显示outlet触发三次失败，则意味着进料异常，需检查通道是否正常。

##  功能介绍

### 进料操作

MMS 具备自动进料功能，新手不推荐使用。我们也提供了一种更易掌握的**半自动方式**：

#### 进料至缓存位置

* 在 ViViD 适配版本的 KlipperScreen 中，点击对应的仓位后，进入对应仓位耗材管理界面，点击 **Pre-Load** 按钮。点击 **Pre-Load** 后，请等待选料器（Selector）完成归位及选料动作（机械运动声停止或嗡鸣声响起）后。将耗材垂直插入对应的进料口，即可完成进料。

    <img src=/img/ViViD/Loading1.webp width="60%"/>

    <img src=/img/ViViD/Loading2.webp width="60%"/>

* 网页端可使用宏`MMS PRELOAD`，输入对应的SLOT,点击SEND之后，将耗材垂直插入对应的SLOT,耗材即可进入ViViD。

    <img src=/img/ViViD/Loading3.webp width="60%"/>

当 **Gate 传感器**被触发后，耗材会被自动预载并回抽一小段距离，进入待机状态。

####  进料至工具头挤出机

* 当耗材进入缓存后，在 ViViD 适配版本的 KlipperScreen 中，点击对应的仓位后，进入对应仓位耗材管理界面，点击Extruder,耗材即会送至Extruder，若需加热进料，则需要在工作台中输入`MMS_BUFFER_ACTIVATE`指令，后再执行挤出指令。

    <img src=/img/ViViD/Loading4.webp width="60%"/>

* 网页端可使用宏`MMS LOAD SLOT`，输入对应的SLOT,点击SEND之后,即会将对应的SLOT中的耗材送进挤出机，同时默认开启同步送料功能，若想挤出耗材，则只需手动加热之后，输入挤出命令即可。

    <img src=/img/ViViD/Loading5.webp width="50%"/>

###  退料操作

#### 退料至BUFFER

* 在 ViViD 适配版本的 KlipperScreen 中, 进入对应仓位的耗材管理界面，点击BUFFER,即可退至BUFFER外GATE未触发状态，若耗材已进入Extruder,需要在网页端工作台中执行`MMS_EJECT`。

    <img src=/img/ViViD/Unloading1.webp width="60%"/>

* 网页端可使用宏`MMS EJECT SLOT`，使全部SLOT中的耗材退至BUFFER外GATE未触发状态。

    <img src=/img/ViViD/Unloading2.webp width="50%"/>

####  退料至无耗材状态

* 在 ViViD 适配版本的 KlipperScreen 中, 进入对应仓位的耗材管理界面，点击Inlet, 耗材将推出通道外。

    <img src=/img/ViViD/Unloading3.webp width="60%"/>

* 网页端可使用宏`MMS POP SLOT`，选择对应的SLOT,点击SEND之后即可将对应SLOT的耗材退至通道外。

    <img src=/img/ViViD/Unloading4.webp width="50%"/>

    **注意：** 若耗材已进入Extruder,需要在网页端工作台中执行`MMS_EJECT`，后再点击Inlet或宏`MMS POP SLOT`。

###  切换选料仓位

* 在 ViViD 适配版本的 KlipperScreen 中,进入对应仓位的耗材管理界面，点击Select，即可完成对应的夹料指令。

    <img src=/img/ViViD/Switching1.webp width="60%"/>

* 网页端可使用宏`MMS SELECT SLOT`，选择对应的SLOT,点击SEND之后即可将对应SLOT的耗材完成对应的夹料指令。

    <img src=/img/ViViD/Switching2.webp width="50%"/>

###  仓温加热

可通过修改Mainsail中 ViViD Heater的目标值，开启仓温加热，若安装了KlipperScreen 也可使用此处按钮开启加热。

* Mainsail界面

    <img src=/img/ViViD/Heating1.webp width="80%"/>

* Klipper Screen-ViViD界面

    <img src=/img/ViViD/Heating2.webp width="60%"/>

**推荐温度及Klipper Screen中默认烘干时长**

| **常见耗材类型** | **烘干温度** | **烘干时间** |
| :--- | :--- | :--- |
| **PLA** | **45** | **4h** |
| **PETG** | **50** | **4h** |
| **ABS** | **55** | **4h** |
| **ASA** | **55** | **4h** |

如加热过程中观察到温湿传感器湿度读数较高，可通过旋转该部件开启/关闭排风口,两处传感器位于仓内左右两侧隔板处。

<img src=/img/ViViD/Heating3.webp width="80%"/>

- **开启状态：** 在ViViD在开启加热状态下，可将腔内湿气排出，达到干燥耗材的效果。

- **关闭状态：** 在ViViD未开启加热状态下，保持腔体内的湿度，避免耗材受潮。

<img src=/img/ViViD/Heating4.webp width="60%"/>

待机状态加热时，需修改`idle_timeout`中的timeout时间，若需要持续一个完整的加热周期，建议配置为 14400，即 4 小时

<img src=/img/ViViD/14400.webp width="80%"/>

###  自动进料

当对ViViD的工作原理有一定的了解之后，可以开启自动进料模式，可以更方便的让耗材进入ViViD，先在配置文件中打开自动进料的配置。

<img src=/img/ViViD/Automatic.webp width="80%"/>

开启配置之后，请将耗材捋直，放入对应的SLOT中，选料电机将快速旋转对齐，待挤出机运动后，插入耗材，请务必等电机旋转到位之后再插入耗材，否则耗材容易从侧边划出。

### 断料检测

<img src=/img/ViViD/Runout_Detection.webp width="80%"/>

默认开启断料检测，当打印过程中耗材断开，打印将会暂停，需要清理完铁氟龙管中残留的耗材之后，重新更换新的耗材，方可重新打印。

### 续料功能

<img src=/img/ViViD/Filament_Backup1.webp width="80%"/>

<img src=/img/ViViD/Filament_Backup2.webp width="80%"/>

由于需要冲刷残留在铁氟龙管中的残余耗材，且需开启Pruge功能，才可完成续料功能

默认T0耗材使用完更换T1,依此类推。

##  切片软件配置

本手册将以 **Orca Slicer** 为例，请根据推荐参数进行修改。

####  关闭切片软件的尖端成型

无论是 MMS 还是 HappyHare，其逻辑中都已包含了尖端成型相关逻辑。

<img src=/img/ViViD/zh/切片.webp width="80%"/>

- **操作：** 我们首先需要**关闭**切片软件生成的尖端成型，以避免反复尖端成型动作造成的二次熔融废料堵头。

- **G-code 预估：** 如果要精准预估 G-code 执行时间，可以在高级选项中填入每步执行的预估时间。

####  启用多耗材打印

通过切片软件中的对应按钮添加耗材，以开启多耗材打印功能。

<img src=/img/ViViD/zh/多耗材打印功能.webp width="60%"/>

**注意：**

1.  使用ViViD务必开启多材料打印，否则ViViD将无法进行工作。

2.  请勿使用**温差过大**的材料。这可能会因较高温材料的预加热，导致较低温材料在喉管内融化，最终产生堵塞。

####  开启擦拭塔（Wipe Tower）

您需要开启擦拭塔，以避免模型打印中产生的串色及漏料造成的轻微表面瑕疵。

<img src=/img/ViViD/zh/开启擦拭塔.webp width="60%"/>

####  模型拆分与材料指定

**模型拆分：** 对于大多数针对多色设计的模型，都可以使用 Orca Slicer 的**"拆分"**功能对其进行**"拆分到零件"**。

> 此功能可以在保留模型原本外观设计与相对位置的前提下对其进行分件。

<img src=/img/ViViD/zh/模型拆分.webp width="100%"/>

**指定材料：** 您可以在**工艺 - 对象**选项卡中，对每个"零件对象"指定不同的材料，或者使用修改器对其应用参数。

<img src=/img/ViViD/zh/指定材料.webp width="60%"/>

####  冲刷长度调整

完成切片后，您可能会观察到在冲刷塔中，不同颜色的材料冲刷长度存在差异。这是为了保障工具头内前次装载的耗材颜色可以被正确消耗。

<img src=/img/ViViD/zh/冲刷长度调整.webp width="90%"/>

- **修改：** 如果您有使用其他冲刷模组，可以在此处对冲刷长度进行修改，或者直接应用比例，以减少不必要的耗材消耗。

- **生效：** 在修改冲刷长度参数后，您需要**重新切片**才可将其应用至新生成的 G-code 文件。

- **补充：** 如果您在切片路径中看到了重叠的路径，您可能需要全选模型并组合成组合体，并通过调整对象顺序来决定重叠范围内由哪个对象覆盖其他对象。

- **提示：** Orca Slicer 详细进阶功能的介绍不在本手册的表述范围内，您需要自行查阅相关手册。

现在，您已完成了一个多色切片。请上传并打印测试它吧！

##  调优指南

### 参数描述

`install.sh` 脚本支持以下参数：

| 参数 |描述   |
| :--- | :--- |
| `-h `| 显示帮助信息（Help）。 |
| `-i` | 执行安装（Install）。 |
| `-d` | 执行卸载（Uninstall）。 |
| `-g` | 获取版本信息（Get version）。 |
| `-z` | 跳过 GitHub 更新检查。默认情况下，脚本会自动检查 GitHub 上的最新版本。如果您在本地修改了脚本逻辑，请通过 `-z` 参数禁用更新。 |

**示例：** 如果要跳过 GitHub 更新检测并卸载 MMS，应输入 `./install.sh -zd`。

###  MMS 使用进阶

####  自定义宏接口

MMS 对除 Load 流程外的每个流程中都做了自定义宏的接口。

<img src=/img/ViViD/Macro.webp width="90%"/>

**示例：** 在 Purge 配置文件中，您可以找到类似 `[gcode_macro MMS_PURGE_CUSTOM_START]` 的接口示例。

我们提供了一个 **Blobifier** 的示例，可于[BIGTREETECH Github](https://github.com/bigtreetech/BIGTREETECH_ViViD/tree/master/examples/blobifier)上获取。

####  解决 Charge 失败率高的问题

如因挤出机结构限制无法达成理想的 Load 结束/Charge 开始条件，可尝试在 `charge_before` 宏中添加以下 G-code：

<img src=/img/ViViD/Charge_Failure.webp width="90%"/>

``` ini
# 示例宏：在 Charge 执行前用驱动轮对 Buffer 进行一次"填满"动作
# 请根据实际情况修改宏名称和内容

# [gcode_macro MMS_CHARGE_CUSTOM_BEFORE]
# gcode:
#     {% set slot_num_to = printer["mms swap"].slot_num_to if printer["mms swap"].slot_num_to else 0 %}
#     MMS_BUFFER_FILL SLOT={slot_num} 
```

注意： 若该宏仍无法解决 Charge 失败率过高的问题，可能需要转而寻求结构上的微调：

* 检查 Entry 传感器通过的阻力。

* 检查管子到挤出轮是否存在台阶卡住耗材末端等。

* 这需要用户对工具头结构进行修改，以满足多色换料的使用需求。

###  Eject 卸载失败排查

若发生 Eject 流程中，耗材未成功卸载至 Gate 传感器前，可于 Console 中检查 MMS0 返回的信息。

* 若 entry=1： 用户需检查切刀是否已成功切断耗材并执行退出动作，以及 Entry 传感器下是否存有耗材顶开 Entry。

* 可靠性： 用户应自行保障工具头上搭载的传感器的可靠性。

##  其他

###  常见问题及排除

#### Q1: 我无法控制 ViViD 进行烘干

**A**： 请检查 SET_HEATER_TEMPERATURE 宏是否被改写。

目前已知该问题引发原因为 VORON 社区的床扇控制宏。该宏粗暴地将加热器输入修改为热端、热床、以及其他，并阻断了所有“其他”加热器的温度设定。

在保留其原有功能的前提下，需对其做如下修改，以对其他类型加热器进行放行：

``` ini
[gcode_macro SET_HEATER_TEMPERATURE]
rename_existing: _SET_HEATER_TEMPERATURE
gcode:
    # Parameters
    {% set HEATER = params.HEATER|default("None") %}
    {% set TARGET = params.TARGET|default(0)|int %}
    # Vars
    {% set THRESHOLD = printer["gcode_macro _BEDFANVARS"].threshold|int %}
    {% if HEATER|lower == "extruder" %}
        M104 S{TARGET}
    {% elif HEATER|lower == "heater_bed" %}
        M99140 S{TARGET}
    {% else %}
        _SET_HEATER_TEMPERATURE HEATER={HEATER} TARGET={TARGET}
    {% endif %}
    # Set fans to low if heater_bed temp is requested above threshold
    # temp, and kick off monitoring loop.
    {% if HEATER|lower == "heater_bed" %}
        {% if TARGET >= THRESHOLD %}
            BEDFANSSLOW
            UPDATE_DELAYED_GCODE ID=bedfanloop DURATION=1
        {% else %}
            BEDFANSOFF
            UPDATE_DELAYED_GCODE ID=bedfanloop DURATION=0 # Cancel bed fan loop if it's running
        {% endif %}
    {% endif %}
```


#### Q2: 在打印多色模型时总会产生错层

**A**： 此问题常出现在撞击切刀后 XY 皮带跳齿或电机失步。

*  **检查配置**： 您需要检查配置文件中是否存在会超行程或撞击结构件的配置。

* **归位方式**： 我们不推荐在使用工具头切刀的多色打印机器中使用 sensorless 归位。

* **电机散热**： 如以上问题均没有发生，请检查电机温度：

    * 如果没有过高，可以尝试稍微提高一些电流。

    * 如果温度过高，您可能需要考虑额外加装电机散热或降低仓温打印。


###  固件编译选项

本手册不建议用户自行编译更新固件，这会导致部分预设功能失效（例如：未连接至上位机时的状态指示灯）。

如若有升级需要，ViViD 和 Buffer 均已预安装了 Katapult（曾用名：CanBoot），可使用它的 flashtool.py 工具更新 GitHub 仓库给出的固件。

**具体步骤如下（仅演示，需要根据用户获得的 ID 与固件路径进行修改）：**

<img src=/img/ViViD/Firmware_Flashing.webp width="90%"/>

* **获取设备 ID**：

    ``` bash
    ls /dev/serial/by-id/*
    ```

* **执行烧录命令**：

    ``` bash
    python3 ~/katapult/scripts/flashtool.py -d /dev/serial/by-id/usb-Klipper_stm32g0b1xx_vivid_320038000A50425539393020-if00 -f ~/katapult/g0b1_usb_klipper-12-04.bin
    ```

    -d 后为前文获取到的设备 ID。

    -f 后为固件存储路径。

**若有特殊情况需要自行编译，以下是编译配置：**

| 模块 | 芯片型号 | 编译配置 |
| :--- | :--- | :--- |
| **ViViD主机** | STM32G0B1 |<img src=/img/ViViD/STM32G0B1.webp width="100%"/>|
| **Buffer模块** | STM32F042 |<img src=/img/ViViD/STM32F042.webp width="100%"/>|

* Buffer 编译注意： 在编译 Buffer 固件时，请严格按照编译说明进行编译。由于STM32F042 的闪存不足以容纳完整版本的 Klipper 固件，需在编译菜单中关闭一部分功能。


###  可选配置

####  硬件：Blobifier

Blobifier 模组以一种高密度、小体积的方式生成并存储冲刷废料。
优势： 可有效减少因冲刷废料堆积造成的构建表面污染，并方便用户以更高效的方式清理。

####  软件：Spoolman（料盘管理）

截至本手册编撰时，MMS 尚未完成对 Spoolman 的支持。

* **HappyHare 用户：** 如果您是 HappyHare 用户，Spoolman 可以令您轻松达成对耗材的管理。

* **耗材标签：** 或可达成耗材标签的读取（由于结构限制，ViViD 或许无法成功读取拓竹原装耗材的 RFID 标签，但我们可为您提供自定义标签方案，且在更换料盘时可手动转移标签）。

* **未来集成：** 并且 Orca Slicer 即将增添对 Spoolman 的支持。

* **最终体验：** 该服务最终应可以达成在 MMU、切片、以及其数据库中同步耗材信息，最终用户体验应当与拓竹 AMS 类似。
