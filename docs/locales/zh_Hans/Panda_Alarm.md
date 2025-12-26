# Panda Alarm

<img src=/img/PandaAlarm/panda_alarm.jpg width="800"/>

- **产品链接**: [点击购买](https://bit.ly/4mc0OPq)

## 重要提示

* Panda Alarm 只监听打印机的状态，不控制打印机，所以 Panda Alarm 的功能不会受拓竹固件更新的影响。有关受影响和不受影响的更多信息，请参阅[Bambu Lab 官方公告](https://blog.bambulab.com/firmware-update-introducing-new-authorization-control-system-2/)。

* 确保您的设备运行了[最新版本的固件](https://github.com/bigtreetech/PandaAlarm/tree/master/Firmware)。

* Panda Alarm 仅支持连接到2.4G Wi-Fi。

* 在设置界面连接 Panda Alarm 的AP热点后，直接跳转到的Web UI界面，部分手机由于权限的问题可能无法在此界面上传更新MP3音频和固件，请到浏览器中访问Web UI再进行此类上传文件的操作。

* 如果您在使用过程中遇到任何问题，或者对未来的硬件或固件版本有建议，欢迎前往Github[提交issues](https://github.com/bigtreetech/PandaAlarm/issues)与我们保持联系。

* 如果您有任何此wiki无法解决的问题，请通过以下方式联系客户支持：`support01@bigtree-tech.com`.

## 产品简介

Panda Alarm 让您的 3D 打印农场保持完美同步——这款智能无线系统可让您即时查看和听见打印机状态。它专为 P 系列打印机设计，结合了 H2D 同步 RGB 灯光和可自定义的声音警报，可实时通知您打印完成、打印失败或耗材耗尽。只需简单的即插即用设置，即可通过网页或移动应用程序远程管理所有警报，确保您的整个农场保持高效有序。Panda Alarm 将监控变成一种轻松便捷、一目了然的体验——让您始终了解打印机状态

## 产品特点

* 产品定位：为3D打印农场设计的无线声光报警器；

* 打印完成和打印异常（打印失败、插入耗材等）声光报警； 

* 打印机状态显示（显示效果参考拓竹H2D状态灯） 

* 可通过Web UI自定义报警声效和状态灯效 

* 可通过APP远程控制和设置报警声效和灯效 （APP即将上线）

* 适配机型：P系列

## 基本参数

| 微处理器    | 内置 ESP32-C3FH4 芯片，RISC-V 32 位单核微处理器，主频最高 160 MHZ |
| :---------- | :----------------------------------------------------------: |
| 存储器      |           384 KB ROM，400 KB SRAM，4 MB 合封 flash           |
| 逻辑电压    |                             3.3V                             |
| 输入电压    |                              5V                              |
| 电流        |                            0.38A                             |
| 电源接口    |                            USB-A                             |
| 灯板材质    |                            亚克力                            |
| RGB灯珠数量 |                             9颗                              |
| 外包装尺寸  |                  196.0mm x 80.5mm x 81.0mm                   |
| 产品尺寸    |                  170.4mm x 86.4mm x 55.4mm                   |
| 喇叭功率    |                              3W                              |
| 音频格式    |                         支持MP3格式                          |
| 通信方式    |                2.4G Wi-Fi (IEEE 802.11 b/g/n)                |
| 工作温度    |                          0℃ 至 +50℃                          |
| 储存温度    |                         -20℃ 至 +70℃                         |

## 产品外观尺寸

<img src=/img/PandaAlarm/size.jpg width="800"/>

## 安装指南

Panda Alarm安装在P1系列打印机上。

### 安装到P1系列打印机

Panda Alarm配件清单

<img src=/img/PandaAlarm/zh/list.jpg width="800"/>

#### 安装步骤

* 将包装内的透明灯效件拿出，用两颗附赠的M3*8沉头自攻螺丝固定在控制盒上

    <img src=/img/PandaAlarm/install_1.jpg width="500"/>

* 将灯板上的灯带插头接入控制盒的3pin接口中，如下图

    <img src=/img/PandaAlarm/install_2.jpg width="500"/>

* 将USB电源线插入到打印机的USB-A口，USB-A口的位置在P1打印机门板的上方凹槽内，可以把打印机的盖板拿下来进行查看和操作。

    <img src=/img/PandaAlarm/install_3.jpg width="500"/>

* 将USB线的另一端的Type-C端口从打印机右上方的小孔穿出来。

    <img src=/img/PandaAlarm/install_4.jpg width="500"/>

* 将穿出来的Type-C口，插入到控制盒的Typ-C接口中，走线如下所示

    <img src=/img/PandaAlarm/install_5.jpg width="500"/>

* 将Panda Alarm整体放置到P1打印机右上方，使灯板的弧度贴近打印机的弧度，确定控制盒背面磁吸的位置，用附带的磁贴片贴在打印机对应的位置上。

    <img src=/img/PandaAlarm/install_6.jpg width="500"/>

* 将亚克力灯板上的双面胶揭开

    <img src=/img/PandaAlarm/install_7.jpg width="500"/>

* 将Panda Alarm整体沿着打印机右上方的弧度放置并贴好双面胶，按压贴紧顶部双面胶。

    <img src=/img/PandaAlarm/install_8.jpg width="500"/>

> 现在是时候给 Panda Alarm 通电并进行配置了，请前往[首次使用指南](#first-time-use-guide)

<a id="first-time-use-guide"></a>

## 首次使用指南

### 访问Web UI配置界面。

* 连接 Panda Alarm 的 AP热点

    首次启动后或执行 `恢复出厂设置` 命令后，Panda Alarm 的灯效为 `蓝色跑马灯`，意味着设备还没有绑定打印机，我们需要进入 Web UI 配置绑定打印机。请到设备的 `设置` 菜单中手动连接热点。

    以 `iPhone` 为例：

    * 在你的主屏幕上，前往 `设置`-> `无线局域网`。
    * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。

        <img src=/img/PandaAlarm/zh/wlan.jpg width="300"/>

    * 轻点名称以 `Panda_Alarm` 开头的无线局域网，输入默认密码：`987654321`。

    * 连接上 Panda Alarm 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。

* 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。

### 将 Panda Alarm 连接到打印机所在的Wi-Fi下

* 首次配置会自动进入 `选择语言` 界面，设置完语言后，点击 `下一步`。

    <img src=/img/PandaAlarm/zh/language.jpg width="300"/>

* 进入连接 Wi-Fi 界面，Panda Alarm 会自动扫描环境中的 Wi-Fi，请选择打印机所连接的 Wi-Fi 进行连接。如果没有扫描到打印机连接的 Wi-Fi, 可以点击 “扫描” 按钮重新扫描。

    <img src=/img/PandaAlarm/zh/wifi.jpg width="300"/>

* 等待连接成功，连接成功后会弹出如下图中的弹窗，点击 `绑定打印机` 可以跳转到 `打印机` 界面绑定打印机。

    <img src=/img/PandaAlarm/zh/goto_printer.jpg width="300"/>

### 绑定打印机

> 注意：如果访问码的位置是空白的没有内容，可能是打印机处于云模式并且未绑定云账号，请使用Bambu Handy/Bambu Studio 将此打印机绑定到云账号上，或者打开打印机的 `仅局域网模式`。

#### 自动扫描

* Web UI配置界面进入 `打印机` 界面, 点击 `扫描` 会扫描同一局域网下的拓竹打印机, 一次完整的扫描大概需要30秒左右。每多一台拓竹打印机最多增加20秒的扫描时间。Panda Alarm 每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机。如果此次扫描未能识别到想要连接的打印机，可以点击 `扫描` 按钮重新扫描，或者 `手动输入` 所有的信息。

    <img src=/img/PandaAlarm/zh/printer.jpg width="300"/>

* 扫描完成后, 选择想要连接的打印机, 选择后打印机的 `SN码` 和 `IP` 会自动填充。然后在打印机上找到 `访问码`, 并手动输入到Web UI上的 `打印机访问码` 栏。

    * P1系列打印机

        * ①	`设置`-> ② `网络(WLAN)` -> ③ `OK`

            <img src=/img/PandaAlarm/zh/p1_1_2_3.webp width="600"/>

        * ⑤ `访问码`

            <img src=/img/PandaAlarm/zh/p1_4_5.webp width="600"/>

* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着 Panda Alarm 已经成功连接到打印机了。

    <img src=/img/PandaAlarm/zh/bind_ok.jpg width="300"/>

* 恭喜您！现在可以尽情的享用您的 Panda Alarm 了。

#### 手动输入

> * Panda Alarm 每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机，我们可以 `手动输入` 绑定打印机所需要的所有信息。
> * 如果您局域网内的拓竹打印机数量不多，但是却仍然扫描不到打印机，我们可以先尝试 `手动输入` 绑定打印机所需要的所有信息。如果 Panda Alarm 无法连接到打印机，可能是您路由器的一些安全特性，禁止了局域网内的设备互相通信。请联系客服 support01@bigtree-tech.com 协助您做进一步的排查。

* 在打印机上找到 `SN码`，`访问码` 和 `IP`，并输入到Web UI上对应的输入栏中。

    * P1系列打印机

        * `SN码`
            * ①	`设置` -> ② `设备(Device)`

                <img src=/img/PandaAlarm/zh/p1_1_2.webp width="600"/>

            * ③ `打印机(Printer)` 即为 `SN码`

                <img src=/img/PandaAlarm/zh/p1_3.webp width="600"/>

        * `访问码` 和 `IP`          
            * ①	`设置`-> ② `网络(WLAN)` -> ③

                <img src=/img/PandaAlarm/zh/p1_1_2_3.webp width="600"/>

            * ④ `IP`, ⑤ `访问码`

                <img src=/img/PandaAlarm/zh/p1_4_5.webp width="600"/>

* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着 Panda Alarm 已经成功连接到打印机了。

    <img src=/img/PandaAlarm/zh/bind_ok.jpg width="300"/>

* 恭喜您！现在可以尽情的享用您的 Panda Alarm 了。

## 灯效和声效

### 设备状态

Panda Alarm 有 3 个系统级状态 和 7 个打印机状态，共计 10 个状态，每个状态对应的默认 `灯效` 和 `声效` 如下所示。

#### 系统级状态

| 系统级状态 | 灯光颜色 | 灯效 | 音效 |
| :--- | :---: | :---: | :---: |
| 正在 OTA 固件/音频 文件  | 白色 | 跑马灯 | 静音 |
| 未绑定打印机（出厂状态）  | 蓝色 | 跑马灯 | 静音 |
| 正在绑定打印机/绑定出错重试中| 黄色 | 跑马灯 | 静音 |

#### 打印机状态
以下7个状态的灯效和默认`颜色`，与拓竹官方的状态灯效果一致。

| 系统级状态 | 灯光颜色 | 灯效 | 音效 | 备注 |
| :--- | :---: | :---: | :---: | :---: |
| 打印机空闲  | `默认`白色 | 呼吸灯 | 静音 | 颜色和亮度可在WebUI自定义 |
| 正在打印| `默认`白色 | 根据进度条百分比常亮 | 静音 | 颜色和亮度可在WebUI自定义 |
| 打印暂停  | `默认`白色 | 根据进度条百分比呼吸 | 静音 | 与`正在打印中`颜色、亮度一致 |
| 打印完成 | 绿色 | 常亮 | `默认`脉冲调频报警 | 30秒后自动进入`空闲`状态，100%亮度, 音效可在WebUI自定义 |
| 打印机报错 | `默认`红色 | 闪烁 | `默认`脉冲调频报警 | 颜色、亮度和音效可在WebUI自定义 |
| 打印准备中 | 黄橙色 | 流光 | 静音 | 100%亮度 |
| 正在下载打印文件 | 黄色 | 流光 | 静音 | 100%亮度 |

### 控制面板

<img src=/img/PandaAlarm/zh/panel.jpg width="300"/>

* ①	进入 `控制面板` 界面

* ② 产品名称

* ③ `预览模式`：用于预览设备的`灯效`或`音效`。打开此模式并选择要 `模拟的状态`，设备即会按照选择的结果显示对应的`灯效`或`音效`。

    <img src=/img/PandaAlarm/zh/preview.jpg width="300"/>

    * a) "打开/关闭" `预览模式`。注意：如果切换到其他界面，或者所有的 Web UI 都退出了，设备也会自动关闭`预览模式`。这是为了避免用户忘记关闭导致设置一直处于`预览模式`。

    * b) 选择要 `模拟的状态`，设备总共有以下 `10` 种状态
        * 正在 OTA
        * 未配置 “绑定打印机”
        * 正在绑定打印机
        * 打印机空闲
        * 正在打印
        * 打印暂停
        * 打印完成
        * 打印机报错
        * 打印准备中
        * 正在下载打印文件

    * c) 设置 `模拟的打印进度`，此设置仅在 `正在打印` 和 `打印暂停` 两个状态下有效

* ④ 设置设备的 `灯效`

    <img src=/img/PandaAlarm/zh/light.jpg width="300"/>

    * a) "打开/关闭" `灯效`。仅会关闭所有的 `打印机状态` 灯效，但是无法关闭 `系统级状态` 灯效

    * b): 设置 `打印机空闲` 时的灯光颜色，默认是 `白色`

        c): 设置 `正在打印` 时的灯光颜色，默认是 `白色`

        d): 设置 `打印机报错` 时的灯光颜色，默认是 `红色`

        点击对应的按钮后会弹出 HSL 取色盘来设置对应状态的颜色。

        <img src=/img/PandaAlarm/zh/picker.jpg width="300"/>

        * 1). HSL 取色盘（[HSL是什么？](https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4)）
        * 2). HSL的H色相参数，范围值为：0 ~ 360°
        * 3). HSL的S饱和度参数，范围值为：0 ~ 100%
        * 4). HSL的L亮度参数，范围值为：0 ~ 100%
        * 5). 颜色对应的RGB 的16进制值，16进制下每个值的范围均为 0 ~ 255（0x00 ~ 0xFF）, 可以直接修改此处的值来得到想要的颜色。 如图中所示的 #FF5703 意味着：
            * R（红色）：0xFF (255/255)
            * G（绿色）：0x57 (87/255)
            * B（蓝色）：0x03 (3/255)
        * 6). 颜色对应的HSL的值，H色相的范围为：0 ~ 360°， S饱和度的范围为：0 ~ 100%，L亮度的范围为：0 ~ 100%, 可以直接修改此处的值来得到想要的颜色。如图中所示的 hsl(20, 100%, 51%) 意味着：
            * H（色相）：20°
            * S（饱和度）：100%
            * L（亮度）：51%
        * 7). 预览所设置颜色的区域

    * e) 统一设置 `打印机空闲` `正在打印` `打印暂停` `打印机报错` 4个打印机状态的灯效亮度

