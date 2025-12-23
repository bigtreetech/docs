# Panda Knomi 3D

<img src=img/PandaKnomi3D/panda_knomi_3d.jpg width="400"/>

- **产品链接**: [点击购买](https://bit.ly/3K3rIM3)


## 重要提示

* Panda Knomi 3D 只监听打印机的状态，不控制打印机，所以 Panda Knomi 3D 的功能不会受拓竹固件更新的影响。有关受影响和不受影响的更多信息，请参阅[Bambu Lab 官方公告](https://blog.bambulab.com/firmware-update-introducing-new-authorization-control-system-2/)。

* 确保您的设备运行了[最新版本的固件](https://github.com/bigtreetech/PandaKnomi3D/tree/master/Firmware)。

* Panda Knomi 3D 仅支持连接到2.4G Wi-Fi。

* 如出现长时间 `无效的IP，自动修正中`，请使用 `Bambu Handy` 或 `Bambu Studio` 尝试控制打印机，如果打印机无应答或显示不在线，可能是打印机所处的网络环境异常，请检查网络环境。如果可以正常控制打印机，请尝试断电重启Panda Knomi 3D，若重启后仍无法正常连接，请联系售后支持邮箱 `support01@bigtree-tech.com`

* 在设置界面连接 Panda Knomi 3D 的AP热点后，直接跳转到的Web UI界面，部分手机由于权限的问题可能无法在此界面上传更新GIF图片、IMG文件和固件，请到浏览器中访问Web UI再进行此类上传文件的操作。

* 如果您在使用过程中遇到任何问题，或者对未来的硬件或固件版本有建议，欢迎前往Github[提交issues](https://github.com/bigtreetech/PandaKnomi3D/issues)与我们保持联系。

* 如果您有任何此wiki无法解决的问题，请通过以下方式联系客户支持：`support01@bigtree-tech.com`.


## 基本参数

| 微处理器 | Xtensa双核32位LX6 ESP32<br/>时钟频率高达240MHz。|
| :-----| :----: |
| 存储器 | PSRAM-8MB(4MB RAM + [4MB Himem](https://docs.espressif.com/projects/esp-idf/zh_CN/latest/esp32/api-reference/system/himem.html)), Flash-16MB |
| 逻辑电压 | 3.3V |
| 输入电压 | 5V-24V |
| 额定功率 | 0.65W |
| 屏幕外型尺寸 | 34.6mm x 37.9mm x 3.5mm |
| 屏幕尺寸 | 1.28” |
| 分辨率 | 240 x 240 |
| 显示区域 | 32.4（H）mm x 32.4（V）mm |
| 屏幕驱动芯片 | GC9A01 |
| 可视角度 | 全视域（All View） |
| 背光亮度 | 400 Cd/m² |
| 通信方式 | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| 工作温度 | Panda Knomi 3D：-20℃ 至 +70℃<br/>塑胶版本外壳：-30℃ 至 +130℃ |
| 储存温度 | -30℃ 至 +80℃ |
| 背光寿命 | 大于20000hr |


## 尺寸和接口

<img src=img/PandaKnomi3D/size.webp width="400"/>

<img src=img/PandaKnomi3D/port.jpg width="400"/>


## 安装指南

Panda Knomi 3D安装在A1系列打印机上。

### 安装到A1系列工具头

* 装入透镜

    <img src=img/PandaKnomi3D/install_1.jpg width="300"/>

* 轻轻揭下 Panda Knomi 3D屏幕的保护膜

    <img src=img/PandaKnomi3D/install_2.jpg width="300"/>

* 把屏幕安装到外壳里面，在此之前务必检查透镜及屏幕上是否有灰尘碎削等杂物，如有，请及时清理避免压碎屏幕

    <img src=img/PandaKnomi3D/install_3.jpg width="300"/>

* 将后盖与箭头A所指示的卡扣对准，沿箭头B方向轻轻按下直到听到“咔哒”一声，表示安装到位。

    <img src=img/PandaKnomi3D/install_4.jpg width="400"/>

* 在A1系列打印机工具头上，从侧面用力按压工具头前盖，解锁并移除前盖。

    <img src=img/PandaKnomi3D/install_5.jpg width="300"/>

* 取下旋转轮。

    <img src=img/PandaKnomi3D/zh/install_6.jpg width="300"/>

* 将电源线穿过如下孔位，并插入Panda Knomi 3D的屏幕背面电源接口。

    <img src=img/PandaKnomi3D/install_7.jpg width="600"/>

* 从顶部扣入Panda Knomi 3D，并按压以固定

    <img src=img/PandaKnomi3D/install_8.jpg width="400"/>

    <img src=img/PandaKnomi3D/install_9.jpg width="350"/>

* 最后，为了避免电源线干扰打印以及让打印机看起来更加整洁，我们设计了[可打印的夹线器模型](https://github.com/bigtreetech/PandaKnomi3D/blob/master/Print_Files/A1_Series/A1%20Series_Cable_Clip%20%E5%A4%B9%E7%BA%BF%E5%99%A8_V1.0.stl)，请下载并打印安装。

    <img src=img/PandaKnomi3D/install_10.jpg width="400"/>

    如果您使用的是 AMS Lite，我们还设计了[可打印的集线器模型](https://github.com/bigtreetech/PandaKnomi3D/blob/master/Print_Files/A1_Series/A1%20Series_Cable_Organizer%20%E9%9B%86%E7%BA%BF%E5%99%A8_V1.0.stl)，可让您将所有PTFE管、工具头电缆和 Panda Knomi 3D电源线捆绑在一起。

    <img src=img/PandaKnomi3D/install_11.jpg width="600"/>

    我们还建议使用提供的扎带将工具头电缆和 Panda Knomi 3D电源线轻轻捆绑在一起。扎带不应太紧避免扯到电缆。

* 成功安装到 A1 系列工具头上

    <img src=img/PandaKnomi3D/install_12.jpg width="300"/>

> 祝贺您已完成 Panda Knomi 3D 的安装。现在您可以继续阅读如何在 A1 系列打印机上给 Panda Knomi 3D 供电。

#### 从 A1 系列工具头上拆卸

> 如需从工具头上拆卸 Panda Knomi 3D，请按照以下步骤。

* 捏住外壳两端，向上取下外壳即可从工具头上取下 Panda Knomi 3D

    <img src=img/PandaKnomi3D/uninstall_1.jpg width="400"/>

* 使用后盖开盖器顶住图示中蓝色高亮槽口的位置，后盖将自动弹开，便于取下。(您需要先从 [GitHub](https://github.com/bigtreetech/PandaKnomi3D/blob/master/Print_Files/A1_Series/A1%20Series_Cover%20Opener%20%E5%BC%80%E7%9B%96%E5%99%A8_V1.0.stl) 下载后盖开盖器的文件并自行打印)

    <img src=img/PandaKnomi3D/zh/uninstall_2.jpg width="300"/>

### A1 系列供电

现在是时候给 Panda Knomi 3D 供电了。**执行此步骤之前，请确保打印机已关闭电源**

#### 通过打印机供电

* 把Panda Knomi 3D电源线的MX3.0 2pin公头与转接线的MX3.0 2pin母头连接好，注意对准扣位连接，**不能反接**。

    <img src=img/PandaKnomi3D/zh/install_13.jpg width="400"/>

* 在机器后部(A1)或侧面(A1 mini)找到一个未使用的 4pin 电源端口。再把转接线另一头的MX3.0 4pin接口插入到打印机的MX3.0 4pin接口。

    <img src=img/PandaKnomi3D/zh/install_14.jpg width="400"/>

#### 通过Panda Branch Plus供电

如果不想通过打印机接电，或者打印机的MX3.0接口已被占用，则可以选择购买Panda Branch Plus（单独出售），直接把Panda Knomi 3D的MX3.0 2pin接口插入Panda Branch Plus的MX3.0接口，也可以实现供电。

<img src=img/PandaKnomi3D/install_15.jpg width="600"/>

> 现在是时候给 Panda Knomi 3D 通电并进行配置了，请前往[首次使用指南](#first-time-use-guide)


## 用户界面说明

<a id="first-time-use-guide"></a>

### 首次使用指南

#### 访问Web UI配置界面。

* 连接 Panda Knomi 3D 的 AP热点

    首次启动后或执行 `恢复出厂设置` 命令后，您将看到下面的屏幕。
    
    <img src=img/PandaKnomi3D/zh/ap_qr_code.jpg width="400"/>

    * 扫描 Panda Knomi 3D 上的二维码(如上图所示), 获取 Panda Knomi 3D 自身开启的 AP 热点的名称和密码, 点击连接。出厂默认的AP信息如下：

        Wi-Fi名称: `Panda_Knomi_3D_xxxxxxxxxxxx`

        Wi-Fi密码: `987654321`

        > <font size="2">提示：大多数现代智能手机都支持通过相机扫描二维码功能，尤其是搭载 iOS 11 及以上版本的 iPhone 和 Android 9.0 及以上系统的设备。请确保您的设备系统及相机应用为最新版本，以获得最佳的二维码扫描体验。如果您的设备不具备上述条件，可以使用 Google Lens 等外部应用，或直接手动连接 Panda Knomi 3D 的热点（默认密码为：`987654321`）以访问 Web UI。</font>

    * 如果无法扫码连接，请到设备的 `设置` 菜单中手动连接热点。

        以 `iPhone` 为例：

        * 在你的主屏幕上，前往 `设置`-> `无线局域网`。

        * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。

            <img src=img/PandaKnomi3D/zh/wlan.jpg width="300"/>

        * 轻点名称以 `Panda_Knomi_3D` 开头的无线局域网，输入默认密码：`987654321`。

        * 连接上 Panda Knomi 3D 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。

* 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。

#### 将 Panda Knomi 3D 连接到打印机所在的Wi-Fi下

* 首次配置会自动进入 `选择语言` 界面，设置完语言后，点击 `下一步`。

    <img src=img/PandaKnomi3D/zh/language.jpg width="300"/>

* 进入连接 Wi-Fi 界面，Panda Knomi 3D 会自动扫描环境中的 Wi-Fi，请选择打印机所连接的 Wi-Fi 进行连接。如果没有扫描到打印机连接的 Wi-Fi, 可以点击 “扫描” 按钮重新扫描。

    <img src=img/PandaKnomi3D/zh/wifi.jpg width="300"/>

* 等待连接成功，连接成功后会弹出如下图中的弹窗，点击 `绑定打印机` 可以跳转到 `打印机` 界面绑定打印机。

    <img src=img/PandaKnomi3D/zh/goto_printer.jpg width="300"/>

#### 绑定打印机

> 注意：如果访问码的位置是空白的没有内容，可能是打印机处于云模式并且未绑定云账号，请打开打印机的 `仅局域网模式`，或者使用Bambu Handy/Bambu Studio 将此打印机绑定到云账号上。

##### 自动扫描

* Web UI配置界面进入 `打印机` 界面, 点击 `扫描` 会扫描同一局域网下的拓竹打印机, 一次完整的扫描大概需要30秒左右。每多一台拓竹打印机最多增加20秒的扫描时间。Panda Knomi 3D 每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机。如果此次扫描未能识别到想要连接的打印机，可以点击 `扫描` 按钮重新扫描，或者 `手动输入` 所有的信息

    <img src=img/PandaKnomi3D/zh/printer.jpg width="300"/>

* 扫描完成后, 选择想要连接的打印机, 选择后打印机的 `SN码` 和 `IP` 会自动填充。然后在打印机上找到 `访问码`, 并手动输入到Web UI上的 `打印机访问码` 栏。

    * A1系列打印机

        * ①	`设置`

            <img src=img/PandaKnomi3D/zh/a1_1.jpg width="300"/>

        * ② -> ③ `局域网模式`

            <img src=img/PandaKnomi3D/zh/a1_2_3.jpg width="300"/>

        * ④ `访问码`

            <img src=img/PandaKnomi3D/zh/a1_4_5.jpg width="300"/>

* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着 Panda Knomi 3D 已经成功连接到打印机了。

    <img src=img/PandaKnomi3D/zh/bind_ok.jpg width="300"/>

* 恭喜您！现在可以尽情的享用您的 Panda Knomi 3D 了。

##### 手动输入

> * Panda Knomi 3D 每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机，我们可以 `手动输入` 绑定打印机所需要的所有信息。
> * 如果您局域网内的拓竹打印机数量不多，但是却仍然扫描不到打印机，我们可以先尝试 `手动输入` 绑定打印机所需要的所有信息。如果 Panda Knomi 3D 无法连接到打印机，可能是您路由器的一些安全特性，禁止了局域网内的设备互相通信。请联系客服 support01@bigtree-tech.com 协助您做进一步的排查。

* 在打印机上找到 `SN码`，`访问码` 和 `IP`，并输入到Web UI上对应的输入栏中。

    * A1系列打印机

        * `SN码`

            * ①	`设置`

                <img src=img/PandaKnomi3D/zh/a1_1.jpg width="300"/>

            * ② `设备`

                <img src=img/PandaKnomi3D/zh/a1_2.jpg width="300"/>

            * ③ `打印机序列号` 即为 `SN码`

                <img src=img/PandaKnomi3D/zh/a1_3.jpg width="300"/>

        * `访问码` 和 `IP`

            * ①	`设置`

                <img src=img/PandaKnomi3D/zh/a1_1.jpg width="300"/>

            * ② -> ③ `局域网模式`

                <img src=img/PandaKnomi3D/zh/a1_2_3.jpg width="300"/>

            * ④ `访问码`, ⑤ `IP`

                <img src=img/PandaKnomi3D/zh/a1_4_5.jpg width="300"/>

* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着 Panda Knomi 3D 已经成功连接到打印机了。<br/>
  <img src=img/PandaKnomi3D/zh/bind_ok.jpg width="300"/>
* 恭喜您！现在可以尽情的享用您的 Panda Knomi 3D 了。

### Wi-Fi & IP 界面

> 连接到 Panda Knomi 3D WebUI 中出现的第一个界面是 WiFi&IP 设置界面。

<img src=img/PandaKnomi3D/zh/wifi_ip.jpg width="300"/>

* ①	进入 `Wi-Fi&IP` 界面

* ②	如果您想要重新配置 Panda Knomi 3D 要连接的 Wi-Fi，可以点击 `Wi-Fi 网络配置` 按钮再次进入配置 Wi-Fi的界面重新配置要连接的 Wi-Fi。

    > <font size="2">提示：Panda Knomi 3D 更换所连接的 Wi-Fi 后，Panda Knomi 3D 所在的局域网和 IP 地址可能发生改变，若在设备连接到与 Panda Knomi 3D 所连接的 Wi-Fi 相同的局域网下改变此配置，则设备会与 Panda Knomi 3D 断开通信连接，需要将设备也重新连接到 Panda Knomi 3D 新连接的 Wi-Fi 网络下才可重新建立通信连接。为避免此类情况，建议将设备连接到 Panda Knomi 3D 的 AP 热点，然后再修改此配置。</font>

* ③	配网完成后，推荐客户将手机、电脑等设备连接到与 Panda Knomi 3D 所连接的 Wi-Fi 相同的局域网下，并通过在浏览器地址栏输入 IP 地址访问 Web UI。为避免遗忘 IP地址，可利用手机主屏幕书签功能，方便快速访问。

* ④	若设备连接到与 Panda Knomi 3D 所连接的 Wi-Fi 相同的局域网下，用户可以通过主机名直接访问 Web UI，例如出厂默认的主机名是 `PandaKnomi3D`，我们可以直接访问 [http://pandaknomi3d.local](http://pandaknomi3d.local) ，不区分大小写。如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用 IP 访问。

    用户可以自定义主机名，但是请遵守以下规则：
    
    * 只能由字母（a-z、A-Z）、数字（0-9）、以及连接符（-）组成， 并且首字符必须是字母。
    * 长度不低于8个字符，不超过32个字符。

    修改完成后，点击 `设置主机名` 将设置的主机名发送给 Panda Knomi 3D，若出现如下图中的弹窗，说明主机名已经重新设置成功，主机名修改后需要重新启动才可以生效，直接点击弹窗中的 `OK` 按钮，Panda Knomi 3D 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。

    <img src=img/PandaKnomi3D/zh/hostname.jpg width="300"/>

### AP 界面

> Panda Knomi 3D WebUI 中出现的下一个界面是 AP 界面。Panda Knomi 3D AP 是 Panda Knomi 3D 广播的 WiFi 热点，允许手机/电脑直接连接到它。如果您不希望广播此热点，则可以将其关闭，但 Panda Knomi 3D 会在无法连接到您设置的 WiFi 时自动重新打开此热点。这提供了一种故障保护方式，可以在设置的 WiFi 网络不可用的情况下重新连接到 Panda Knomi 3D。
>
> <font size="2">若设备是连接到 Panda Knomi 3D 的 AP 热点访问的 Web UI，关闭或者修改 Panda Knomi 3D 的 AP 信息都会导致设备与 Panda Knomi 3D 断开通信连接。为避免此类情况，建议将设备连接到与 Panda Knomi 3D 所连接的 Wi-Fi 相同局域网下再修改此配置。</font>

<img src=img/PandaKnomi3D/zh/ap.jpg width="300"/>

* ①	进入 `AP` 界面

* ②	打开/关闭 Panda Knomi 3D 的 AP 热点。关闭AP热点后将无法连接到 Panda Knomi 3D 的热点去访问 Web UI，关闭前请务必记录 Panda Knomi 3D 在其所处的 Wi-Fi 的IP，以便使用同一 Wi-Fi 的设备通过 IP 访问 Web UI。

* ③	修改 Panda Knomi 3D 的 AP 热点， 默认配置为：

    Wi-Fi名称: `Panda_Knomi_3D_xxxxxxxxxxxx`

    Wi-Fi密码: `987654321`

    修改完成后不用重启 Panda Knomi 3D，Panda Knomi 3D 会在后台重新创建新的 AP 热点。

* ④ 修改 AP热点自身的IP地址，如果此 IP 号段与打印机所连接的路由器号段冲突，例如路由器的 IP 号段也是 `192.168.254.1` 会导致 Panda Knomi 3D 无法绑定到打印机。此时我们需要将 Panda Knomi 3D 的 `热点 IP` 修改为与路由器不同的其他号段即可，例如修改为 `192.168.253.1`。

    `热点 IP` 修改后需要重启设备才会生效，若出现如下图中的弹窗，说明 `热点 IP` 已经重新设置成功，直接点击弹窗中的 `OK` 按钮，Panda Knomi 3D 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。

    <img src=img/PandaKnomi3D/zh/hotspot_ip.jpg width="300"/>


## 主题设置和IMG分享

### 各GIF状态说明

* 由于硬件的限制，Panda Knomi 3D 规定单个GIF大小不能超过1.5MB(1536KB, 1MB=1024KB), 并且所有的GIF大小之和不能超过3MB(3072KB,1MB=1024KB)。

* 出厂状态下所有的GIF占用的空间为 2903.28KB
（与下表中所有的大小之和有细微的不同，这是由于每个GIF的大小数据只保留了小数点后两位），剩余 168.72KB 可用。

| | Web UI中的文件名称 | GIF效果 | 出现的条件（需已绑定上打印机） | 出厂GIF的大小 | 出厂GIF的分辨率（宽 x 高） |
| :-----| :-----| :----: | :----: | :----: | :----: |
| 1 | 待机状态.gif  | <img src=img/PandaKnomi3D/gif/standby.gif /> | 打印机处于空闲状态 | 284.94KB | 240 x 240 |
| 2 | 喷嘴加热.gif  | <img src=img/PandaKnomi3D/gif/nozzle_heating.gif /> | 喷嘴正在加热 | 109.63KB | 240 x 240 |
| 3 | 热床加热.gif  | <img src=img/PandaKnomi3D/gif/bed_heating.gif /> | 热床正在加热 | 123.96KB | 240 x 240 |
| 4 | 调平.gif  | <img src=img/PandaKnomi3D/gif/bed_leveling.gif /> | 正在自动调平 | 77.73KB | 240 x 240 |
| 5 | 归零.gif  | <img src=img/PandaKnomi3D/gif/homing.gif /> | 正在回原点 | 112.69KB | 240 x 240 |
| 6 | 清洁喷嘴.gif  | <img src=img/PandaKnomi3D/gif/nozzle_cleaning.gif /> | 正在清理喷嘴 | 88.91KB | 240 x 240 |
| 7 | 流量校准.gif  | <img src=img/PandaKnomi3D/gif/calibrating_flow.gif /> | 正在校准挤出流量 | 149.74KB | 240 x 240 |
| 8 | XY轴共振补偿.gif  | <img src=img/PandaKnomi3D/gif/xy_mesh_mode_sweep.gif /> | 正在校准共振补偿 | 62.93KB | 240 x 240 |
| 9 | 耗材位置检查.gif  | <img src=img/PandaKnomi3D/gif/filament_check_location.gif /> | 正在检查耗材的位置 | 146.63KB | 240 x 240 |
| 10 | 切割耗材.gif  | <img src=img/PandaKnomi3D/gif/filament_cut.gif /> | 正在切料 | 46.78KB | 240 x 240 |
| 11 | 回抽耗材.gif  | <img src=img/PandaKnomi3D/gif/filament_pull_back_cur.gif /> | 正在抽回当前的耗材 | 112.66KB | 240 x 240 |
| 12 | 推入新耗材.gif  | <img src=img/PandaKnomi3D/gif/filament_push_new.gif /> | 正在加载新的耗材 | 121.32KB | 240 x 240 |
| 13 | 挤出旧耗材.gif  | <img src=img/PandaKnomi3D/gif/filament_purge_old.gif /> | 正在冲刷旧的耗材 | 29.46KB | 240 x 240 |
| 14 | 打印成功.gif  | <img src=img/PandaKnomi3D/gif/printing_ok.gif /> | 打印已完成 | 355KB | 240 x 240 |
| 15 | 正在打印.gif  | <img src=img/PandaKnomi3D/gif/printing.gif /> | 正在打印中 | 563.88KB | 240 x 240 |
| 16 | 打印机报错.gif  | <img src=img/PandaKnomi3D/gif/printer_error.gif /> | 正在打印中 | 517.01KB | 240 x 240 |

### 屏幕保护

> 为避免屏幕长时间显示同一个静态画面导致的烧屏，Panda Knomi 3D 内置了屏幕保护的逻辑，在显示静态画面时，每隔15s显示一次内置的屏保GIF(此GIF不支持自定义)，屏保GIF显示时间为 7.5s。

* 屏保GIF的效果如下：

    <img src=img/PandaKnomi3D/gif/screen_saver.gif />

* 以下静态界面中具有屏保逻辑：

    * 无效的 IMG 界面

    * 出厂时的 Hello 界面

    * Wi-Fi 扫描完成界面

    * Wi-Fi 连接失败界面

    * Wi-Fi 密码错误界面

    * 绑定打印机界面

    * 打印机扫描完成界面

    * 打印机 SN 码错误界面

    * 打印机 Access Code 错误界面

<a id="theme-settings"></a>

### 主题设置

<img src=img/PandaKnomi3D/zh/theme_1_2_3_4_5.jpg width="300"/>

<img src=img/PandaKnomi3D/zh/theme_6.jpg width="300"/>

<img src=img/PandaKnomi3D/zh/settings_7_8.jpg width="300"/>

* ①	进入 `主题` 界面

* ②	打印进度显示选择，有以下4种选项：

    * `百分比叠加GIF上`：打印机打印时，屏幕上显示专门定制的GIF（出厂GIF），并且在GIF的上叠加显示实时的打印进度

    * `仅显示百分比`：打印机打印时，屏幕上显示实时的打印进度

    * `仅显示 GIF`：打印机打印时，屏幕上显示代表打印中的 GIF 图片

    * `百分比和 GIF 交替显示`：打印机打印时，屏幕上交替显示实时的打印进度和 GIF 图片，并且每隔 10s 切换一次显示

* ③	设置 GIF 的颜色

    <img src=img/PandaKnomi3D/zh/picker.jpg width="300"/>

    * a) 点击此按钮，弹出设置GIF颜色的界面

    * b) HSL 取色盘（[HSL是什么？](https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4)）

    * c) HSL的H色相参数，范围值为：0 ~ 360°

    * d) HSL的S饱和度参数，范围值为：0 ~ 100%

    * e) HSL的L亮度参数，范围值为：0 ~ 100%

    * f) 颜色对应的RGB 的16进制值，16进制下每个值的范围均为 0 ~ 255（0x00 ~ 0xFF）, 可以直接修改此处的值来得到想要的颜色。 如图中所示的 #FF5703 意味着：

        * R（红色）：0xFF (255/255)

        * G（绿色）：0x57 (87/255)

        * B（蓝色）：0x03 (3/255)

    * g) 颜色对应的HSL的值，H色相的范围为：0 ~ 360°， S饱和度的范围为：0 ~ 100%，L亮度的范围为：0 ~ 100%, 可以直接修改此处的值来得到想要的颜色。如图中所示的 hsl(20, 100%, 51%) 意味着：

        * H（色相）：20°

        * S（饱和度）：100%

        * L（亮度）：51%

    * h) 点击清除设置的颜色，GIF会显示原本的颜色

    * i) 预览所设置颜色的区域

* ④	查看 GIF 储存空间用量，由于 Panda Knomi 3D 硬件的限制，所有的 GIF 大小之和不能超过 3MB (3072KB,1MB=1024KB)，超出此大小 Web UI 会阻止更新并弹窗提醒。

* ⑤	每个 GIF 图片单独设置，包括颜色和自定义GIF图片。

    可以打开/关闭 `预览此GIF` 开关来显示/隐藏 `预览` 按钮，点击 `预览此GIF` 可以使 Panda Knomi 3D 进入预览模式，屏幕上将显示 `预览此GIF` 字样，在屏幕上可查看到自定义 GIF 的效果，若想退出预览模式，请关闭 `预览此GIF` 开关，或者直接跳转到除 `主题` 界面之外的其他界面。
    
    自定义GIF注意

    * Panda Knomi 3D 所使用的屏幕分辨率 `宽 x 高` 为 `240 x 240` 像素，超过此分辨率的图片无法完整显示在屏幕上，所以只允许使用小于或等于此分辨率的GIF。超出此限制的GIF，推荐使用工具重新调整GIF的分辨率，使其符合要求。（例如： [https://www.iloveimg.com/resize-image/resize-gif](https://www.iloveimg.com/resize-image/resize-gif)）。

        * 点击网页中的 `Select images` 按钮选择 GIF 图片，或者直接将GIF图片拖到此界面中

        * 确保勾选了网页右侧的 `Maintain aspect ratio`，避免改变长宽比例导致画面效果不协调

        * 修改 `Width (px):` 和 `Height (px):` 中较大的参数到不超过 240, 如果 `Width (px):` 和 `Height (px):` 参数是一样的，随便修改任意个即可

        * 点击 `Resize IMAGES` 按钮

        * 等待调整完成，然后点击 `Download resized IMAGES` 按钮下载调整后的 GIF.

    * 单个 GIF 的尺寸不能超过 1.5MB(1536KB, 1MB=1024KB)，所有 GIF 一起的尺寸不能超过 3MB(3072KB,1MB=1024KB)。

    * 新的GIF的大小不能超过被替换的GIF大小与剩余空间之和，否则 Web UI 会拒绝替换并弹窗提醒大小超出容量限制。在 `④` 中可以查看剩余空间，在 `⑤` 中可以查看每个GIF的大小。
    
        例如：
        
        &ensp;&nbsp;使用新的GIF替换 `待机状态.gif`，出厂的GIF大小为63.61KB，出厂剩余的容量为407.75KB，所以新的GIF大小不能超过 63.61KB + 407.75KB = 471.36KB。

* ⑥	将自定义的 GIF 下载导出成IMG文件，方便备份或者分享您的自定义GIF设计。

* ⑦	⑧ 将别人分享的IMG文件更新到 Panda Knomi 3D 中

### 应用IMG文件到Panda Knomi 3D

* 下载IMG主题文件

    * 下载社区中其他用户分享的 Panda Knomi 3D 的 `.img` 文件

    * 从 Panda Knomi 3D 的Github上下载

        * 访问[Panda Knomi 3D 的Github地址](https://github.com/bigtreetech/PandaKnomi3D)

        * 到 IMG 文件夹中，挑选自己喜欢的IMG主题

            <img src=img/PandaKnomi3D/img_github_path.webp width="800"/>

        * 点击下载，保存到本地

            <img src=img/PandaKnomi3D/img_github_download.webp width="800"/>

* 进入 Panda Knomi 3D 的Web UI，① `设置` -> ② `选择.img文件`，然后选择刚才下载的 `.img` 文件，等待更新完成后，Panda Knomi 3D 会自动应用并显示新的IMG文件。

    <img src=img/PandaKnomi3D/zh/img_web_upload.jpg width="300"/>

### 从 Panda Knomi 3D 导出IMG分享

* 进入Panda Knomi 3D 的Web UI。① `主题` -> ② `导出IMG`，等待IMG文件导出完成

    <img src=img/PandaKnomi3D/zh/img_web_download.jpg width="300"/>

* 将导出的IMG文件重命名，命名规则为：

    `panda_knomi_3d_diy_<theme_name>_<author_name>_YYYY_MM_DD.img`

    * `<theme_name>`: 自己为此IMG取一个主题名字
    * `<author_name>`: 作者的代号或者名字
    * `YYYY_MM_DD`: IMG的日期，年_月_日

    例如：`panda_knomi_3d_diy_theme_author_2025_02_22.img`。

* 将 .img 文件分享到Github

    * 如果您没有Github账号，请首先[注册一个账号](https://docs.github.com/zh/get-started/start-your-journey/creating-an-account-on-github)。

    * 访问[Panda Knomi 3D 的Github地址](https://github.com/bigtreetech/PandaKnomi3D)

    * 点击 ① `Fork`

        <img src=img/PandaKnomi3D/fork_1.webp width="800"/>

    * 点击 ② `Create fork`

      <img src=img/PandaKnomi3D/fork_2.webp width="800"/>

    * 等待 `fork` 完成

      <img src=img/PandaKnomi3D/fork_3.webp width="800"/>

    * `fork` 完成后，① 进入IMG文件夹 -> ② `Add file` -> ③ `Upload files`

        <img src=img/PandaKnomi3D/img_drag.webp width="800"/>

    * ① 选择要上传的 img 文件，② 写自定义IMG的`标题`，③ 写入自定义主题的`详细描述`，④ `提交文件`

        <img src=img/PandaKnomi3D/img_pri_commit.webp width="800"/>

    * ① `Contribute` -> ② `Open pull request`

        <img src=img/PandaKnomi3D/img_open_pr.webp width="800"/>

    * ① 写自定义IMG的`标题`，② 写入自定义主题的`详细描述`，③ 勾选 `Allow edits by maintainers`，④ `Create pull request`

        <img src=img/PandaKnomi3D/img_create_pr.webp width="800"/>

    * 恭喜你已经完成分享！


## 恢复出厂设置

> <font size="2">Panda Knomi 3D 恢复出厂设置会清空所有的配置，包括语言、连接的WiFi、自定义的主机名、自定义的AP热点名称和密码、绑定的打印机、打印进度显示选择。但是不会重置主题配色信息，也无法将自定义的GIF恢复为出厂GIF，GIF只能通过上传GIF或者更新IMG修改，出厂的IMG文件可从[Panda Knomi 3D 的Github](https://github.com/bigtreetech/PandaKnomi3D/blob/master/IMG/panda_knomi_3d_factory.img)上面下载。</font>

### 通过Web UI 恢复出厂设置

* 进入 ① `设置` 界面，点击 ② `恢复出厂设置` 按钮

    <img src=img/PandaKnomi3D/zh/factory_1.jpg width="300"/>

* 会出现确认的弹窗，点击 ③ `是` 确认恢复出厂设置，Panda Knomi 3D 会恢复出厂设置并重新启动。

    <img src=img/PandaKnomi3D/zh/factory_2.jpg width="300"/>

### 通过按键恢复出厂设置

长按 Panda Knomi 3D 上的 Boot 按键5秒后，Panda Knomi 3D 会恢复出厂设置并重新启动。

<img src=img/PandaKnomi3D/boot.jpg width="300"/>


## 固件

### 功能请求

如果您希望在即将发布的 Panda Knomi 3D 固件中增加产品需求，请在官方 Panda Knomi 3D github repo上提交请求，让我们知道。

[请求功能](https://github.com/bigtreetech/PandaKnomi3D/issues)

### 如何更新固件

#### OTA

* 访问Web UI配置界面。

    > <font size="2">如果 Panda Knomi 3D 已经连接到Wi-Fi中了，可以将设备连接到此Wi-Fi相同的局域网下直接通过IP访问Web UI更新固件。也可以将设备连接到 Panda Knomi 3D 的AP热点上访问WebUI更新固件。这两种途径任选其一即可</font>

    * 连接到 Panda Knomi 3D 所在Wi-Fi的局域网下

        * 将设备连接到 Panda Knomi 3D 所在Wi-Fi的局域网下（Wi-Fi、以太网均可）

        * 在设备的浏览器中输入 Panda Knomi 3D 的IP或者主机名，主机名出厂默认为：`http://pandaknomi3d.local`，如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用IP访问Web UI配置界面。

    * 连接 Panda Knomi 3D 的AP热点更新

        * 将设备连接到 Panda Knomi 3D 的AP热点。以iPhone为例：

            * 在你的主屏幕上，前往 `设置`-> `无线局域网`。

            * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。

                <img src=img/PandaKnomi3D/zh/wlan.jpg width="300"/>

            * 轻点名称以 `Panda_Knomi_3D_` 开头的无线局域网，输入默认密码：`987654321`。

            * 连接上 Panda Knomi 3D 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。

        * 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。

* 在Web UI配置界面中，进入 ① `设置` 界面, 点击 ② `选择 .bin 文件`, 然后选择要更新的固件, 更新完成后设备会自动重启。

    <img src=img/PandaKnomi3D/zh/firmware.jpg width="300"/>

#### flash_download_tool (Type-C 线刷)

> <font size="2">注意：Panda Knomi 3D 理应可以自由的OTA，此步骤仅在无法OTA时使用。</font>

* 如果电脑上没有 CH340 的驱动，请先下载安装驱动 [CH341SER.EXE](https://www.wch.cn/downloads/CH341SER_EXE.html)

* 下载 [Flash 下载工具](https://www.espressif.com/zh-hans/support/download/other-tools)

    <img src=img/PandaKnomi3D/zh/download_esp_tool.webp width="800"/>

* 下载 [Panda Knomi 3D 的固件](https://github.com/bigtreetech/PandaKnomi3D)

* 按住 Panda Knomi 3D 上的 `Boot` 按键, 然后通过 `Type-C` 插到电脑上，电脑的设备管理器中理应识别出一个新的 COM 端口

    <img src=img/PandaKnomi3D/boot_fw.jpg width="300"/>

* 打开 `flash_download_tool_3.9.8_6.exe`, 在弹窗中按照下图配置

    <img src=img/PandaKnomi3D/open_esp_tool.webp width="400"/>

* 烧录软件的配置如下图

    <img src=img/PandaKnomi3D/set_esp_tool.webp width="400"/>

    * ①	设置.bin文件的烧录地址, 并且前面的复选框都勾选上

        * `panda_knomi_3d_bootloader.bin` 写入到 `0x1000`

        * `panda_knomi_3d_partition.bin` 写入到 `0x8000`

        * `panda_knomi_3d_ota_data.bin` 写入到 `0xe000`

        * `panda_knomi_3d_01.00.00.01.bin` 写入到 `0x10000`

        * `panda_knomi_3d_01.00.00.01.img` 写入到 `0x910000`

    * ②	设置COM端口为 Panda Knomi 3D 实际的端口（可在电脑的`设备管理器`->`端口`中查看）, 并且设置一个合适的波特率, 我们推荐使用 `460800`

    * ③	点击 `START` 开始烧录，等待烧录完成, 断电重启即可。

<a id="firmware_history"></a>

### 固件历史记录

#### [01.00.00.01](https://github.com/bigtreetech/PandaKnomi3D/tree/master/Firmware/01.00.00.01)

* 首次发布的出厂固件。

## 技术支持
这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：`support01@bigtree-tech.com`
