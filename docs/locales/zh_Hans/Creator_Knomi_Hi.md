# Creator Knomi Hi

<img src=img/Creator_Knomi_Hi/knomi-hi.jpg width="500"/>



## 重要提示

* 最新固件 [点击这里](https://github.com/bigtreetech/Creator_Knomi_Hi/tree/master/Firmware)
* Creator Knomi Hi仅支持连接到2.4G Wi-Fi。
* 在设置界面连接Creator Knomi Hi的AP热点后，直接跳转到的Web UI界面，部分手机由于权限的问题可能无法在此界面上传更新GIF图片、IMG文件和固件，请到浏览器中访问Web UI再进行此类上传文件的操作。
* 如果你在使用过程遇到任何问题，欢迎前往Github[提交issues](https://github.com/bigtreetech/Creator_Knomi_Hi/issues)与我们保持联系。

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
| 工作温度 | Creator Knomi Hi：-20℃ 至 +70℃<br/>塑胶版本外壳：-30℃ 至 +130℃ |
| 储存温度 | -30℃ 至 +80℃ |
| 背光寿命 | 大于20000hr |

## 尺寸和接口

<img src=img/Creator_Knomi_Hi/size.png width="400"/>
<img src=img/Creator_Knomi_Hi/port.jpg width="400"/>

## 安装指南

> 本节将介绍如何使用塑料外壳，将 Creator Knomi Hi 安装到 Creality Hi 打印机的工具头上。

* 第一步：卸下原装前盖<br/>
使用 2.0mm 螺丝刀，卸下前盖两侧的螺丝，将螺丝放置一旁。<br/>
注意：这些螺丝稍后将用于固定 Creator Knomi Hi 外壳。<br/>
<img src=img/Creator_Knomi_Hi/screw-left.jpg width="400"/>
<img src=img/Creator_Knomi_Hi/screw-right.jpg width="400"/>
<br/>

* 第二步：断开线束连接<br/>原装前盖卸下后，按照图中箭头所示，拔下两个接口，卸下线束。<br/>
<img src=img/Creator_Knomi_Hi/wring.png width="400"/>
<br/>

* 第三步：拿出新的knomi前壳，按照以下步骤连接线缆<br/>
①将线缆A的接口插入显示屏接口d位置（详见图示）。<br/>
<img src=img/Creator_Knomi_Hi/wring_1.jpg width="400"/><br/>
②将线缆B的接口插入Creality Hi打印头控制板上的e口。<br/>
<img src=img/Creator_Knomi_Hi/wring_2.jpg width="400"/><br/>
③将线缆C的接口插入打印头上的f口，线缆c从g的位置走线<br/>
<img src=img/Creator_Knomi_Hi/wring_3.jpg width="400"/>
<br/>
请确保所有连接牢固，并合理整理线缆，避免运动过程中出现挤压或干涉。

* 第四步：安装并固定 Creator Knomi Hi 外壳<br/>
使用之前拆下的螺丝，将 Creator Knomi Hi 外壳固定到位。
<br/>
<img src=img/Creator_Knomi_Hi/close_left.jpg width="400"/>
<img src=img/Creator_Knomi_Hi/close_right.jpg width="400"/>
<br/>

* 安装完成<br/>
<img src=img/Creator_Knomi_Hi/succeed.jpg width="400"/>



## 打印机设置
* 获取打印机IP地址
  * ①	点击`设置`<br/>
    <img src=img/Creator_Knomi_Hi/hi_1.png width="600"/>
  * ②点击 `网络` -> ③ `IP`<br/>
    <img src=img/Creator_Knomi_Hi/hi_2.png width="600"/>

* 使电脑连接到与打印机同一个局域网下, Creality Hi 打印机的端口号默认为 4408，我们可以通过 `IP + 端口号` 访问打印机，例如我们打印机的IP为 `192.168.3.81`，我们只需要在浏览器的地址栏输入 `192.168.3.81:4408` 然后访问即可
* ① -> ② -> ③ `Upload Files`，选择 `Creator_Knomi_Hi_01.00.00.00.cfg` 配置文件，上传到打印机中。<br/>
  <img src=img/Creator_Knomi_Hi/printer_1.png width="600"/>
* 打开 `printer.cfg` 文件添加
  ```
  [include Creator_Knomi_Hi_01.00.00.00.cfg]
  ```
  <img src=img/Creator_Knomi_Hi/printer_2.png width="600"/>
* 打开 `sensorless.cfg` 文件，在`_HOME_X`，`_HOME_Y`，`_HOME_Z`三个宏的开头全部都添加：
  ```
  SET_KNOMI_STATUS VALUE=4
  ```
  在三个宏的末尾全部都添加：
  ```
  RESET_KNOMI_STATUS
  ```
  <img src=img/Creator_Knomi_Hi/printer_3.png width="600"/>
  <br/>注意：图中仅截取了“_HOME_X”部分的内容，“_HOME_Y”，“_HOME_Z”部分也需要像“_HOME_X”这样添加对应的内容。
* 打开 `gcode_macro.cfg` 文件，在`QUIT_MATERIAL`宏中，如下图中的位置添加：
  ```
  SET_KNOMI_STATUS VALUE=9
  ```
  和
  ```
  RESET_KNOMI_STATUS
  ```
  <img src=img/Creator_Knomi_Hi/printer_4.png width="600"/>
* 配置完成后，点击“SAVE & RESTART”重启服务即可应用以上配置。

## 用户界面说明

### 首次使用指南

#### 访问Web UI配置界面。

* 连接 Creator Knomi Hi 的 AP热点<br/>
首次启动后或执行 `恢复出厂设置` 命令后，您将看到下面的屏幕。<br/>
  <img src=img/Creator_Knomi_Hi/ap_qr_code.jpg width="400"/>
  * 扫描 Creator Knomi Hi 上的二维码(如上图所示), 获取 Creator Knomi Hi 自身开启的 AP 热点的名称和密码, 点击连接。<br/>
  <img src=img/Creator_Knomi_Hi/password.jpg width="300"/>
  <br/>出厂默认的AP信息如下：<br/>
    Wi-Fi名称: `Creator_Knomi_Hi_xxxxxxxxxxxx`<br/>
    Wi-Fi密码: `987654321`<br/>
    > <font size="2">提示：大多数现代智能手机都支持通过相机扫描二维码功能，尤其是搭载 iOS 11 及以上版本的 iPhone 和 Android 9.0 及以上系统的设备。请确保您的设备系统及相机应用为最新版本，以获得最佳的二维码扫描体验。如果您的设备不具备上述条件，可以使用 Google Lens 等外部应用，或直接手动连接 Creator Knomi Hi 的热点（默认密码为：`987654321`）以访问 Web UI。</font>
  * 如果无法扫码连接，请到设备的 `设置` 菜单中手动连接热点。<br/>
    以 `iPhone` 为例：<br/>
    * 在你的主屏幕上，前往 `设置`-> `无线局域网`。
    * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。<br/>
      <img src=img/Creator_Knomi_Hi/wlan.png width="300"/>
    * 轻点名称以 `Creator_Knomi_Hi` 开头的无线局域网，输入默认密码：`987654321`。
    * 连接上 Creator Knomi Hi 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。
* 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。

#### 将Creator Knomi Hi连接到打印机所在的Wi-Fi下

* 首次配置会自动进入 `选择语言` 界面，设置完语言后，点击 `下一步`。<br/>
  <img src=img/Creator_Knomi_Hi/zh/language.jpg width="300"/>
* 进入连接 Wi-Fi 界面，Creator Knomi Hi会自动扫描环境中的 Wi-Fi，请选择打印机所连接的 Wi-Fi 进行连接。如果没有扫描到打印机连接的 Wi-Fi, 可以点击 “扫描” 按钮重新扫描。<br/>
  <img src=img/Creator_Knomi_Hi/zh/wifi.jpg width="300"/>
* 等待连接成功，连接成功后会弹出如下图中的弹窗，点击 `绑定打印机` 可以跳转到 `打印机` 界面绑定打印机。<br/>
  <img src=img/Creator_Knomi_Hi/zh/goto_printer.jpg width="300"/>

#### 绑定打印机

##### 自动扫描

* Web UI配置界面进入 `打印机` 界面, 设置 `要扫描的端口`(`Crealiyt Hi` 打印机默认为 `7125`)，点击 `扫描` 会扫描同一局域网下的打印机, 局域网内的活跃设备多扫描的时间就会长，设备少扫描的时间就短。一次完整的扫描最短需要50秒，最长不会超过300秒。如果此次扫描未能识别到想要连接的打印机，可以点击 `扫描` 按钮重新扫描，或者 `手动输入` 所有的信息<br/>
  <img src=img/Creator_Knomi_Hi/zh/printer.jpg width="300"/>
* 扫描完成后, 选择想要连接的打印机, 选择后 `打印机IP或主机名` 和 `端口号` 会自动填充。
* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着Creator Knomi Hi已经成功连接到打印机了。<br/>
  <img src=img/Creator_Knomi_Hi/zh/bind_ok.jpg width="300"/>
* 恭喜您！现在可以尽情的享用您的 Creator Knomi Hi 了。

##### 手动输入

> * Creator Knomi Hi 扫描打印机是通过在局域网内 ping 所有的 IP, 在 ping 通的 IP 上，使用 `要扫描的端口` 通过 http GET 获取打印机数据，获取到合法的打印机数据后即将此 IP 放入扫描到的打印机列表中。此方法可能无法扫描到所有的打印机，我们可以 `手动输入` 绑定打印机所需要的信息。
> * 如果您局域网内的打印机数量不多，但是却仍然扫描不到打印机，我们可以先尝试 `手动输入` 绑定打印机所需要的所有信息。如果Creator Knomi Hi无法连接到打印机，可能是您路由器的一些安全特性，禁止了局域网内的设备互相通信。请联系客服 support01@bigtree-tech.com 协助您做进一步的排查。

* 在打印机上找到 `IP`，并输入到Web UI上对应的输入栏中。
  * ①	`设置`<br/>
    <img src=img/Creator_Knomi_Hi/hi_1.png width="600"/>
  * ② `网络` -> ③ `IP`<br/>
    <img src=img/Creator_Knomi_Hi/hi_2.png width="600"/>
  * 打印机默认的端口号为 `7125`
* 点击 `绑定`, 开始连接打印机, 出现 `绑定成功` 的弹窗意味着Creator Knomi Hi已经成功连接到打印机了。<br/>
  <img src=img/Creator_Knomi_Hi/zh/bind_ok.jpg width="300"/>
* 恭喜您！现在可以尽情的享用您的 Creator Knomi Hi 了。

### 各GIF状态说明

* 由于硬件的限制，Creator Knomi Hi 规定单个GIF大小不能超过1.5MB(1536KB, 1MB=1024KB), 并且所有的GIF大小之和不能超过3MB(3072KB,1MB=1024KB)。
* 出厂状态下所有的GIF占用的空间为 1374.06KB（与下表中所有的大小之和有细微的不同，这是由于每个GIF的大小数据只保留了小数点后两位），剩余 1697.94KB 可用。

| | Web UI中的文件名称 | GIF效果 | 出现的条件（需已绑定上打印机） | 出厂GIF的大小 | 出厂GIF的分辨率（宽 x 高） |
| :-----| :-----| :----: | :----: | :----: | :----: |
| 1 | 待机状态.gif  | <img src=img/Creator_Knomi_Hi/standby.gif /> | 打印机处于空闲状态 | 242.21KB | 240 x 240 |
| 2 | 喷嘴加热.gif  | <img src=img/Creator_Knomi_Hi/nozzle_heating.gif /> | 喷嘴正在加热 | 146.11KB | 240 x 240 |
| 3 | 热床加热.gif  | <img src=img/Creator_Knomi_Hi/bed_heating.gif /> | 热床正在加热 | 72.74KB | 240 x 240 |
| 4 | 调平.gif  | <img src=img/Creator_Knomi_Hi/bed_leveling.gif /> | 正在自动调平 | 133.82KB | 240 x 240 |
| 5 | 归零.gif  | <img src=img/Creator_Knomi_Hi/homing.gif /> | 正在回原点 | 149.86KB | 240 x 240 |
| 6 | Z轴对齐.gif  | <img src=img/Creator_Knomi_Hi/z_tilting.gif /> | 正在Z轴对齐 | 172.79KB | 240 x 240 |
| 7 | 清洁喷嘴.gif  | <img src=img/Creator_Knomi_Hi/nozzle_cleaning.gif /> | 正在清理喷嘴 | 82.4KB | 240 x 240 |
| 8 | XY轴共振补偿.gif  | <img src=img/Creator_Knomi_Hi/xy_input_shaper.gif /> | 正在校准共振补偿 | 59.44KB | 240 x 240 |
| 9 | 切割耗材.gif  | <img src=img/Creator_Knomi_Hi/filament_cut.gif /> | 正在切料 | 12.56KB | 240 x 240 |
| 10 | 回抽耗材.gif  | <img src=img/Creator_Knomi_Hi/filament_pull_back_cur.gif /> | 正在抽回当前的耗材 | 108.79KB | 240 x 240 |
| 11 | 挤出旧耗材.gif  | <img src=img/Creator_Knomi_Hi/filament_purge_old.gif /> | 正在冲刷旧的耗材 | 17.51KB | 240 x 240 |
| 12 | 打印成功.gif  | <img src=img/Creator_Knomi_Hi/printing_ok.gif /> | 打印已完成 | 18.4KB | 240 x 240 |
| 13 | 正在打印.gif  | <img src=img/Creator_Knomi_Hi/printing.gif /> | 正在打印中 | 157.43KB | 240 x 240 |

### 屏幕保护

> 为避免屏幕长时间显示同一个静态画面导致的烧屏，Creator Knomi Hi内置了屏幕保护的逻辑，在显示静态画面时，每隔15s显示一次内置的屏保GIF(此GIF不支持自定义)，屏保GIF显示时间为 2s。

* 屏保GIF的效果如下：<br/>
  <img src=img/Creator_Knomi_Hi/screen_saver.gif />
* 以下静态界面中具有屏保逻辑：
  * 无效的 IMG 界面
  * 出厂时的 Hello 界面
  * Wi-Fi 扫描完成界面
  * Wi-Fi 连接失败界面
  * Wi-Fi 密码错误界面
  * 绑定打印机界面
  * 打印机扫描完成界面
  * 打印机未就绪界面


### Wi-Fi & IP 界面

<img src=img/Creator_Knomi_Hi/zh/wifi_ip.jpg width="300"/>

* ①	进入 `Wi-Fi&IP` 界面
* ②	如果您想要重新配置 Creator Knomi Hi 要连接的 Wi-Fi，可以点击 `Wi-Fi 网络配置` 按钮再次进入配置 Wi-Fi的界面重新配置要连接的 Wi-Fi。
  > <font size="2">提示：Creator Knomi Hi 更换所连接的 Wi-Fi 后，Creator Knomi Hi 所在的局域网和 IP 地址可能发生改变，若在设备连接到与 Creator Knomi Hi 所连接的 Wi-Fi 相同的局域网下改变此配置，则设备会与 Creator Knomi Hi 断开通信连接，需要将设备也重新连接到 Creator Knomi Hi 新连接的 Wi-Fi 网络下才可重新建立通信连接。为避免此类情况，建议将设备连接到 Creator Knomi Hi 的 AP 热点，然后再修改此配置。</font>
* ③	配网完成后，推荐客户将手机、电脑等设备连接到与 Creator Knomi Hi 所连接的 Wi-Fi 相同的局域网下，并通过在浏览器地址栏输入 IP 地址访问 Web UI。为避免遗忘 IP地址，可利用手机主屏幕书签功能，方便快速访问。
* ④	若设备连接到与 Creator Knomi Hi 所连接的 Wi-Fi 相同的局域网下，用户可以通过主机名直接访问 Web UI，例如出厂默认的主机名是 `Creator_Knomi_Hi`，我们可以直接访问 [http://CreatorKnomiHi.local](http://CreatorKnomiHi.local) ，不区分大小写。如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用 IP 访问。<br/>
  用户可以自定义主机名，但是请遵守以下规则：<br/>
  * 只能由字母（a-z、A-Z）、数字（0-9）、以及连接符（-）组成， 并且首字符必须是字母。
  * 长度不低于8个字符，不超过32个字符 (在`V1.0.2`及其之前版本的固件上, 请不要超过15个字符, 否则设备会无法启动，需要更新到`V1.0.3`及其之后版本的固件)。

  修改完成后，点击 `设置主机名` 将设置的主机名发送给 Creator Knomi Hi，若出现如下图中的弹窗，说明主机名已经重新设置成功，主机名修改后需要重新启动才可以生效，直接点击弹窗中的 `OK` 按钮，Creator Knomi Hi 会 `立刻重启`，若我们不想立刻重启，可以点击弹窗右上角的 `x` 按钮关闭弹窗。<br/>
  <img src=img/Creator_Knomi_Hi/zh/hostname.jpg width="300"/>

### AP 界面

> <font size="2">若设备是连接到 Creator Knomi Hi 的 AP 热点访问的 Web UI，关闭或者修改 Creator Knomi Hi 的 AP 信息都会导致设备与 Creator Knomi Hi 断开通信连接。为避免此类情况，建议将设备连接到与 Creator Knomi Hi 所连接的 Wi-Fi 相同局域网下再修改此配置。</font>

<img src=img/Creator_Knomi_Hi/zh/ap.jpg width="300"/>

* ①	进入 `AP` 界面
* ②	打开/关闭 Creator Knomi Hi 的 AP 热点。关闭AP热点后将无法连接到 Creator Knomi Hi 的热点去访问 Web UI，关闭前请务必记录 Creator Knomi Hi 在其所处的 Wi-Fi 的IP，以便使用同一 Wi-Fi 的设备通过 IP 访问 Web UI。
* ③	修改 Creator Knomi Hi 的 AP 热点， 默认配置为：<br/>
  Wi-Fi名称: `Creator_Knomi_Hi_xxxxxxxxxxxx`<br/>
  Wi-Fi密码: `987654321`<br/>
  热点 IP: `192.168.254.1`<br/>
  如果仅修改`Wi-Fi名称和密码`，修改完成后不用重启，Creator Knomi Hi会在后台重新创建新的 AP 热点，但是修改`热点 IP`需要重启才会生效。

## 主题设置和IMG分享

### 主题设置 <a id="theme-settings"></a>

<img src=img/Creator_Knomi_Hi/zh/theme_1_2_3_4_5.jpg width="300"/>
<img src=img/Creator_Knomi_Hi/zh/theme_6.jpg width="290"/>
<img src=img/Creator_Knomi_Hi/zh/settings_7_8.jpg width="295"/>

* ①	进入 `主题` 界面
* ②	打印进度显示选择，有以下3种选项：
  * `仅显示百分比`：打印机打印时，屏幕上显示实时的打印进度
  * `仅显示 GIF`：打印机打印时，屏幕上显示代表打印中的 GIF 图片
  * `百分比和 GIF 交替显示`：打印机打印时，屏幕上交替显示实时的打印进度和 GIF 图片，并且每隔 10s 切换一次显示
* ③	设置 GIF 的颜色<br/>
  <img src=img/Creator_Knomi_Hi/zh/picker.jpg width="300"/>
  * a) 点击此按钮，弹出设置GIF颜色的界面
  * b) HSL 取色盘（[HSL是什么？](https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4)）
  * c) HSL的H色相参数，范围值为：0~360°
  * d) HSL的S饱和度参数，范围值为：0~100%
  * e) HSL的L亮度参数，范围值为：0~100%
  * f) 颜色对应的RGB 的16进制值，16进制下每个值的范围均为 0~255（0x00~0xFF）, 可以直接修改此处的值来得到想要的颜色。 如图中所示的 #CCFF4D 意味着：
    * R（红色）：0xCC (204/255)
    * G（绿色）：0xFF (255/255)
    * B（蓝色）：0x4D (77/255)
  * g) 颜色对应的HSL的值，H色相的范围为：0~360°， S饱和度的范围为：0~100%，L亮度的范围为：0~100%，可以直接修改此处的值来得到想要的颜色。如图中所示的 hsla(77, 100%, 65%) 意味着：
    * H（色相）：77°
    * S（饱和度）：100%
    * L（亮度）：65%
  * h) 点击清除设置的颜色，GIF会显示原本的颜色
  * i) 预览所设置颜色的区域