* ⑤ 设置设备的 `声效`

    <img src=/img/PandaAlarm/zh/sound.jpg width="300"/>

    * a) "打开/关闭" `声效`。会关闭所有的 `打印机状态` 声效，包括 `打印完成` 和 `报错`

    * b): 设置 `打印完成` 时的声效

        c): 设置 `报错` 时的声效

        声效有以下5种选项

        * 脉冲调频报警（出厂自带音效）
        * 状态提示报警（出厂自带音效）
        * 连续蜂鸣报警（出厂自带音效）
        * 静音
        * 用户自定义语音
    
    * d): 上传自定义的 `打印完成` 时播放的 mp3 音频文件

        e) : 上传自定义的 `报错` 时播放的 mp3 音频文件

        此选项仅在 `声效` 设置为 `用户自定义语音` 时有效，并且仅支持上传 mp3 格式的音频，并且仅支持大小不超过 288KB 的文件。

    * f) 统一设置 `声效` 的音量百分比

## 其他用户界面说明

### Wi-Fi & IP 界面

> 连接到 Panda Alarm WebUI 中出现的默认界面是 `WiFi&IP` 设置界面。

<img src=/img/PandaAlarm/zh/wifi_ip.jpg width="300"/>

* ①	进入 `Wi-Fi&IP` 界面

