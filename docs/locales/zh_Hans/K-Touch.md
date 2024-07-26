# K-Touch

<img src=img/K_Touch/k-touch.png width="600"/>

## 重要使用信息
* K-Touch 在其内置锂电池上运行时，电池续航时间大约为 20 到 30 分钟，具体取决于屏幕亮度。为了维护电池并延长产品寿命，建议在电池耗尽后及时给 K-Touch 充电或关闭电源。
* 当锂电池电量不足时，屏幕可能会闪烁。这种闪烁是正常的，并向用户发出电池几乎耗尽的警告。然后，用户应立即给电池充电或关闭K-Touch。
* 如果您计划经常打开和关闭打印机，我们建议您在 DC5V 模式下运行 K-Touch。这样可以绕过电池，防止电池经历多次充放电循环。如果您想使用电池供电，只需将 K-Touch 背面的开关切换到电池电源模式。
* K-Touch主页传感器名称仅支持Klipper配置文件中30个字符以内的配置名称显示，如K-Touch上出现传感器名称和温度无法显示的情况，请修改配置文件中配置名称以显示，例如klipper配置文件中配置名称为：temperature_sensor BQ_MCU（此为名称24个字符，可正常显示）。
* K-Touch支持添加多台Klipper打印机以供用户切换控制，当前最高可同时添加50台打印机以供选择切换。
* K-Touch开始打印的缩略图，目前仅支持预览前50的Gcode文件，如上传的Gcode文件超过50个，K-Touch可能会耗尽内存，请删除一些旧文件以确保正常显示。
## 基本参数

| 微处理器 | Xtensa 32位LX7双核ESP32S3R8<br/>时钟速度高达240MHz。 |
| :-----| :----: |
| 存储器 | PSRAM-8MB, Flash-16MB |
| 屏幕尺寸 | 5” |
| 分辨率 | 800 x 480 |
| 可视角度 | IPS完整视图 |
| 显示颜色 | 16.7M |
| 通信方式 | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| 工作温度 | 0-60°C |
| 工作电流（充满电） | 屏幕激活：0.6A，屏幕非激活：0.2A |
| 工作电流（充电） | 屏幕激活：1.25A，(0.95A 2024年5月后) 屏幕非激活：0.85A |
| 逻辑电压 | 3.3V |
| 内置电池 | 允许K-Touch便携式使用长达30分钟。 |
| 充电时间 | 1.2小时 |
| 扩展接口 | I2C（用于未来固件等中支持的温度/湿度传感器）<br/>USB驱动器（用于从USB驱动器读取3mf文件-仅限FAT32） |

## 装配说明

### 概述

<img src=img/K_Touch/pt_back.png width="600"/>

* 将电源开关滑动至`锂电池电源`，K-Touch即可使用锂电池运行，实现便携性。将其滑动至`DC 5V`，从磁性充电座直接供电，从而延长内部电池的使用寿命。如果您经常打开和关闭打印机，建议使用此模式。将开关滑动至`OFF`（关闭）可关闭K-Touch。

### 充电座

<img src=img/K_Touch/charging_dock.png width="600"/>

* 电源输入配备了热插拔保护，允许用户热插拔电源。

### 包装清单

| <img src=img/K_Touch/pl_1.png width="200"/> | <img src=img/K_Touch/pl_2.png width="200"/> |
| :--------------------------------------------: | :--------------------------------------------: |
|                K-Touch x 1                 |                  安装支架 x 1                  |
| <img src=img/K_Touch/pl_3.png width="200"/> | <img src=img/K_Touch/pl_4.png width="200"/> |
|                 磁性充电座 x 1                 |               USB-C充电电缆 x 1                |
| <img src=img/K_Touch/pl_5.png width="200"/> | <img src=img/K_Touch/pl_6.png width="200"/> |
|         M3x6螺钉 x 4<br/>六角扳手 x 1          |                   BTT鸭 x 1                    |