* ④	查看GIF 储存空间用量，由于 Creator Knomi Hi 硬件的限制，所有的 GIF 大小之和不能超过 3MB (3072KB,1MB=1024KB)，超出此大小 Web UI 会阻止更新并弹窗提醒。
* ⑤	每个 GIF 图片单独设置，包括颜色和自定义GIF图片。<br/>
  可以打开/关闭 `预览此GIF` 开关来显示/隐藏 `预览` 按钮，点击 `预览此GIF` 可以使 Creator Knomi Hi 进入预览模式，屏幕上将显示 `预览此GIF` 字样，在屏幕上可查看到自定义 GIF 的效果，若想退出预览模式，请关闭 `预览此GIF` 开关，或者直接跳转到除 `主题` 界面之外的其他界面。<br/>
  自定义GIF注意<br/>
  * Creator Knomi Hi 所使用的屏幕分辨率 `宽 x 高` 为 `240 x 240` 像素，超过此分辨率的图片无法完整显示在屏幕上，所以只允许使用小于或等于此分辨率的GIF。超出此限制的GIF，推荐使用工具重新调整GIF的分辨率，使其符合要求。（例如： [https://www.iloveimg.com/resize-image/resize-gif](https://www.iloveimg.com/resize-image/resize-gif)）。
    * 点击网页中的 `Select images` 按钮选择 GIF 图片，或者直接将GIF图片拖到此界面中
    * 确保勾选了网页右侧的 `Maintain aspect ratio`，避免改变长宽比例导致画面效果不协调
    * 修改 `Width (px):` 和 `Height (px):` 中较大的参数到不超过 240, 如果 `Width (px):` 和 `Height (px):` 参数是一样的，随便修改任意个即可
    * 点击 `Resize IMAGES` 按钮
    * 等待调整完成，然后点击 `Download resized IMAGES` 按钮下载调整后的 GIF.
  * 单个 GIF 的尺寸不能超过 1.5MB(1536KB, 1MB=1024KB)，所有 GIF 一起的尺寸不能超过 3MB(3072KB,1MB=1024KB)。
  * 新的GIF的大小不能超过被替换的GIF大小与剩余空间之和，否则 Web UI 会拒绝替换并弹窗提醒大小超出容量限制。在 `④` 中可以查看剩余空间，在 `⑤` 中可以查看每个GIF的大小。例如：使用新的GIF替换 `待机状态.gif`，出厂的GIF大小为 242.21KB，出厂剩余的容量为 1697.94KB，所以新的GIF大小不能超过 242.21KB + 1697.94KB = 1940.15KB。
* ⑥	将自定义的 GIF 下载导出成IMG文件，方便备份或者分享您的自定义GIF设计。
* ⑦	⑧ 将别人分享的IMG文件更新到Creator Knomi Hi中

### 应用IMG文件到Creator Knomi Hi

* 下载IMG主题文件
  * 下载社区中其他用户分享的Creator Knomi Hi 的 `.img` 文件
* 进入Creator Knomi Hi的Web UI，① `设置` -> ② `选择.img文件`，然后选择刚才下载的 `.img` 文件，等待更新完成后，Creator Knomi Hi 会自动应用并显示新的IMG文件。<br/>
  <img src=img/Creator_Knomi_Hi/zh/img_web_upload.jpg width="300"/>

### 从Creator Knomi Hi导出IMG分享

* 进入Creator Knomi Hi的Web UI。① `主题` -> ② `导出IMG`，等待IMG文件导出完成<br/>
  <img src=img/Creator_Knomi_Hi/zh/img_web_download.jpg width="300"/>

## 恢复出厂设置

> <font size="2">Creator Knomi Hi恢复出厂设置会清空所有的配置，包括语言、连接的WiFi、自定义的主机名、自定义的AP热点名称和密码、绑定的打印机、打印进度显示选择。但是无法将自定义的GIF恢复为出厂GIF，GIF只能通过上传GIF或者更新IMG修改。</font>

### 通过Web UI 恢复出厂设置

* 进入 ① `设置` 界面，点击 ② `恢复出厂设置` 按钮<br/>
  <img src=img/Creator_Knomi_Hi/zh/factory_1.jpg width="300"/>
* 会出现确认的弹窗，点击 ③ `是` 确认恢复出厂设置，Creator Knomi Hi 会恢复出厂设置并重新启动。<br/>
  <img src=img/Creator_Knomi_Hi/zh/factory_2.jpg width="300"/>

### 通过按键恢复出厂设置

长按 Creator Knomi Hi 上的 Boot 按键5秒后，Creator Knomi Hi 会恢复出厂设置并重新启动。<br/>
<img src=img/Creator_Knomi_Hi/boot.jpg width="300"/>

## 固件

### 功能请求

如果您希望在即将发布的Creator Knomi Hi固件中增加产品需求，请在官方Creator Knomi Hi github repo上提交请求，让我们知道。

[请求功能](https://github.com/bigtreetech/Creator_Knomi_Hi/issues)

### 如何更新固件

#### OTA

* 访问Web UI配置界面。
  > <font size="2">如果Creator Knomi Hi已经连接到Wi-Fi中了，可以将设备连接到此Wi-Fi相同的局域网下直接通过IP访问Web UI更新固件。也可以将设备连接到Creator Knomi Hi的AP热点上访问WebUI更新固件。这两种途径任选其一即可</font>
  * 连接到Creator Knomi Hi所在Wi-Fi的局域网下
    * 将设备连接到Creator Knomi Hi所在Wi-Fi的局域网下（Wi-Fi、以太网均可）
    * 在设备的浏览器中输入Creator Knomi Hi的IP或者主机名，主机名出厂默认为：`http://CreatorKnomiHi.local`，如果设备开了VPN, 那么通过主机名访问的方式可能会失效, 此时请直接使用IP访问Web UI配置界面。
  * 连接Creator Knomi Hi的AP热点更新
    * 将设备连接到Creator Knomi Hi的AP热点。以iPhone为例：
        * 在你的主屏幕上，前往 `设置`-> `无线局域网`。
        * 打开 `无线局域网`。你的设备将自动搜索可供使用的无线局域网。<br/>
          <img src=img/Creator_Knomi_Hi/wlan.png width="300"/> <br/>
        * 轻点名称以 `Creator_Knomi_Hi_` 开头的无线局域网，输入默认密码：`987654321`。
        * 连接上 Creator Knomi Hi 的无线局域网后，你会在这个网络旁边看到蓝色勾号，并在显示屏右上方角落看到已连接的无线局域网图标。
    * 连接上 AP 后，理应有 `已连接（需登录/认证）` 的提示，并且点击会进入Web UI配置界面。有时因为网络原因，需要等待10~20秒, 如果等待后仍然无法进入Web UI配置界面, 可以在浏览器中手动输入 [192.168.254.1](http://192.168.254.1) 访问Web UI配置界面。
* 在Web UI配置界面中，进入 ① `设置` 界面, 点击 ② `选择 .bin 文件`, 然后选择要更新的固件, 更新完成后设备会自动重启。<br/>
  <img src=img/Creator_Knomi_Hi/zh/firmware.jpg width="300"/>

#### flash_download_tool (Type-C 线刷)

> <font size="2">注意：Creator Knomi Hi理应可以自由的OTA，此步骤仅在无法OTA时使用。</font>

* 如果电脑上没有 CH340 的驱动，请先下载安装驱动 [CH341SER.EXE](https://www.wch.cn/downloads/CH341SER_EXE.html)
* 下载 [Flash 下载工具](https://www.espressif.com/zh-hans/support/download/other-tools)<br/>
  <img src=img/Creator_Knomi_Hi/zh/download_esp_tool.png width="800"/>
* 下载 [Creator Knomi Hi 的固件](https://github.com/bigtreetech/Creator_Knomi_Hi)
* 按住 Creator Knomi Hi 上的 `Boot` 按键, 然后通过 `Type-C` 插到电脑上，电脑的设备管理器中理应识别出一个新的 COM 端口<br/>
  <img src=img/Creator_Knomi_Hi/boot_fw.jpg width="300"/>
* 打开 `flash_download_tool_3.9.8_6.exe`, 在弹窗中按照下图配置<br/>
  <img src=img/Creator_Knomi_Hi/open_esp_tool.png width="400"/>
* 烧录软件的配置如下图<br/>
  <img src=img/Creator_Knomi_Hi/set_esp_tool.png width="400"/>
  * ①	设置.bin文件的烧录地址, 并且前面的复选框都勾选上
    * `creator_knomi_hi_bootloader.bin` 写入到 `0x1000`
    * `creator_knomi_hi_partitions.bin` 写入到 `0x8000`
    * `creator_knomi_hi_ota_data.bin` 写入到 `0xe000`
    * `creator_knomi_hi_01.00.00.00.bin` 写入到 `0x10000`
    * `creator_knomi_hi_01.00.00.00.img` 写入到 `0x910000`
  * ②	设置COM端口为 Creator Knomi Hi 实际的端口（可在电脑的`设备管理器`->`端口`中查看）, 并且设置一个合适的波特率, 我们推荐使用 `460800`
  * ③	点击 `START` 开始烧录，等待烧录完成, 断电重启即可。


### 固件历史记录 <a id="firmware_history"></a>

#### [01.00.00.00](https://github.com/bigtreetech/Creator_Knomi_Hi/tree/master/Firmware/01.00.00.00)

* 首次发布的出厂固件。

## 技术支持
这个页面对你有帮助吗？如果您对产品使用有任何进一步的问题或遇到其他问题，请随时联系我们的售后电子邮件：`support01@bigtree-tech.com`
