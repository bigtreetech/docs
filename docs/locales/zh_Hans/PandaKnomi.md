# Panda Knomi

<img src=img/PandaKnomi/panda_knomi.jpg width="400"/>

## 重要提示

* Panda Knomi只监听打印机的状态，不控制打印机，所以Panda Knomi的功能不会受拓竹固件更新的影响。有关受影响和不受影响的更多信息，请参阅[Bambu Lab 官方公告](https://blog.bambulab.com/firmware-update-introducing-new-authorization-control-system-2/)。
* 确保您的设备运行了[最新版本的固件](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware)。
* 您可以在[Github](https://github.com/bigtreetech/PandaKnomi/tree/master/Print_Files)上找到 P1、X1 和 A1 系列的各种可打印支架以及整理线缆的工具。
* 光固化3D打印外壳具有透明高亮显著优点，但受限于其树脂打印材质，不可避免存在易碎且不耐高温特性。安装时请务必按照说明书步骤要求，确保卡位精准、轻卡入以避免损坏该打印件。当环境温度超 40℃，该外壳有软化风险，不建议在高温封箱环境使用。
* Panda Knomi仅支持连接到2.4G Wi-Fi。
* 如出现长时间 `无效的IP，自动修正中`，请使用 `Bambu Handy` 或 `Bambu Studio` 尝试控制打印机，如果打印机无应答或显示不在线，可能是打印机所处的网络环境异常，请检查网络环境。如果可以正常控制打印机，请尝试断电重启Panda Knomi，若重启后仍无法正常连接，请联系售后支持邮箱 `support01@bigtree-tech.com`
* 在设置界面连接Panda Knomi的AP热点后，直接跳转到的Web UI界面，部分手机由于权限的问题可能无法在此界面上传更新GIF图片、IMG文件和固件，请到浏览器中访问Web UI再进行此类上传文件的操作。
* 如果您在使用过程中遇到任何问题，或者对未来的硬件或固件版本有建议，欢迎前往Github[提交issues](https://github.com/bigtreetech/PandaKnomi/issues)与我们保持联系。
* 如果您有任何此wiki无法解决的问题，请通过以下方式联系客户支持：`support01@bigtree-tech.com`.

## 基本参数

| 微处理器 | Xtensa双核32位LX6 ESP32<br/>时钟频率高达240MHz。|
| :-----| :----: |
| 存储器 | PSRAM-8MB(4MB RAM + [4MB Himem](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/system/himem.html)), Flash-16MB |
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
| 工作温度 | Panda Knomi：-20℃ 至 +70℃<br/>光固化3D打印外壳：0℃ 至 40 ℃<br/>塑胶版本外壳：-30℃ 至 +130℃ |
| 储存温度 | -30℃ 至 +80℃ |
| 背光寿命 | 大于20000hr |

## 尺寸和接口

<img src=img/PandaKnomi/size.webp width="400"/>
<img src=img/PandaKnomi/port.jpg width="400"/>

## 安装指南

> Panda Knomi 可以安装在 A1、P1 和 X1 系列机器上。
>
> 本节最开始将介绍如何用使塑料外壳或者光固化版本外壳，将 Panda Knomi 安装到A1系列打印机的工具头上。随后的章节会提供说明，介绍如何安装到 A1、P1 和 X1 系列机架/机箱上。

### 安装到 A1 系列

#### 安装到 A1 系列工具头

* 轻轻揭下 Panda Knomi 的保护膜。<br/>
  <img src=img/PandaKnomi/install_1.webp width="300"/>
* 将Panda Knomi 安装到外壳内
    * 塑料外壳
        * 将屏幕放入外壳卡槽中。<br/>
          <img src=img/PandaKnomi/install_2.jpg width="300"/>
        * 将后盖与箭头A所指示的卡扣对准，沿箭头B方向轻轻按下，直到听到”咔哒”一声，表示安装到位。<br/>
          <img src=img/PandaKnomi/install_3.jpg width="300"/>
    * 光固化版本外壳
        * 将Panda Knomi对准并放置于外壳的对应槽位。<br/>
          <img src=img/PandaKnomi/install_2.jpg width="300"/>
        * 确保 `压盖` 与扣位对齐后，轻轻放置并顺时针旋转以固定。<br/>
          <img src=img/PandaKnomi/install_4.webp width="600"/>
* 安装Panda Knomi 到A1系列工具头
    * 从侧面用力按压工具头前盖，解锁并移除前盖。<br/>
      <img src=img/PandaKnomi/install_5.webp width="300"/>
    * 卸下旋转轮。<br/>
      <img src=img/PandaKnomi/install_6.webp width="300"/>
    * 将电源线穿过指定的孔位。<br/>
      <img src=img/PandaKnomi/install_7.jpg width="300"/>
    * 插入Panda Knomi电源接口。<br/>
      <img src=img/PandaKnomi/install_8.jpg width="300"/>
    * 顶部开始扣入Panda Knomi，轻轻按压以固定。<br/>
      > 注意：光固化版本外壳具有易碎特性。安装时，请确保卡位准确，并轻轻卡入，避免错位导致过度用力，以免损坏打印件。

        <img src=img/PandaKnomi/install_9.webp height="300"/><img src=img/PandaKnomi/install_10.webp height="300"/>

* 最后，为了避免电源线干扰打印以及让打印机看起来更加整洁，我们设计了[可打印的夹线器模型](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/A1_Series/A1%20Series_Cable_Clip%20%E5%A4%B9%E7%BA%BF%E5%99%A8_V1.0.stl)，请下载并打印安装。

    <img src=img/PandaKnomi/en_print_1.webp width="600"/>

* 如果您使用的是 AMS Lite，我们还设计了[可打印的集线器模型](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/A1_Series/A1%20Series_Cable_Organizer%20%E9%9B%86%E7%BA%BF%E5%99%A8_V1.0.stl)，可让您将所有PTFE管、工具头电缆和 Panda Knomi 电源线捆绑在一起。

    <img src=img/PandaKnomi/print_2.webp width="600"/>

* 我们还建议使用提供的扎带将工具头电缆和 Panda Knomi 电源线轻轻捆绑在一起。扎带不应太紧避免扯到电缆。

* 已成功安装到 A1 系列工具头上

    <img src=img/PandaKnomi/install_11.webp width="300"/>

> 祝贺您已完成 Panda Knomi 的安装。现在您可以继续阅读如何在 A1 系列打印机上给 Panda Knomi 供电。

#### 从 A1 系列工具头上拆卸

> 如需拆卸塑料外壳背盖或从工具头上取下 Panda Knomi ，请按照以下步骤。

* 捏住外壳两端，向上取下外壳即可从工具头上取下 Panda Knomi

    <img src=img/PandaKnomi/uninstall.webp width="500"/>

* 使用后盖开盖器顶住图示中蓝色高亮槽口的位置，后盖将自动弹开，便于取下。(您需要先从 [GitHub](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/A1_Series/A1%20Series_Cover%20Opener%20%E5%BC%80%E7%9B%96%E5%99%A8_V1.0.stl) 下载后盖开盖器的文件并自行打印)

    <img src=img/PandaKnomi/open.jpg width="600"/>

#### 安装到 A1 系列龙门架

##### 安装到 A1 打印机龙门架

* 下载并打印[A1 安装外壳](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/A1_Series/A1_X_Axis_Shell_X%E8%BD%B4%E5%9B%BA%E5%AE%9A%E4%BB%B6.stl)

* 轻轻揭下 Panda Knomi 表面的保护膜。

    <img src=img/PandaKnomi/install_1.webp width="300"/>

* 将电源线穿过底座图示的孔位，并插入Panda Knomi的电源接口。

    <img src=img/PandaKnomi/a1_gantry_1.webp width="600"/>

* 将 Panda Knomi 放入底座中，并将电源线沿外壳预留的走线槽妥善布置。

    <img src=img/PandaKnomi/a1_gantry_2.webp width="300"/>

    <img src=img/PandaKnomi/a1_gantry_3.webp width="600"/>

    <img src=img/PandaKnomi/a1_gantry_4.webp width="200"/>

* 对齐上盖与底座，轻轻盖上，双手均匀施压，直至四周卡扣完全啮合。

    <img src=img/PandaKnomi/a1_gantry_5.webp width="400"/>

    <img src=img/PandaKnomi/a1_gantry_6.webp width="200"/>

* 移除 A1 打印机电机安装座上的前盖板。

    <img src=img/PandaKnomi/a1_gantry_7.webp width="400"/>

* 将 Panda Knomi 外壳打印件的走线槽与机器的走线槽对齐，先扣合底部左侧卡扣，再依次固定其余部分，完成安装。

    <img src=img/PandaKnomi/a1_gantry_8.webp width="400"/>

    <img src=img/PandaKnomi/a1_gantry_9.webp width="400"/>

> 祝贺您已完成 Panda Knomi 的安装。现在您可以继续阅读如何在 A1 系列打印机上给 Panda Knomi 供电。

##### 安装到 A1 mini 打印机龙门架

* 下载并打印[A1 mini 安装外壳](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/A1_Series/A1MINI_mount.STL)

* 轻轻揭下 Panda Knomi 表面的保护膜。

    <img src=img/PandaKnomi/install_1.webp width="300"/>

* 将电源线插入 Panda Knomi 的电源接口。

    <img src=img/PandaKnomi/a1mini_gantry_1.webp width="300"/>

* 将 Panda Knomi 放入底座中。

    <img src=img/PandaKnomi/a1mini_gantry_2.webp width="300"/>

    <img src=img/PandaKnomi/a1mini_gantry_3.webp width="200"/>

* 翻转至背面，将电源线妥善嵌入外壳预留的走线槽内。

    <img src=img/PandaKnomi/a1mini_gantry_4.webp width="600"/>

* 对齐上盖与底座，轻轻盖上，双手均匀施压，直至四周卡扣完全啮合。

    <img src=img/PandaKnomi/a1mini_gantry_5.webp width="400"/>

    <img src=img/PandaKnomi/a1mini_gantry_6.webp width="200"/>

* 移除 A1 mini 打印机电机安装座上的前盖板。

    <img src=img/PandaKnomi/a1mini_gantry_7.webp width="400"/>

* 将 Panda Knomi 外壳打印件的电线槽位与机器的电线线槽对齐，卡入并固定到位。

    <img src=img/PandaKnomi/a1mini_gantry_8.webp width="400"/>

    <img src=img/PandaKnomi/a1mini_gantry_9.webp width="400"/>

> 祝贺您已完成 Panda Knomi 的安装。现在您可以继续阅读如何在 A1 系列打印机上给 Panda Knomi 供电。

#### A1 系列供电

现在是时候给 Panda Knomi 供电了。**执行此步骤之前，请确保打印机已关闭电源**

* 在机器后部(A1)或侧面(A1 mini)找到一个未使用的 4pin 电源端口。

    <img src=img/PandaKnomi/power_a1.webp width="600"/>

* 如果没有可用的电源端口，您可以使用[Panda Branch](https://biqu.equipment/products/panda-knomi?variant=41781607399522)（单独出售），它将把一个端口分成四个。如果使用[Panda Branch](https://biqu.equipment/products/panda-knomi?variant=41781607399522)，请注意仅在 BIGTREETECH 的建议范围内使用以确保打印机的内部 PSU 不会过载。Panda Knomi 仅消耗 0.65W 的功率，完全符合内部 PSU 的规格。考虑到这一点，请在连接 Panda Knomi 后将 Panda Branch 的 USB 电源开关设置为 2A，以确保任何连接的 USB 外设会被限流在安全的工作范围内。

> 现在是时候给 Panda Knomi 通电并进行配置了，请前往[首次使用指南](#first-time-use-guide)

### 安装到 X1 系列

#### 外壳安装

* 下载并打印[所有的 X1 安装外壳](https://github.com/bigtreetech/PandaKnomi/tree/master/Print_Files/X1_Series)

* 轻轻揭下 Panda Knomi 表面的保护膜。

    <img src=img/PandaKnomi/install_1.webp width="300"/>

* 将Panda Knomi放入[底座](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/X1_Series/X1%20Series_Shell_Back%20Cover%20%E5%A4%96%E5%A3%B3%E5%B0%81%E6%9D%BF.STL)中。

    <img src=img/PandaKnomi/x1_1.webp width="300"/>

    <img src=img/PandaKnomi/x1_2.webp width="200"/>

* 对齐[压盖](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/X1_Series/X1%20Series_Shell_Round%20Panel%20%E5%A4%96%E5%A3%B3%E6%89%A3%E7%9B%96.STL)与底座，轻轻盖上，并均匀按压各处，确保固定。

    <img src=img/PandaKnomi/x1_3.webp width="300"/>

    <img src=img/PandaKnomi/x1_4.webp width="200"/>

* 将组装好的 Panda Knomi 嵌入[面板打印件](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/X1_Series/X1%20Series_Shell_Panel%20%E5%A4%96%E5%A3%B3%E9%9D%A2%E6%9D%BF.STL)预留的孔位中。

    <img src=img/PandaKnomi/x1_5.webp width="300"/>

* 将电源线插入 Panda Knomi 的电源接口。

    <img src=img/PandaKnomi/x1_6.webp width="600"/>

* 将电源线卡入面板预留的理线槽口

    <img src=img/PandaKnomi/x1_7.webp width="400"/>

* 对准面板预留的孔位与 X1 机器屏幕，首先从上方开始卡入屏幕，然后轻轻按压下方以完成安装。

    <img src=img/PandaKnomi/x1_8.webp width="600"/>

> 祝贺您已完成 Panda Knomi 的安装。现在您可以继续阅读如何在 X1 系列打印机上给 Panda Knomi 供电。

#### X1 系列供电

> 使用 X1 系列机器时，有以下几个选项可以为 Panda Knomi 供电。

* 如果您没有使用 AMS，则可以将其直接连接到机器后部的 AMS 输出端口。

* 如果您有使用 AMS，则需要使用 Panda Branch 扩展 4pin 的 AMS 端口，然后将 Panda Knomi 连接到其中一个扩展端口。请注意仅在 BIGTREETECH 的建议范围内使用以确保打印机的内部 PSU 不会过载。Panda Knomi 仅消耗 0.65W 的功率，完全符合内部 PSU 的规格。考虑到这一点，请在连接 Panda Knomi 后将 Panda Branch 的 USB 电源开关设置为 2A，以确保任何连接的 USB 外设会被限流在安全的工作范围内。

    <img src=img/PandaKnomi/power_x1.webp width="600"/>

> 现在是时候给 Panda Knomi 通电并进行配置了，请前往[首次使用指南](#first-time-use-guide)

### 安装到 P1 系列

#### 外壳安装

* 下载并打印[所有的 P1 安装外壳](https://github.com/bigtreetech/PandaKnomi/blob/master/Print_Files/P1_Seires/P1%20Series_Shell%20%E5%A4%96%E5%A3%B3.STL)

* 轻轻揭下 Panda Knomi 表面的保护膜。

    <img src=img/PandaKnomi/install_1.webp width="300"/>

* 将 Panda Knomi 放入底座中。

    <img src=img/PandaKnomi/p1_1.webp width="430"/>

    <img src=img/PandaKnomi/p1_2.webp width="300"/>

* 对齐压盖与底座，轻轻盖上并均匀按压各处以固定。

    <img src=img/PandaKnomi/p1_install_3.webp width="430"/>

    <img src=img/PandaKnomi/p1_4.webp width="300"/>

#### P1 系列供电

> Panda Knomi可通过其背部的电源插孔或USB-C接口进行供电。

* 通过机身内置USB端口供电

    <img src=img/PandaKnomi/power_p1.webp width="600"/>

    * 沿设备顶部通道使用预留卡扣整理走线，将USB线从图示的机器孔位穿出。

        <img src=img/PandaKnomi/p1_5.webp width="600"/>

    * 将USB线卡入底座的线扣，并插入Panda Knomi背部的USB-C接口。

        <img src=img/PandaKnomi/p1_6.webp width="400"/>

    * 将底座的线扣卡入机器的孔位以完成安装。

        <img src=img/PandaKnomi/p1_7.webp width="400"/>

        <img src=img/PandaKnomi/p1_8.webp width="600"/>

* 如果您从机器后部供电，请选择最适合您的走线方式。

* 如果您有使用 AMS，则需要使用 Panda Branch 扩展 4pin 的 AMS 端口，然后将 Panda Knomi 连接到其中一个扩展端口。请注意仅在 BIGTREETECH 的建议范围内使用以确保打印机的内部 PSU 不会过载。Panda Knomi 仅消耗 0.65W 的功率，完全符合内部 PSU 的规格。考虑到这一点，请在连接 Panda Knomi 后将 Panda Branch 的 USB 电源开关设置为 2A，以确保任何连接的 USB 外设会被限流在安全的工作范围内。

> 现在是时候给 Panda Knomi 通电并进行配置了，请前往[首次使用指南](#first-time-use-guide)


## 用户界面说明

<a id="first-time-use-guide"></a>

### 首次使用指南

#### 访问Web UI配置界面。

* 连接 Panda Knomi 的 AP热点<br/>
  首次启动后或执行 `恢复出厂设置` 命令后，您将看到下面的屏幕。<br/><img src=img/PandaKnomi/ap_qr_code.jpg width="400"/><br/>
    * 扫描 Panda Knomi 上的二维码(如上图所示), 获取 Panda Knomi 自身开启的 AP 热点的名称和密码, 点击连接。出厂默认的AP信息如下：<br/>
      Wi-Fi名称: `Panda_Knomi_xxxxxxxxxxxx`<br/>
      Wi-Fi密码: `987654321`<br/>
      > <font size="2">提示：大多数现代智能手机都支持通过相机扫描二维码功能，尤其是搭载 iOS 11 及以上版本的 iPhone 和 Android 9.0 及以上系统的设备。请确保您的设备系统及相机应用为最新版本，以获得最佳的二维码扫描体验。如果您的设备不具备上述条件，可以使用 Google Lens 等外部应用，或直接手动连接 Panda Knomi 的热点（默认密码为：`987654321`）以访问 Web UI。</font>
    * 如果无法扫码连接，请到设备的 `设置` 菜单中手动连接热点。<br/>
        以 `iPhone` 为例：<br/>
        * 在你的主屏幕上，前往 `设置`-> `无线局域网`。
        * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。<br/>
          <img src=img/PandaKnomi/wlan.webp width="300"/>
        * 轻点名称以 `Panda_Knomi_` 开头的无线局域网，输入默认密码：`987654321`。
        * 连接上 Panda Knomi 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。
* 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 当使用 `V1.0.4.1` 及其之后版本的固件, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) (之前的版本请使用 [192.168.4.1](http://192.168.4.1)) 访问Web UI配置界面。

#### 将Panda Knomi连接到打印机所在的Wi-Fi下

* 首次配置会自动进入 `选择语言` 界面，设置完语言后，点击 `下一步`。<br/>
  <img src=img/PandaKnomi/language.webp width="300"/>
* 进入连接 Wi-Fi 界面，Panda Knomi会自动扫描环境中的 Wi-Fi，请选择打印机所连接的 Wi-Fi 进行连接。如果没有扫描到打印机连接的 Wi-Fi, 可以点击 “扫描” 按钮重新扫描。<br/>
  <img src=img/PandaKnomi/wifi.webp width="300"/>
* 等待连接成功，连接成功后会弹出如下图中的弹窗，点击 `绑定打印机` 可以跳转到 `打印机` 界面绑定打印机。<br/>
  <img src=img/PandaKnomi/goto_printer.webp width="300"/>

#### 绑定打印机

> 注意：如果访问码的位置是空白的没有内容，可能是打印机处于云模式并且未绑定云账号，请打开打印机的 `仅局域网模式`，或者使用Bambu Handy/Bambu Studio 将此打印机绑定到云账号上。

##### 自动扫描

* Web UI配置界面进入 `打印机` 界面, 点击 `扫描` 会扫描同一局域网下的拓竹打印机, 一次完整的扫描大概需要30秒左右。每多一台拓竹打印机最多增加20秒的扫描时间。Panda Knomi每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机。如果此次扫描未能识别到想要连接的打印机，可以点击 `扫描` 按钮重新扫描，或者 `手动输入` 所有的信息<br/>
  <img src=img/PandaKnomi/printer.webp width="300"/>
* 扫描完成后, 选择想要连接的打印机, 选择后打印机的 `SN码` 和 `IP` 会自动填充。然后在打印机上找到 `访问码`, 并手动输入到Web UI上的 `打印机访问码` 栏。
    * A1系列打印机
        * ①	`设置`<br/>
          <img src=img/PandaKnomi/a1_1.jpg width="300"/>
        * ② -> ③ `局域网模式`<br/>
          <img src=img/PandaKnomi/a1_2_3.jpg width="300"/>
        * ④ `访问码`<br/>
          <img src=img/PandaKnomi/a1_4_5.jpg width="300"/>
    * P1系列打印机
        * ①	`设置`-> ② `网络(WLAN)` -> ③ `OK`<br/>
          <img src=img/PandaKnomi/p1_1_2_3.webp width="600"/>
        * ⑤ `访问码`<br/>
          <img src=img/PandaKnomi/p1_4_5.webp width="600"/>
    * X1系列打印机<br/>
        * ①	`设置` -> ② `通用` -> ③ `访问码`<br/>
          <img src=img/PandaKnomi/x1_1_2_3_4.jpg width="600"/>
* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着Panda Knomi已经成功连接到打印机了。<br/>
  <img src=img/PandaKnomi/bind_ok.webp width="300"/>
* 恭喜您！现在可以尽情的享用您的 Panda Knomi 了。

##### 手动输入

> * Panda Knomi每次扫描最多支持识别20台打印机，如果您局域网内的拓竹打印机数量较多超出了20台，可能无法扫描到所有的打印机，我们可以 `手动输入` 绑定打印机所需要的所有信息。
> * 如果您局域网内的拓竹打印机数量不多，但是却仍然扫描不到打印机，我们可以先尝试 `手动输入` 绑定打印机所需要的所有信息。如果Panda Knomi无法连接到打印机，可能是您路由器的一些安全特性，禁止了局域网内的设备互相通信。请联系客服 support01@bigtree-tech.com 协助您做进一步的排查。

* 在打印机上找到 `SN码`，`访问码` 和 `IP`，并输入到Web UI上对应的输入栏中。
    * A1系列打印机
        * `SN码`
            * ①	`设置`<br/>
                <img src=img/PandaKnomi/a1_1.jpg width="300"/>
            * ② `设备`<br/>
                <img src=img/PandaKnomi/a1_2.jpg width="300"/>
            * ③ `打印机序列号` 即为 `SN码`<br/>
                <img src=img/PandaKnomi/a1_3.jpg width="300"/>
        * `访问码` 和 `IP`
            * ①	`设置`<br/>
                <img src=img/PandaKnomi/a1_1.jpg width="300"/>
            * ② -> ③ `局域网模式`<br/>
                <img src=img/PandaKnomi/a1_2_3.jpg width="300"/>
            * ④ `访问码`, ⑤ `IP`<br/>
                <img src=img/PandaKnomi/a1_4_5.jpg width="300"/>
    * P1系列打印机
        * `SN码`
            * ①	`设置` -> ② `设备(Device)`<br/>
                <img src=img/PandaKnomi/p1_1_2.webp width="600"/>
            * ③ `打印机(Printer)` 即为 `SN码`<br/>
                <img src=img/PandaKnomi/p1_3.webp width="600"/>
        * `访问码` 和 `IP`          
            * ①	`设置`-> ② `网络(WLAN)` -> ③<br/>
                <img src=img/PandaKnomi/p1_1_2_3.webp width="600"/>
            * ④ `IP`, ⑤ `访问码`<br/>
                <img src=img/PandaKnomi/p1_4_5.webp width="600"/>
    * X1系列打印机
        * `SN码` 和 `访问码`
            * ①	`设置` -> ② `通用` -> ③ `访问码`, ④ `设备信息` 即为 `SN码`<br/>
                <img src=img/PandaKnomi/x1_1_2_3_4.jpg width="600"/>
        * `IP`          
            * ①	`设置`-> ② `网络(WLAN)` -> ③ `IP`<br/>
                <img src=img/PandaKnomi/x1_1_2_3.jpg width="600"/>
* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着Panda Knomi已经成功连接到打印机了。<br/>
  <img src=img/PandaKnomi/bind_ok.webp width="300"/>
* 恭喜您！现在可以尽情的享用您的 Panda Knomi 了。

### Wi-Fi & IP 界面

> 连接到 Panda Knomi WebUI 中出现的第一个界面是 WiFi&IP 设置界面。

<img src=img/PandaKnomi/wifi_ip.jpg width="300"/>

* ①	进入 `Wi-Fi&IP` 界面
* ②	如果您想要重新配置 Panda Knomi 要连接的 Wi-Fi，可以点击 `Wi-Fi 网络配置` 按钮再次进入配置 Wi-Fi的界面重新配置要连接的 Wi-Fi。
  > <font size="2">提示：Panda Knomi 更换所连接的 Wi-Fi 后，Panda Knomi 所在的局域网和 IP 地址可能发生改变，若在设备连接到与 Panda Knomi 所连接的 Wi-Fi 相同的局域网下改变此配置，则设备会与 Panda Knomi 断开通信连接，需要将设备也重新连接到 Panda Knomi 新连接的 Wi-Fi 网络下才可重新建立通信连接。为避免此类情况，建议将设备连接到 Panda Knomi 的 AP 热点，然后再修改此配置。</font>
* ③	配网完成后，推荐客户将手机、电脑等设备连接到与 Panda Knomi 所连接的 Wi-Fi 相同的局域网下，并通过在浏览器地址栏输入 IP 地址访问 Web UI。为避免遗忘 IP地址，可利用手机主屏幕书签功能，方便快速访问。
* ④	若设备连接到与 Panda Knomi 所连接的 Wi-Fi 相同的局域网下，用户可以通过主机名直接访问 Web UI，例如出厂默认的主机名是 `PandaKnomi`，我们可以直接访问 [http://pandaknomi.local](http://pandaknomi.local) ，不区分大小写。如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用 IP 访问。<br/>用户可以自定义主机名，但是请遵守以下规则：<br/>
    * 只能由字母（a-z、A-Z）、数字（0-9）、以及连接符（-）组成， 并且首字符必须是字母。
    * 长度不低于8个字符，不超过32个字符 (在`V1.0.2`及其之前版本的固件上, 请不要超过15个字符, 否则设备会无法启动，需要更新到`V1.0.3`及其之后版本的固件)。

    修改完成后，点击 `设置主机名` 将设置的主机名发送给 Panda Knomi，若出现如下图中的弹窗，说明主机名已经重新设置成功，主机名修改后需要重新启动才可以生效，直接点击弹窗中的 `OK` 按钮，Panda Knomi 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。<br/>
    <img src=img/PandaKnomi/hostname.webp width="300"/>

### AP 界面

> Panda Knomi WebUI 中出现的下一个界面是 AP 界面。Panda Knomi AP 是 Panda Knomi 广播的 WiFi 热点，允许手机/电脑直接连接到它。如果您不希望广播此热点，则可以将其关闭，但 Panda Knomi 会在无法连接到您设置的 WiFi 时自动重新打开此热点。这提供了一种故障保护方式，可以在设置的 WiFi 网络不可用的情况下重新连接到Panda Knomi。
>
> <font size="2">若设备是连接到 Panda Knomi 的 AP 热点访问的 Web UI，关闭或者修改 Panda Knomi 的 AP 信息都会导致设备与 Panda Knomi 断开通信连接。为避免此类情况，建议将设备连接到与 Panda Knomi 所连接的 Wi-Fi 相同局域网下再修改此配置。</font>

<img src=img/PandaKnomi/ap.jpg width="300"/>

* ①	进入 `AP` 界面
* ②	打开/关闭 Panda Knomi 的 AP 热点。关闭AP热点后将无法连接到 Panda Knomi 的热点去访问 Web UI，关闭前请务必记录 Panda Knomi 在其所处的 Wi-Fi 的IP，以便使用同一 Wi-Fi 的设备通过 IP 访问 Web UI。
* ③	修改 Panda Knomi 的 AP 热点， 默认配置为：<br/>
  Wi-Fi名称: `Panda_Knomi_xxxxxxxxxxxx`<br/>
  Wi-Fi密码: `987654321`<br/>
  修改完成后不用重启 Panda Knomi，Panda Knomi会在后台重新创建新的 AP 热点。

## 主题设置和IMG分享

### 各GIF状态说明

* 由于硬件的限制，Panda Knomi 规定单个GIF大小不能超过1.5MB(1536KB, 1MB=1024KB), 并且所有的GIF大小之和不能超过3MB(3072KB,1MB=1024KB)。
* 出厂状态下所有的GIF占用的空间为2664.25KB（与下表中所有的大小之和有细微的不同，这是由于每个GIF的大小数据只保留了小数点后两位），剩余407.75KB 可用。

| | Web UI中的文件名称 | GIF效果 | 出现的条件（需已绑定上打印机） | 出厂GIF的大小 | 出厂GIF的分辨率（宽 x 高） |
| :-----| :-----| :----: | :----: | :----: | :----: |
| 1 | 待机状态.gif  | <img src=img/PandaKnomi/gif/standby.gif /> | 打印机处于空闲状态 | 63.61KB | 240 x 240 |
| 2 | 喷嘴加热.gif  | <img src=img/PandaKnomi/gif/nozzle_heating.gif /> | 喷嘴正在加热 | 135.7KB | 240 x 240 |
| 3 | 热床加热.gif  | <img src=img/PandaKnomi/gif/bed_heating.gif /> | 热床正在加热 | 128.55KB | 240 x 240 |
| 4 | 调平.gif  | <img src=img/PandaKnomi/gif/bed_leveling.gif /> | 正在自动调平 | 111.28KB | 240 x 240 |
| 5 | 归零.gif  | <img src=img/PandaKnomi/gif/homing.gif /> | 正在回原点 | 142.75KB | 240 x 240 |
| 6 | 清洁喷嘴.gif  | <img src=img/PandaKnomi/gif/nozzle_cleaning.gif /> | 正在清理喷嘴 | 164.02KB | 240 x 240 |
| 7 | 流量校准.gif  | <img src=img/PandaKnomi/gif/calibrating_flow.gif /> | 正在校准挤出流量 | 1023.41KB | 240 x 240 |
| 8 | XY轴共振补偿.gif  | <img src=img/PandaKnomi/gif/xy_mesh_mode_sweep.gif /> | 正在校准共振补偿 | 78.45KB | 240 x 240 |
| 9 | 耗材位置检查.gif  | <img src=img/PandaKnomi/gif/filament_check_location.gif /> | 正在检查耗材的位置 | 225.3KB | 240 x 240 |
| 10 | 切割耗材.gif  | <img src=img/PandaKnomi/gif/filament_cut.gif /> | 正在切料 | 54.09KB | 240 x 240 |
| 11 | 回抽耗材.gif  | <img src=img/PandaKnomi/gif/filament_pull_back_cur.gif /> | 正在抽回当前的耗材 | 139.41KB | 240 x 240 |
| 12 | 推入新耗材.gif  | <img src=img/PandaKnomi/gif/filament_push_new.gif /> | 正在加载新的耗材 | 164.94KB | 240 x 240 |
| 13 | 挤出旧耗材.gif  | <img src=img/PandaKnomi/gif/filament_purge_old.gif /> | 正在冲刷旧的耗材 | 52.98KB | 240 x 240 |
| 14 | 打印成功.gif  | <img src=img/PandaKnomi/gif/printing_ok.gif /> | 打印已完成 | 22.37KB | 240 x 240 |
| 15 | 正在打印.gif  | <img src=img/PandaKnomi/gif/printing.gif /> | 正在打印中 | 157.41KB | 240 x 240 |

### 屏幕保护

> 为避免屏幕长时间显示同一个静态画面导致的烧屏，Panda Knomi内置了屏幕保护的逻辑，在显示静态画面时，每隔15s显示一次内置的屏保GIF(此GIF不支持自定义)，屏保GIF显示时间为 2s。

* 屏保GIF的效果如下：<br/>
  <img src=img/PandaKnomi/gif/screen_saver.gif />
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
    * 打印机单个 HMS 二维码界面
    * 打印机多个 HMS 错误界面

### 主题设置 <a id="theme-settings"></a>

<img src=img/PandaKnomi/theme_1_2_3_4_5.jpg width="300"/>
<img src=img/PandaKnomi/theme_6.jpg width="300"/>
<img src=img/PandaKnomi/settings_7_8.jpg width="300"/>

* ①	进入 `主题` 界面
* ②	打印进度显示选择，有以下3种选项：
    * `仅显示百分比`：打印机打印时，屏幕上显示实时的打印进度
    * `仅显示 GIF`：打印机打印时，屏幕上显示代表打印中的 GIF 图片
    * `百分比和 GIF 交替显示`：打印机打印时，屏幕上交替显示实时的打印进度和 GIF 图片，并且每隔 10s 切换一次显示
* ③	设置 GIF 的颜色<br/>
  <img src=img/PandaKnomi/picker.jpg width="300"/>
    * a) 点击此按钮，弹出设置GIF颜色的界面
    * b) HSL 取色盘（[HSL是什么？](https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4)）
    * c) HSLA的H色相参数，范围值为：0~360°
    * d) HSLA的S饱和度参数，范围值为：0~100%
    * e) HSLA的L亮度参数，范围值为：0~100%
    * f) HSLA的A透明度参数，范围值为：0.00 ~ 1.00
    * g) 颜色对应的RGBA 的16进制值，16进制下每个值的范围均为 0~255（0x00~0xFF）, 可以直接修改此处的值来得到想要的颜色。 如图中所示的 #FF5703FF 意味着：
        * R（红色）：0xFF (255/255)
        * G（绿色）：0x57 (87/255)
        * B（蓝色）：0x03 (3/255)
        * A（透明度）：0xFF (1.00/1.00)
    * h) 颜色对应的HSLA的值，H色相的范围为：0~360°， S饱和度的范围为：0~100%，L亮度的范围为：0~100%，A透明度的范围为：0.00 ~ 1.00, 可以直接修改此处的值来得到想要的颜色。如图中所示的 hsla(20, 100%, 51%, 1) 意味着：
        * H（色相）：20°
        * S（饱和度）：100%
        * L（亮度）：51%
        * A（透明度）：1.00
    * i) 点击清除设置的颜色，GIF会显示原本的颜色
    * j) 预览所设置颜色的区域
* ④	查看GIF 储存空间用量，由于 Panda Knomi硬件的限制，所有的 GIF 大小之和不能超过 3MB (3072KB,1MB=1024KB)，超出此大小 Web UI 会阻止更新并弹窗提醒。
* ⑤	每个 GIF 图片单独设置，包括颜色和自定义GIF图片。<br/>
  可以打开/关闭 `预览此GIF` 开关来显示/隐藏 `预览` 按钮，点击 `预览此GIF` 可以使 Panda Knomi进入预览模式，屏幕上将显示 `预览此GIF` 字样，在屏幕上可查看到自定义 GIF 的效果，若想退出预览模式，请关闭 `预览此GIF` 开关，或者直接跳转到除 `主题` 界面之外的其他界面。<br/>自定义GIF注意<br/>
    * 如果想要使用修改颜色的功能，对应的 GIF 图片的底色必须是透明的，否则修改颜色会连带着背景一起变为设置的颜色，屏幕会满屏显示类似纯颜色的界面。
    * 并且由于软件解码存在一些限制，透明的 GIF 的最后一帧必须要与第一帧内容一样，否则会存在最后一帧与第一帧同时覆盖显示在一起的问题。如果您不使用动态修改颜色的功能，则不需要使用透明的 GIF，就不存在此限制了。
    * Panda Knomi 所使用的屏幕分辨率 `宽 x 高` 为 `240 x 240` 像素，超过此分辨率的图片无法完整显示在屏幕上，所以只允许使用小于或等于此分辨率的GIF。超出此限制的GIF，推荐使用工具重新调整GIF的分辨率，使其符合要求。（例如： [https://www.iloveimg.com/resize-image/resize-gif](https://www.iloveimg.com/resize-image/resize-gif)）。
        * 点击网页中的 `Select images` 按钮选择 GIF 图片，或者直接将GIF图片拖到此界面中
        * 确保勾选了网页右侧的 `Maintain aspect ratio`，避免改变长宽比例导致画面效果不协调
        * 修改 `Width (px):` 和 `Height (px):` 中较大的参数到不超过 240, 如果 `Width (px):` 和 `Height (px):` 参数是一样的，随便修改任意个即可
        * 点击 `Resize IMAGES` 按钮
        * 等待调整完成，然后点击 `Download resized IMAGES` 按钮下载调整后的 GIF.
    * 单个 GIF 的尺寸不能超过 1.5MB(1536KB, 1MB=1024KB)，所有 GIF 一起的尺寸不能超过 3MB(3072KB,1MB=1024KB)。
    * 新的GIF的大小不能超过被替换的GIF大小与剩余空间之和，否则 Web UI 会拒绝替换并弹窗提醒大小超出容量限制。在 `④` 中可以查看剩余空间，在 `⑤` 中可以查看每个GIF的大小。<br/>例如：<br/>&ensp;&nbsp;使用新的GIF替换 `待机状态.gif`，出厂的GIF大小为63.61KB，出厂剩余的容量为407.75KB，所以新的GIF大小不能超过 63.61KB + 407.75KB = 471.36KB。
* ⑥	将自定义的 GIF 下载导出成IMG文件，方便备份或者分享您的自定义GIF设计。
  > <font size="2">注意：V1.0.2及其之前版本的固件，IMG中不包括自定义颜色的数据信息，仅包含GIF图片数据。V1.0.3及其之后的固件包含自定义颜色数据。</font>
* ⑦	⑧ 将别人分享的IMG文件更新到Panda Knomi中

### 应用IMG文件到Panda Knomi

  > <font size="2">注意：V1.0.2及其之前版本的固件，IMG中不包括自定义颜色的数据信息，仅包含GIF图片数据。V1.0.3及其之后的固件包含自定义颜色数据。</font>

* 下载IMG主题文件
    * 下载社区中其他用户分享的Panda Knomi 的 `.img` 文件
    * 从Panda Knomi的Github上下载
        * 访问[Panda Knomi的Github地址](https://github.com/bigtreetech/PandaKnomi)
        * 到 IMG 文件夹中，挑选自己喜欢的IMG主题<br/>
          <img src=img/PandaKnomi/img_github_path.webp width="800"/>
        * 点击下载，保存到本地<br/>
          <img src=img/PandaKnomi/img_github_download.webp width="800"/>
* 进入Panda Knomi的Web UI，① `设置` -> ② `选择.img文件`，然后选择刚才下载的 `.img` 文件，等待更新完成后，Panda Knomi 会自动应用并显示新的IMG文件。<br/>
  <img src=img/PandaKnomi/img_web_upload.jpg width="300"/>

### 从Panda Knomi导出IMG分享

  > <font size="2">注意：V1.0.2及其之前版本的固件，IMG中不包括自定义颜色的数据信息，仅包含GIF图片数据。V1.0.3及其之后的固件包含自定义颜色数据。</font>

* 进入Panda Knomi的Web UI。① `主题` -> ② `导出IMG`，等待IMG文件导出完成<br/>
  <img src=img/PandaKnomi/img_web_download.jpg width="300"/>
* 将导出的IMG文件重命名，命名规则为：`panda_knomi_diy_<theme_name>_<author_name>_YYYY_MM_DD.img`
    * `<theme_name>`: 自己为此IMG取一个主题名字
    * `<author_name>`: 作者的代号或者名字
    * `YYYY_MM_DD`: IMG的日期，年_月_日

    例如：`panda_knomi_diy_theme_author_2025_02_22.img`。

* 将 .img 文件分享到Github
    * 如果您没有Github账号，请首先[注册一个账号](https://docs.github.com/zh/get-started/start-your-journey/creating-an-account-on-github)。
    * 访问[Panda Knomi的Github地址](https://github.com/bigtreetech/PandaKnomi)
    * 点击 ① `Fork`<br/>
      <img src=img/PandaKnomi/fork_1.webp width="800"/>
    * 点击 ② `Create fork`<br/>
      <img src=img/PandaKnomi/fork_2.webp width="800"/>
    * 等待 `fork` 完成<br/>
      <img src=img/PandaKnomi/fork_3.webp width="800"/>
    * `fork` 完成后，进入IMG文件夹<br/>
      <img src=img/PandaKnomi/img_pri_path.webp width="800"/>
    * 将IMG文件拖到浏览器中，然后浏览器会出现 `Drop to upload your files` 的界面。<br/>
      <img src=img/PandaKnomi/img_drag.webp width="800"/><br/>
      <img src=img/PandaKnomi/img_drop.webp width="800"/>
    * ① 写自定义IMG的`标题`，② 写入自定义主题的`详细描述`，③ `提交文件`<br/>
      <img src=img/PandaKnomi/img_pri_commit.webp width="800"/>
    * ① `Contribute` -> ② `Open pull request`<br/>
      <img src=img/PandaKnomi/img_open_pr.webp width="800"/>
    * ① 写自定义IMG的`标题`，② 写入自定义主题的`详细描述`，③ 勾选 `Allow edits by maintainers`，④ `Create pull request`<br/>
      <img src=img/PandaKnomi/img_create_pr.webp width="800"/>
    * 恭喜你已经完成分享！

## 恢复出厂设置

> <font size="2">Panda Knomi恢复出厂设置会清空所有的配置，包括语言、连接的WiFi、自定义的主机名、自定义的AP热点名称和密码、绑定的打印机、打印进度显示选择、主题配色信息。但是无法将自定义的GIF恢复为出厂GIF，GIF只能通过上传GIF或者更新IMG修改，出厂的IMG文件可从[Panda Knomi的Github](https://github.com/bigtreetech/PandaKnomi/blob/master/IMG/panda_knomi_factory.img)上面下载。</font>

### 通过Web UI 恢复出厂设置

* 进入 ① `设置` 界面，点击 ② `恢复出厂设置` 按钮<br/>
  <img src=img/PandaKnomi/factory_1.jpg width="300"/>
* 会出现确认的弹窗，点击 ③ `是` 确认恢复出厂设置，Panda Knomi会恢复出厂设置并重新启动。<br/>
  <img src=img/PandaKnomi/factory_2.jpg width="300"/>

### 通过按键恢复出厂设置

长按 Panda Knomi 上的 Boot 按键5秒后，Panda Knomi 会恢复出厂设置并重新启动。<br/>
<img src=img/PandaKnomi/boot.jpg width="300"/>

## 固件

### 功能请求

如果您希望在即将发布的Panda Knomi固件中增加产品需求，请在官方Panda Knomi github repo上提交请求，让我们知道。

[请求功能](https://github.com/bigtreetech/PandaKnomi/issues)

### 如何更新固件

#### OTA

* 访问Web UI配置界面。
  > <font size="2">如果Panda Knomi已经连接到Wi-Fi中了，可以将设备连接到此Wi-Fi相同的局域网下直接通过IP访问Web UI更新固件。也可以将设备连接到Panda Knomi的AP热点上访问WebUI更新固件。这两种途径任选其一即可</font>
    * 连接到Panda Knomi所在Wi-Fi的局域网下
        * 将设备连接到Panda Knomi所在Wi-Fi的局域网下（Wi-Fi、以太网均可）
        * 在设备的浏览器中输入Panda Knomi的IP或者主机名，主机名出厂默认为：`http://pandaknomi.local`，如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用IP访问Web UI配置界面。
    * 连接Panda Knomi的AP热点更新
        * 将设备连接到Panda Knomi的AP热点。以iPhone为例：
            * 在你的主屏幕上，前往 `设置`-> `无线局域网`。
            * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。<br/>
              <img src=img/PandaKnomi/wlan.webp width="300"/> <br/>
            * 轻点名称以 `Panda_Knomi_` 开头的无线局域网，输入默认密码：`987654321`。
            * 连接上 Panda Knomi 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。
        * 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 当使用 `V1.0.4.1` 及其之后版本的固件, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) (之前的版本请使用 [192.168.4.1](http://192.168.4.1)) 访问Web UI配置界面。
* 在Web UI配置界面中，进入 ① `设置` 界面, 点击 ② `选择 .bin 文件`, 然后选择要更新的固件, 更新完成后设备会自动重启。<br/>
  <img src=img/PandaKnomi/firmware.jpg width="300"/>

#### flash_download_tool (Type-C 线刷)

> <font size="2">注意：Panda Knomi理应可以自由的OTA，此步骤仅在无法OTA时使用。</font>

* 如果电脑上没有 CH340 的驱动，请先下载安装驱动 [CH341SER.EXE](https://www.wch.cn/downloads/CH341SER_EXE.html)
* 下载 [Flash 下载工具](https://www.espressif.com/zh-hans/support/download/other-tools)<br/>
  <img src=img/PandaKnomi/download_esp_tool.webp width="800"/>
* 下载 [Panda Knomi 的固件](https://github.com/bigtreetech/PandaKnomi)
* 按住Panda Knomi上的 `Boot` 按键, 然后通过 `Type-C` 插到电脑上，电脑的设备管理器中理应识别出一个新的 COM 端口<br/>
  <img src=img/PandaKnomi/boot_fw.jpg width="300"/>
* 打开 `flash_download_tool_3.9.8_6.exe`, 在弹窗中按照下图配置<br/>
  <img src=img/PandaKnomi/open_esp_tool.webp width="400"/>
* 烧录软件的配置如下图<br/>
  <img src=img/PandaKnomi/set_esp_tool.webp width="400"/>
    * ①	设置.bin文件的烧录地址, 并且前面的复选框都勾选上
        * `panda_knomi_bootloader.bin` 写入到 `0x1000`
        * `panda_knomi_partition.bin` 写入到 `0x8000`
        * `panda_knomi_v1.0.0.bin` 写入到 `0x10000`
        * `panda_knomi_v1.0.0.img` 写入到 `0x910000`
    * ②	设置COM端口为Panda Knomi实际的端口（可在电脑的`设备管理器`->`端口`中查看）, 并且设置一个合适的波特率, 我们推荐使用 `460800`
    * ③	点击 `START` 开始烧录，等待烧录完成, 断电重启即可。


### 固件历史记录 <a id="firmware_history"></a>

#### [V1.0.4.1](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.4.1)
* 优化: 默认的 AP IP 由 `192.168.4.1` 修改为 `192.168.254.1`，尽可能的减小与路由器 IP 号段冲突的可能性

#### [V1.0.4](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.4)

* 修复: 使用 MAC 地址作为 MQTT 的 `client_id`, 避免多台设备使用相同的 `client_id` 被打印机禁止连接的问题
* 修复: WebUI 增加设置 AP Hotspot IP 的功能。Panda Knomi 默认使用 `192.168.4.1` , 如果您的路由器也使用此号段，Panda Knomi 会无法连接到打印机，需要将 Panda Knomi 设置为与路由器不同的号段，例如: `192.168.5.1`。设置完成后需要重启设备才生效。
* 修复：打印机断电续打后，Panda Knomi 一直显示 homing GIF。
* 修复: 过滤非 UTF-8 编码的 WiFi 名称, 因为非 UTF-8 字符无法通过 WebSocket TEXT 传输。
* 修复：WiFi 名称以空格开头，或者有多个连续空格，无法正常显示和连接的问题
* 优化: WebUI STA 和 AP 增加隐藏 WiFi 密码的功能
* 优化: WiFi 连接失败，后台重连时增加 5s 的间隔，优化不间断的重连 WiFi 可能导致的 AP 不稳定以及 WebUI 应答缓慢的问题
<br>

* TODO(已知的问题): 无法正常显示和连接名称中带有`"`字符的 WiFi，会在下一版本中解决

#### [V1.0.3.1](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.3.1)

* 优化: WebUI 自定义的GIF "分辨率超过240x240", "单个GIF尺寸超过1.5MB" 和 "所有的GIF尺寸之和超过3MB" 弹窗界面，增加引导到wiki说明的跳转连接，便于用户调整GIF使其兼容PandaKnomi

#### [V1.0.3](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.3)

- 修复: 为自定义GIF实现专用内存管理逻辑，修复了更换GIF时内存碎片导致的内存不足问题。
* 修复: MQTT publish 失败重试逻辑。
* 修复: MQTT 接收缓存由之前的14KB增加到80KB，因为X1C接4个AMS单帧数据量可能高达26KB，H2D可能高达50KB。
* 修复: 禁用 netbiosns，避免hostname超过15个字符后设备无法启动的问题。
* 优化: 二维码背景色固定为黑色，优化对比度不够明显导致手机有时无法成功扫描的问题。
* 优化: GIF重新配色功能:
    * 颜色直接存储到GIF中，这样配色就会跟着GIF/IMG文件移动，方便用户共享配色。
    * 将着色的RGB转为CMYK再与原本的颜色合并，保留了GIF的抗锯齿效果。
    * WebUI 删除无用的alpha透明通道的配置。
    * 增加GIF加载中界面，告知用户PandaKnomi当前的实时状态。
* 优化: 无效的IMG界面仅在需要显示的GIF无效时出现，之前的逻辑是只要有任意一个GIF无效，需要显示任意一下GIF时就会出现。
* 优化: WebUI WiFi连接失败的信息中增加错误码，便于我们定位问题原因。

#### [V1.0.2](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.2)

* 修复：解决TCP连接被占用，Web UI无法访问的问题。现在会强制断开旧的连接，应答最新的Web UI请求
* 修复: MQTT内存泄露问题。解决断开重新绑定一百多次打印机后，Panda Knomi可能会一直处于 `正在绑定打印机中`
* 修复：Web UI解绑打印机后，立刻点击 `绑定` 打印机，Panda Knomi可能不绑定打印机的问题
* 修复：打印完成后，`打印完成.gif` 偶尔不显示
* 优化：增加GIF总尺寸的限制，Web UI（弹窗）+ 后台（拒绝分配内存）均限制不能超过3MB，避免GIF耗尽RAM导致系统运行异常的问题
* 优化：Web UI增加显示GIF存储占用信息
* 优化：Web UI增加显示每个GIF文件的大小、分辨率

#### [V1.0.1]

* 修复：Web UI访问时, 立刻出现的弹窗, 语言总是英语
* 修复：屏幕保护功能导致的 `WiFi 扫描完成` 和 `打印机扫描完成` 界面不显示
* 修复：无法连接到加密方式为 `WPA-PSK` WiFi的热点
* 修复：误报WiFi密码错误的问题，增加了3此重试机制，3次均报密码错误后才会抛出异常，并且后台仍然会一直尝试重新连接
* 优化：A1 mini 打印机通电后大概25s左右才会完成MQTT的部署，Panda Knomi在开始连接后的30s之内一直尝试重新连接，30s之后才会抛出 `无效的IP` 异常，避免打印机刚开机时MQTT未部署完成Panda Knomi就报错的情况
* 优化：出现 `无效的IP` 异常后Panda Knomi后台自动监听UDP，重新扫描打印机，若扫描到相同SN码的打印机，则重新应用新的IP建立连接。

#### [V1.0.0]

* 首次发布的出厂固件。

## 技术支持
这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：`support01@bigtree-tech.com`