产品链接: [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-k-touch?_pos=1&_psq=K-&_ss=e&_v=1.0)

## 用户界面说明

### 首次连接指南

首次启动后或执行“恢复出厂设置”命令后，您将看到下面的屏幕。

#### 语言选择指南
<img src=img/K_Touch/language_guide.png width="600"/>

* 为K-Touch选择一种语言

#### WiFi连接指南

<img src=img/K_Touch/guide_wifi.png width="600"/>

* 在初始设置过程中，K-Touch将扫描WiFi网络，然后显示多达20个具有最佳信号强度的网络。如果您在列表中找不到所需的网络，请点击`刷新`，K-Touch将重新扫描WiFi网络。
注意：固件版本（`V1.0.0`）的固件不支持连接到隐藏的WiFi网络。此外，当K-Touch连接到WiFi时，K-Touch无法同时执行WiFi扫描任务。
* 点击列表中的WiFi名称，会弹出[键盘界面]（#键盘界面）。输入正确的密码后，单击“确定”开始连接WiFi。（密码长度：8~64个字符）
* 连接状态将显示在WiFi网络信号强度旁边。`循环`图形表示WiFi仍在尝试连接，`✔`图形表示连接成功。
* 连接成功后，将启用`下一步`按钮。单击`下一步`进入打印机连接菜单。

#### 打印机连接指南

<img src=img/K_Touch/guide_printer_fconnect.png width="600"/>

* 首次进入该页面，需要连接一台打印机才可进入主页面。
* 点击`+...`按钮，添加打印机。


##### 添加打印机方式

* K-Touch提供两种方式进行打印机的添加

<img src=img/K_Touch/guide_add_printer.png width="600"/>   

①： 扫描添加打印机，可扫描与K-Touch同一网络下的Klipper打印机用以添加。   
②： 手动添加打印机，可直接手动输入打印机的Klipper IP和端口号添加打印机。

###### ①：扫描添加打印机
<img src=img/K_Touch/guide_printer_ip.png width="600"/>

* 编辑好端口号后，默认为：80（长度2~5个字符），点击右侧刷新按钮，进行扫描，大概60s左右(网络情况决定扫描时长)，扫描出同一wifi下的打印机设备。

<img src=img/K_Touch/guide_printer_ip_flash.png width="600"/>

* 扫描完成后会自动刷新扫描出的打印机名称以及IP、端口号。

###### ②：手动添加打印机

<img src=img/K_Touch/guide_printer_fflash.png width="600"/>

* 点击 `手动添加打印机`按钮，弹出手动添加界面。

<img src=img/K_Touch/guide_printer_ip_input_mun.png width="600"/>

* 点击 `IP`（长度11~14个字符）和`PORT`（长度2~5个字符），进行手动输入IP和端口号，点击确认，即可添加成功,跳转到选择添加页面。

##### 修改打印机名称
* 长按打印机按钮可修改打印机的名称（长度2~20个字符）

<img src=img/K_Touch/print_name.png width="600"/>

##### 选择需要添加的打印机
提示：K-Touch最高可同时添加50台打印机以供选择切换

* `未选择要添加打印机`:
<img src=img/K_Touch/guide_printer_falsh_choose.png width="600"/>

* `选择要添加打印机`:
<img src=img/K_Touch/guide_printer_falsh_choosed.png width="600"/>

* 点击需要添加的打印机，选择成功后，会在白色方框内出现 `√` 图标，`返回`按钮变为 `确定`按钮，点击即可添加打印机到连接列表。（注意，刷新和连接打印机列表具有去重功能，请检查后进行打印机添加与选择）


##### 选择需要连接的打印机

* `选择要连接的打印机`
<img src=img/K_Touch/guide_printer_connect.png width="600"/>

* 点击需要`确定`连接打印机按钮
<img src=img/K_Touch/guide_printer_connect_popupp.png width="600"/>