* ②	如果您想要重新配置 Panda Alarm 要连接的 Wi-Fi，可以点击 `Wi-Fi 网络配置` 按钮再次进入配置 Wi-Fi的界面重新配置要连接的 Wi-Fi。

    > <font size="2">提示：Panda Alarm 更换所连接的 Wi-Fi 后，Panda Alarm 所在的局域网和 IP 地址可能发生改变，若在设备连接到与 Panda Alarm 所连接的 Wi-Fi 相同的局域网下改变此配置，则设备会与 Panda Alarm 断开通信连接，需要将设备也重新连接到 Panda Alarm 新连接的 Wi-Fi 网络下才可重新建立通信连接。为避免此类情况，建议将设备连接到 Panda Alarm 的 AP 热点，然后再修改此配置。</font>

* ③	配网完成后，推荐客户将手机、电脑等设备连接到与 Panda Alarm 所连接的 Wi-Fi 相同的局域网下，并通过在浏览器地址栏输入 IP 地址访问 Web UI。为避免遗忘 IP地址，可利用手机主屏幕书签功能，方便快速访问。

* ④	若设备连接到与 Panda Alarm 所连接的 Wi-Fi 相同的局域网下，用户可以通过主机名直接访问 Web UI，例如出厂默认的主机名是 `PandaAlarm`，我们可以直接访问 [http://pandaalarm.local](http://pandaalarm.local) ，不区分大小写。如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用 IP 访问。
  
    用户可以自定义主机名，但是请遵守以下规则：

    * 只能由字母（a-z、A-Z）、数字（0-9）、以及连接符（-）组成， 并且首字符必须是字母。
    * 长度不低于8个字符，不超过32个字符。

    修改完成后，点击 `设置主机名` 将设置的主机名发送给 Panda Alarm，若出现如下图中的弹窗，说明主机名已经重新设置成功，主机名修改后需要重新启动才可以生效，直接点击弹窗中的 `OK` 按钮，Panda Alarm 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。
    
    <img src=/img/PandaAlarm/zh/hostname.jpg width="300"/>

### AP 界面

> Panda Alarm AP 是 Panda Alarm 广播的 WiFi 热点，允许手机/电脑直接连接到它。如果您不希望广播此热点，则可以将其关闭，但 Panda Alarm 会在无法连接到您设置的 WiFi 时自动重新打开此热点。这提供了一种故障保护方式，可以在设置的 WiFi 网络不可用的情况下重新连接到 Panda Alarm。
>
> <font size="2">若设备是连接到 Panda Alarm 的 AP 热点访问的 Web UI，关闭或者修改 Panda Alarm的 AP 信息都会导致设备与 Panda Alarm 断开通信连接。为避免此类情况，建议将设备连接到与 Panda Alarm 所连接的 Wi-Fi 相同局域网下再修改此配置。</font>

<img src=/img/PandaAlarm/zh/ap.jpg width="300"/>

* ①	进入 `AP` 界面

* ②	打开/关闭 Panda Alarm 的 AP 热点。关闭AP热点后将无法连接到 Panda Alarm 的热点去访问 Web UI，关闭前请务必记录 Panda Alarm 在其所处的 Wi-Fi 的IP，以便使用同一 Wi-Fi 的设备通过 IP 访问 Web UI。

* ③	修改 Panda Alarm 的 AP 热点， 默认配置为：

    Wi-Fi名称: `Panda_Alarm_xxxxxxxxxxxx`

    Wi-Fi密码: `987654321`

    修改完成后不用重启 Panda Alarm，Panda Alarm 会在后台重新创建新的 AP 热点。

* ④ 修改 AP热点自身的IP地址，如果此 IP 号段与打印机所连接的路由器号段冲突，例如路由器的 IP 号段也是 `192.168.254.1` 会导致 Panda Alarm 无法绑定到打印机。此时我们需要将 Panda Alarm 的 `热点 IP` 修改为与路由器不同的其他号段即可，例如修改为 `192.168.253.1`。

    `热点 IP` 修改后需要重启设备才会生效，若出现如下图中的弹窗，说明 `热点 IP` 已经重新设置成功，直接点击弹窗中的 `OK` 按钮，Panda Alarm 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。

    <img src=/img/PandaAlarm/zh/hotspot_ip.jpg width="300"/>

### 设置

<img src=/img/PandaAlarm/zh/settings.jpg width="300"/>

* ①	进入 `设置` 界面

* ② 选择设置 Web UI 的语言

* ③ 设备 `声效` 所用的音频文件数据，仅在出厂自带的音频文件损坏时，使用此方式重新写入出厂自带的音频文件。注意：更新 img 文件会覆盖 `用户自定义语音`。

* ④ 设备的固件信息

* ⑤ 恢复出厂设置

## 恢复出厂设置

> <font size="2">Panda Alarm 恢复出厂设置会清空所有的配置，包括语言、连接的WiFi、自定义的主机名、自定义的AP热点名称和密码、绑定的打印机、灯效、声效等设置。但是 `用户自定义语音` 会被保留。</font>

### 通过Web UI 恢复出厂设置

* 进入 ① `设置` 界面，点击 ② `恢复出厂设置` 按钮

    <img src=/img/PandaAlarm/zh/factory_1.jpg width="300"/>

* 会出现确认的弹窗，点击 ③ `是` 确认恢复出厂设置，Panda Alarm 会恢复出厂设置并重新启动。

    <img src=/img/PandaAlarm/zh/factory_2.jpg width="300"/>

### 通过按键恢复出厂设置

使用尖锐物长按 Recovery 按键5秒后，Panda Alarm 会恢复出厂设置并重新启动。

<img src=/img/PandaAlarm/recovery.jpg width="300"/>

## 固件

### 功能请求

如果您希望在即将发布的 Panda Alarm 固件中增加产品需求，请在官方 Panda Alarm github repo上提交请求让我们知道。

[请求功能](https://github.com/bigtreetech/PandaAlarm/issues)

### 如何更新固件

#### OTA

* 访问Web UI配置界面。

    > <font size="2">如果 Panda Alarm 已经连接到Wi-Fi中了，可以将设备连接到此Wi-Fi相同的局域网下直接通过IP访问Web UI更新固件。也可以将设备连接到 Panda Alarm 的AP热点上访问WebUI更新固件。这两种途径任选其一即可</font>

    * 连接到 Panda Alarm 所在Wi-Fi的局域网下

        * 将设备连接到 Panda Alarm 所在Wi-Fi的局域网下（Wi-Fi、以太网均可）

        * 在设备的浏览器中输入 Panda Alarm 的IP或者主机名，主机名出厂默认为：`http://pandaalarm.local`，如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用IP访问Web UI配置界面。

    * 连接 Panda Alarm 的AP热点更新

        * 将设备连接到 Panda Alarm 的AP热点。

            以iPhone为例：

            * 在你的主屏幕上，前往 `设置`-> `无线局域网`。

            * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。

                <img src=/img/PandaAlarm/zh/wlan.jpg width="300"/>

            * 轻点名称以 `Panda_Alarm` 开头的无线局域网，输入默认密码：`987654321`。

            * 连接上 Panda Alarm 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。

        * 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。

* 在Web UI配置界面中，进入 ① `设置` 界面, 点击 ② `选择 .bin 文件`, 然后选择要更新的固件, 更新完成后设备会自动重启。

    <img src=/img/PandaAlarm/zh/firmware.jpg width="300"/>

#### flash_download_tool (Type-C 线刷)

> <font size="2">注意：Panda Alarm 理应可以自由的OTA，此步骤仅在无法OTA时使用。</font>

* 如果电脑上没有 CH340 的驱动，请先下载安装驱动 [CH341SER.EXE](https://www.wch.cn/downloads/CH341SER_EXE.html)

* 下载 [Flash 下载工具](https://www.espressif.com/zh-hans/support/download/other-tools)

    <img src=/img/PandaAlarm/zh/download_esp_tool.webp width="800"/>

* 下载 [Panda Alarm 的固件](https://github.com/bigtreetech/PandaAlarm)

* 通过 `Type-C` 将 Panda Alarm 插到电脑上，电脑的设备管理器中理应识别出一个新的 COM 端口

    <img src=/img/PandaAlarm/type_c.jpg width="300"/>

* 打开 `flash_download_tool_3.9.8_6.exe`, 在弹窗中按照下图配置

    ChipType: `ESP32-C3`

    WorkMode: `Develop`

    LoadMode: `UART`

    <img src=/img/PandaAlarm/open_esp_tool.webp width="400"/>

* 烧录软件的配置如下图

    <img src=/img/PandaAlarm/set_esp_tool.webp width="400"/>

    * ①	设置.bin文件的烧录地址, 并且前面的复选框都勾选上

        * `panda_alarm_bootloader.bin` 写入到 `0x0000`
        * `panda_alarm_partition.bin` 写入到 `0x8000`
        * `panda_alarm_ota_data.bin` 写入到 `0xe000`
        * `panda_alarm_v1.0.0.bin` 写入到 `0x10000`
        * `panda_alarm_v1.0.0.img` 写入到 `0x350000` (音频文件)

    * ②	设置COM端口为 Panda Alarm 实际的端口（可在电脑的`设备管理器`->`端口`中查看）, 并且设置一个合适的波特率, 我们推荐使用 `460800`

    * ③	点击 `START` 开始烧录，等待烧录完成, 断电重启即可。


<a id="firmware_history"></a>

### 固件历史记录

#### [V1.0.0](https://github.com/bigtreetech/PandaAlarm/tree/master/Firmware/v1.0.0)

* 首次发布的出厂固件。

## FAQ

* Q: `打印机报错` 状态是怎么识别的?
    A: 通过监听 mqtt 数据帧中的 `HMS` 和 `print_error` 字段识别的。当值为以下内容时设备就会报错。

    * `HMS`：
        [HMS_0300-1200-0002-0001](https://e.bambulab.cn/?e=0300120000020001)

    * `print_error`：(值对应的含义可[参考此处](https://github.com/bambulab/BambuStudio/blob/master/resources/hms/hms_zh-cn_094.json#L6))
        以下值将被忽略，不视为报错

        `0x0500401x` (x 意味着除了 `4` 之外的任意值)
        `0x0500402x` (x 意味着除了 `D` `E` `F` 之外的任意值)
        `0x05014xxx` (x 意味着任意值)
        `0x07FE8006`, `0x07FE8007`, `0x07FEC006`, `0x07FEC009`, `0x07FEC00A`, `0x07FEC010`, `0x07FEC011`, `0x07FEC012`,
        `0x07FF8006`, `0x07FF8007`, `0x07FFC006`, `0x07FFC009`, `0x07FFC00A`, `0x07FFC010`, `0x07FFC011`, `0x07FFC012`,
        `0x18FE8006`, `0x18FE8007`, `0x18FEC006`, `0x18FEC009`, `0x18FEC00A`,
        `0x18FF8006`, `0x18FF8007`, `0x18FFC006`, `0x18FFC009`, `0x18FFC00A`,
        `0x05008079`, `0x03008054`, `0x03004067`,
        `0x0300400C`, `0x0500400E`,
        `0x05008030`, `0x0500C011`, `0x0C008002`,
        `0x05004001`,
        `0x0300800C`, `0x03008013`,
        `0x12FF8007`, `0x12FFC003`

        除此之外的所有值都会被视为报错

        如果您在使用中发现有任何理应报错的状态未报错，或者不应该报错的时候没报错，请到 [Github](https://github.com/bigtreetech/PandaAlarm/issues) 反馈情况，附上 `HMS` 和 `print_error`的值即可（在 Bambu Studio 或 Bambu Handy 中可以查看到，如果您不知道值是多少，可直接将弹窗或报错内容截图附上）


## 技术支持
这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：`support01@bigtree-tech.com`