* 打印机连接成功
<img src=img/K_Touch/guide_printer_connected.png width="600"/>
* 连接按钮变为主题色（默认为红色），连接的打印机名称、ip、端口号显示在框图内。
* K-Touch只要选择了一台打印机设备，它的信息都会显示在每个界面的最上方。
* 连接完成后，点击 `下一步` 进入主页面。

### 键盘接口
    ① ：使用此键可以隐藏或显示输入的信息。
    ② ：在大写字母和小写字母之间切换。
    ③ ：切换到“符号输入”。
    ④ ：切换到“数字输入”。
* `信函输入`:
 <br> <img src=img/K_Touch/keyboard_letter.png width="600"/>

* `符号输入`
 <br> <img src=img/K_Touch/keyboard_symbol.png width="600"/>

* `数字输入` 
 <br> <img src=img/K_Touch/keyboard_number.png width="600"/>

### 主页面

<img src=img/K_Touch/home_screen.png width="600"/>

* K-Touch主页面分为6大元素和导航键
   * 打印机选择：点击可跳转打印机选择界面，操作与初次连接打印机相同。
   * 轴移动/温度 ：点击可跳转轴移动/温度界面，拥有控制温度、挤出机进退料、轴移动、解锁电机等操作。
   * 辅助调试 ：点击可跳转辅助调试界面，拥有限位开关状态检测、自动PID、Z轴零点校准。
   * 系统设置：点击可跳转系统设置界面，拥有WiFi连接设置、屏幕亮度设置、息屏时间设置、语言选择、主题颜色选择、系统信息（设备ID、当前语言、固件版本、以及恢复出厂设置；另外包含俩个界面的跳转：固件OTA操作流程界面、反馈信息界面）。
   * 打印文件列表选择界面：搜索当前的打印机列表文件并且显示（包括：打印机名称、预估时间、缩略图等）。
   * 实时显示温度列表界面（传感器名称（长度最大为50个字符））：点击可跳转轴移动/温度界面。
* 导航键：左侧三个按钮为三元素导航键，分别为返回上一个页面，回到主页面以及急停按钮
    ① ：返回按钮：主页面禁止，其他界面点击返回上个页面。
    ② ：主页按钮：主页面禁止，其他界面点击主页面。
    ③ ：急停按钮：点击后将发送急停指令给到打印机。

### 轴移动/温度页面

<img src=img/K_Touch/temp_axis_screen0.png width="600"/>

    ① ：实时显示温度和风扇速率，还可以设置喷头、热床温度；设置风扇的速率。
    ② ：拥有网床补偿、解锁电机、归零的指令；还可以选择X\Y\Z轴的单次移动距离。
    ③ ：可以手动挤出、回抽打印机的物料，并且可以选择合适的挤出长度和速度。
    ④ ：实时显示`X/Y/Z`轴的相对、绝对位置，点击可跳转Z轴零点校准界面。

#### ① 设置部分

##### 设置喷头/热床温度

<img src=img/K_Touch/temp_axis_screen1.png width="600"/>

* 点击`喷头/热床`按钮，输入想要设置的温度数值，点击`√`，即可设置成功，热床相同。
* 键盘左侧的为`快速调节温度`按钮，可一键设置想要的喷头和热床温度。

    ① ：**ABS：   喷头温度：230度，热床温度：90度**
    ② ：**PLA：   喷头温度：200度，热床温度：60度**
    ③ ：**PETG：  喷头温度：240度，热床温度：70度**
    ④ ：**TPU：   喷头温度：220度，热床温度：50度**

##### 设置风扇速率

<img src=img/K_Touch/temp_axis_screen1_1.png width="600"/>

* 点击`风扇`按钮，会弹出设置风扇速率的界面，可`点击`或者`长按拖动`来设置想要的风扇速率（范围0-100）。

#### ② 轴移动部分

##### 网床补偿

<img src=img/K_Touch/temp_axis_screen2.png width="600"/>

* 点击`网床补偿`按钮，K-Touch会发送指令给到打印机，使其开始执行网床补偿，操作完成后，会弹出完成信息，需确认是否`保存数据`，此弹窗可在任何界面出现（上图为Z轴零点校准界面）

##### X/Y/Z轴移动

* 点击按钮可以进行轴移动操作，移动距离默认为10mm，可自由选择。

##### 归零

* 点击`归零`按钮，可进行XYZ轴的归零操作

##### 解锁电机

<img src=img/K_Touch/temp_axis_screen2_1.png width="600"/>

* 点击`解锁电机`按钮，会出现弹窗，通过选择`确定`按钮来解锁电机，`取消`按钮不进行操作。

#### ③ 挤出设置部分

##### 挤出/回抽按钮

<img src=img/K_Touch/temp_axis_screen3.png width="600"/>

* 点击`挤出/回抽`按钮，若温度未达到200度，则出现弹窗，通过选择`确定`按钮来升温，`取消`按钮不进行操作。若温度达到200度，则进行响应的操作，默认为挤出长度：`15mm`，挤出速度：`5mm/S`。

<img src=img/K_Touch/temp_axis_screen3_1.png width="600"/>


* 点击`挤出长度`和`挤出速度`的按钮，可弹出选择界面，可自由选择想要的挤出设置。

#### ④ X/Y/Z位置显示部分

* 实时显示`X/Y/Z`轴的相对，绝对位置，点击此按钮可跳转`Z轴零点校准界面`。

### 辅助调试页面

*点击`主页面辅助设置`按钮，跳转到辅助设置页面。

<img src=img/K_Touch/debug_screen0.png width="600"/>

#### 限位开关状态

* 点击此按钮，右侧出现弹窗

<img src=img/K_Touch/debug_screen1.png width="600"/>

* 每两秒检测一次限位开关`X/Y/Z`的触发状态，需手动触发。

<img src=img/K_Touch/debug_screen1_1.png width="600"/>

#### 自动PID

* 以喷头为例，点击需要PID的热床或喷头，按钮显示为主题色高光（默认为红）

<img src=img/K_Touch/debug_screen2.png width="600"/>

* 右侧按钮输入想要PID的数值，点击`√`，下方`自动PID`按钮显示为可点击，并且亮起主题色高光。

<img src=img/K_Touch/debug_screen2_1.png width="600"/>

* 点击`自动PID`按钮，根据选择弹出确认PID的弹窗界面。

<img src=img/K_Touch/debug_screen2_2.png width="600"/>

<img src=img/K_Touch/debug_screen2_3.png width="600"/>

* 点击`确定`按钮，弹出正在PID，等待PID完成的弹窗。

<img src=img/K_Touch/debug_screen2_4.png width="600"/>

* PID完成，出现弹窗确定是否保存。选择后，下方`确认`按钮后，弹窗关闭，PID数值将被保存，此时可再次进行PID或者使用网床调平，请注意，如果点击`取消`按钮，弹窗将再次关闭，但PID数据将不被保存，如需再次进行PID或网床调平功能，您需要重启K-Touch。

<img src=img/K_Touch/debug_screen2_5.png width="600"/>

#### Z轴零点校准

* 可选择想要移动的距离单位（mm），默认为0.05mm，点击下方`↑+`和`↓-`按钮来对Z轴进行操作。

<img src=img/K_Touch/debug_screen3.png width="600"/>

* 点击`保存`按钮，可将调整的Z轴零点校准数据保存。

<img src=img/K_Touch/debug_screen3_1.png width="600"/>

* 点击`清除`按钮，可将调整的Z轴零点校准数据清零。

<img src=img/K_Touch/debug_screen3_2.png width="600"/>

* 点击`轴偏移显示框`，可跳转到`轴移动/温度页面`。

### 系统设置

* 点击主页面`系统设置`按钮跳转

<img src=img/K_Touch/set_screen1.png width="600"/>

#### WiFi设置

##### WiFi连接状态

###### 已连接

<img src=img/K_Touch/set_wifi_screen1.png width="600"/>

* 连接上wifi后会显示，会显示当前连接的IP地址。

###### 正在连接
<img src=img/K_Touch/set_wifi_screen2.png width="600"/>

###### 连接失败

<img src=img/K_Touch/set_wifi_screen3.png width="600"/>

##### 手动刷新

* IP右侧的`刷新`按钮，可进行手动刷新wifi设备列表

<img src=img/K_Touch/set_wifi_screen4.png width="600"/>

##### 后台自动刷新

* K-Touch拥有`后台自动刷新`功能，能帮助用户在网络断开的时候尝试自动重连，刷新频率：`60S`。

#### 屏幕亮度设置

<img src=img/K_Touch/set_screen2.png width="600"/>

* 点击`屏幕亮度`按钮，可通过`点击`或者`长按`来调节屏幕亮度，默认为`50`。

#### 熄屏时间设置

<img src=img/K_Touch/set_screen3.png width="600"/>

* 点击`熄屏时间`按钮，选择想要设置的时间，默认为`10分钟`。

#### 语言选择

<img src=img/K_Touch/set_screen4.png width="600"/>

* 点击`语言选择`按钮，选择想要的语言，默认为`英文`。

#### 主题选择

<img src=img/K_Touch/set_screen5.png width="600"/>

* 点击`主题选择`按钮，选择想要主题颜色，默认为`珊瑚红`。

#### 系统信息

* 点击`系统信息`按钮，跳转到系统信息显示页面

<img src=img/K_Touch/set_system1.png width="600"/>

* 显示当前连接`设备ID`
* 显示当前`语言`
* 显示当前的`固件版本`
* **恢复出厂设置按钮（清除全部数据）**
* 左下角的OTA升级流程界面

<img src=img/K_Touch/set_system2.png width="600"/>

* 右下角的反馈信息界面

<img src=img/K_Touch/set_system3.png width="600"/>

### 开始打印页面

* 点击`打印文件`按钮，跳转到打印文件列表页面刷新打印文件列表（最多可显示50个文件）。

<img src=img/K_Touch/print_file_reflash.png width="600"/>

* 扫描完成后，出现打印文件列表（扫描时长随文件列表大小，图片大小而定）
* 红框内打印图片为默认打印图片

<img src=img/K_Touch/print_file_num.png width="600"/>


* 点击需要打印的文件，确认后开始打印

<img src=img/K_Touch/print_file.png width="600"/>


* 主页面加载打印信息（没有打印图片采取下图的默认图片）
* 打印

<img src=img/K_Touch/home_printing.png width="600"/>

* 暂停

<img src=img/K_Touch/home_stop.png width="600"/>

### klipper终止页面

* K-Touch实时读取打印机的异常状态并且抓取报错信息
* 打印机出现异常或者按下急停按钮后，K-Touch抓取报错信息，并且弹出报错界面

<img src=img/K_Touch/print_report0.png width="600"/>
<img src=img/K_Touch/print_report1.png width="600"/>
<img src=img/K_Touch/print_report2.png width="600"/>

    ① ：发送"RESTART"命令，同网页端一样。
    ② ：发送"FIRMWARE_RESTART"命令，同网页端一样。
    ③ ：点击进入系统设置界面，可重新连接wifi，选择主题颜色、熄屏时间等，同主页面系统设置按钮功能相同。
    ④ ：点击进入打印机选择界面，可重新扫描、输入、选择打印机，同主页面打印机选择按钮功能相同。
    ⑤ ：当前打印机状态以及报错信息。

### 弹窗

#### 超时弹窗

* K-Touch在网络不稳定造成的获取数据失败、打印机关闭、wifi未连接或信号弱，会弹出超时提示弹窗。

<img src=img/K_Touch/print_timeout0.png width="600"/>

#### 错误弹窗

* 打印机未归零，操作了xyz轴位移。

<img src=img/K_Touch/error_axis0.png width="600"/>

* 将喷头或者热床温度设置超出最高温度限制。

<img src=img/K_Touch/error_axis1.png width="600"/>

* 打印过程中，进行打印机文件的再选择。

<img src=img/K_Touch/error_axis2.png width="600"/>

#### 防误触弹窗

* 急停按钮

<img src=img/K_Touch/print_stop.png width="600"/>

* 解锁电机按钮

<img src=img/K_Touch/print_lock.png width="600"/>

* 重复PID

<img src=img/K_Touch/print_pid.png width="600"/>

* 恢复出厂设置按钮

<img src=img/K_Touch/print_reset.png width="600"/>

* 删除打印机

<img src=img/K_Touch/print_delete.png width="600"/>

* 搜索打印文件时防止切换打印机

<img src=img/K_Touch/print_change.png width="600"/>

* 打印文件防误触

<img src=img/K_Touch/print_choose.png width="600"/>

* 停止正在打印的文件

<img src=img/K_Touch/print_printing.png width="600"/>

#### 提醒弹窗

* 打印机文件列表数量为0或者超过50


* 网格补偿完成（`确定`按钮保存数据）
<img src=img/K_Touch/print_levening.png width="600"/>

* 自动PID完成（`确定`按钮保存数据）
<img src=img/K_Touch/print_pid_com.png width="600"/>

* 打印完成
<img src=img/K_Touch/print_compelete.png width="600"/>


## 固件

### 固件历史记录

#### [V1.0.0](https://github.com/bigtreetech/K-Touch/blob/master/Firmware/panda_touch-v1.0.1.bin)

* 首次发布的工厂固件。

### 功能请求

如果您希望在即将发布的K-Touch固件中看到一些内容，请在官方K-Touch github repo上记录功能请求，让我们知道。

[请求功能](https://github.com/bigtreetech/K-Touch/issues)

### 如何更新固件
#### OTA

* 将固件二进制文件[固件历史记录]下载到用于执行更新的设备。这可以是运行iOS或Android等操作系统的计算机或移动设备。在下文中，它将被称为`计算机`。
<br><img src=img/K_Touch/firmware_download.png width="600"/>
* 将K-Touch连接到与电脑位于同一局域网上的WiFi。
* 从`系统设置`中的`Wi-Fi设置`查找K-Touch的IP地址。
<br><img src=img/K_Touch/ip.png width="600"/>
* 在计算机浏览器中输入K-Touch的IP地址以访问web UI，然后单击“更新固件”按钮。
<br><img src=img/K_Touch/ota_1.png width="600"/>
* 单击`选择文件`按钮，然后选择下载的固件二进制文件。K-Touch将自动开始更新。
<br><img src=img/K_Touch/ota_2.png width="600"/>
* 更新完成后，K-Touch将自动重新启动并运行新固件。
<br><img src=img/K_Touch/ota_3.png width="600"/>

### 如何更新img文件
* 当新固件的img部分发生更改时，ota将要求更新img文件.
<br><img src=img/K_Touch/ota_img_remind.png width="660"/>

* 将img文件下载到用于执行更新的设备。这可以是运行iOS或Android等操作系统的计算机或移动设备。在下文中，它将被称为`计算机`.
<br><img src=img/K_Touch/ota_img_download.png width="660"/>
* 将K-Touch连接到与电脑位于同一局域网上的WiFi。
* 在计算机浏览器中输入K-Touch的IP地址以访问web UI，然后单击“更新文件”按钮
<br><img src=img/K_Touch/ota_img_1.png width="660"/>
* 单击`选择文件`按钮，然后选择下载的img文件。K-Touch将自动开始更新。
<br><img src=img/K_Touch/ota_img_2.png width="660"/>
* 更新完成后，K-Touch将自动重新启动并运行新的img文件.
<br><img src=img/K_Touch/ota_img_3.png width="660"/>

### 如何使用不同固件（K-Touch更新到Panda-Touch）
* 注意事项：
* * 请记录备份数据
切换使用不同固件，将设备从K-Touch固件切换为K-Touch固件或从K-Touch固件切换至K-Touch固件，均会导致该设备上原有固件数据全部被抹除，请提前做好相关的数据记录，如记录当前在使用的Klipper打印机IP或拓竹打印机的IP\SN\访问代码、Wi-Fi网络、Wi-Fi网络密码等信息

* 将K-Touch连接到与电脑位于同一局域网上的WiFi，获取需要的IP，便于进行OTA更新。
<br><img src=img/K_Touch/ip.png width="600"/>

* 进入当前网址进行Panda-Touch相关文件的下载。
[Panda-Touch](https://github.com/bigtreetech/K-Touch/tree/master/Firmware)
* 选择最新的固件版本进行下载
<br><img src=img/K_Touch/K-Ptouch.png width="600"/>
* 在计算机浏览器中输入K-Touch的IP地址以访问web UI，然后单击“Update File”按钮。
<br><img src=img/K_Touch/ota_1.png width="600"/>
* 单击`选择文件`按钮，然后选择之前下载好的Panda-Touch的固件二进制文件。K-Touch将自动开始更新。
<br><img src=img/K_Touch/K-Ptouch1.png width="600"/>
* 更新完成后，K-Touch将自动重新启动并运行新固件。
<br><img src=img/K_Touch/ota_3.png width="600"/>
* 因为K-Touch和Panda-Touch的镜像文件不同，所以升级固件后重启K-Touch后会出现Panda-Touch镜像升级界面。
连接wifi后左边会显示IP地址。
<br><img src=img/K_Touch/K-Ptouch2.png width="600"/>
* 在计算机浏览器中输入K-Touch的IP地址以访问web UI，然后单击“更新文件”按钮
<br><img src=img/K_Touch/K-Ptouch32.png width="600"/>
* 单击`选择文件`按钮，然后选择下载的img文件。K-Touch将自动开始更新。
<br><img src=img/K_Touch/K-Ptouch4.png width="600"/>
* 更新完成后，K-Touch将自动重新启动并运行新的img文件.
<br><img src=img/K_Touch/ota_img_3.png width="660"/>
* 更新成功，显示Panda-Touch的初始化界面。
<br><img src=img/K_Touch/K-Ptouch6.png width="600"/>

### flash_download_tool

此方法仅支持使用“Windows”系统
* 搜索(https://github.com/bigtreetech/K-Touch)，点击下载文件。
<br><img src=img/K_Touch/flash_down.png width="660"/>

* 通过Type-C USB电缆将K-Touch连接到计算机，请检查计算机的设备管理器中是否有新的COM端口。如果无法识别COM端口，请安装[CH340]驱动程序(https://www.wch-ic.com/download/CH341SER_EXE.html)
* * 将[flash_Download_tool_3.9.3_0-K-Touch.zip]（./flash_Download_tool-3.9.3_0-K-Touch.zip）下载到您的计算机并解压缩。
* 双击`flash_download_tool_3.9.3.exe`
<br><img src=img/K_Touch/flash_down1.png width="660"/>
* 将ChipType设置为 `ESP32-S3`, 然后单击`确定`按钮
<br><img src=img/K_Touch/flash_down2.png width="660"/>
* 将COM端口设置为计算机识别的实际COM端口，然后单击`ERASE`。
<br><img src=img/K_Touch/flash_down5.png width="660"/>
* 等待完成后，不要关闭软件，接着进行文件烧录。
<br><img src=img/K_Touch/flash_down4.png width="660"/>
* 单击`START`开始，进行固件烧录。
<br><img src=img/K_Touch/flash_down3.png width="660"/>
* 等待完成后，我们可以关闭电源并打开K-Touch以重新启动。
<br><img src=img/K_Touch/flash_down4.png width="660"/>

## 技术支持
这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：service001@biqu3d.com
