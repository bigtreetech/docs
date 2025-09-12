# Panda Branch Plus

<img src=img/PandaBranchPlus/zhuban.png width="800"/>

## 产品简介

Panda Branch Plus 为您的 3D 打印生态系统提供先进的模块化电源管理。这套完整的系统配备强大的 24V/2.8A 适配器，配备 10 个独立电源通道（5 个 MX3.0 端口和 5 个 Type-C 端口），可实现灵活的设备连接，所有连接均可通过WebUI进行切换控制。其内置的 ESP32 处理器和增强型 MQTT 网关技术突破了传统的连接限制。独有的 5V/5A Type-C 输出可为您的 Panda Hub Plus 直接供电。内置的可拆卸外壳使安装过程轻松便捷——只需将外壳安装到位，即可拥有一个即用型电源解决方案，确保所有连接设备稳定、无忧地运行。凭借内置的智能配电和网络可靠性，您设备中的每个组件都能获得持续的全功率性能。

## 产品特点

1、供电管理中心，多达10个单独控制的电源输出口

2、自带MQTT网关，拓展可连接子设备数量，联网无忧 

3、自带高功率适配器，24V，2.8A，提供更稳定电源

4、5个Type-C输出口，5个MX3.0输出口 

5、自带ESP32-S3模组，WIFI智能控制 

6、标配安全保护电路，ESD保护、过流保护、短路保护 

## 产品参数

外包装尺寸：256x124.5x63mm

主板尺寸：180x20mm

输入口: DC5.5x2.1

输出: 5x Type-C（4x1.5A，1x5A），5x MX3.0 2pin （5x2A）

输入电压：DC 24V

适配机型：拓竹X1、P1和A1系列

## 接口图

<img src=img/PandaBranchPlus/jiekou.jpg width="800"/>

## 安装说明

请前往[Github链接](https://github.com/bigtreetech/PandaBranchPlus/tree/master/Print_Files
)，根据不同机型下载所需的外壳文件并打印外壳。

### 安装步骤

#### A1mini机型

* 将PCB板放入打印好的上下壳内，用KM3*14自攻螺丝固定好。

    <img src=img/PandaBranchPlus/a1mini1.png width="800"/>

* 将打印好的支架放入如图对应的位置，用M3*15机牙螺丝固定,随后将第一步中装配好上下壳放入打印支架顶端的槽中，再将打印的手拧螺丝拧紧。

    <img src=img/PandaBranchPlus/a1mini2.jpg width="800"/>

#### A1机型

* 将PCB板放入打印好的上下壳内，用KM3*14自攻螺丝固定好。

    <img src=img/PandaBranchPlus/a11.jpg width="800"/>

* 将打印好的支架放入如图对应的位置，用相应的打印件或者M3*15机牙螺丝固定。

    <img src=img/PandaBranchPlus/a12.jpg width="800"/><br>
    ​（该方式直接用打印件固定到A1的Z轴上,放入第一步装配好的上下壳，再拧上打印的手拧螺丝）

    <img src=img/PandaBranchPlus/a13.jpg width="800"/><br>
    （该方式需要用两个M3*15机牙螺丝固定在A1的Z轴上）

#### P1/X1机型

* 将PCB板放入打印好的上下壳内，用KM3*14自攻螺丝固定好。

    <img src=img/PandaBranchPlus/p11.jpg width="800"/>

* 将打印好的支架放入如图对应的位置，用M3*15机牙螺丝固定。

    <img src=img/PandaBranchPlus/p12.jpg width="800"/>

    <img src=img/PandaBranchPlus/p13.png width="800"/><br>
    （该方式需要用两个M3*15机牙螺丝固定在机器的右后方或者上后方）

## 首次使用

### 配网
* 设备会产生一个热点:"Panda_Branch_Plus_XXXXXXXXXXXX"，密码默认为"987654321"

* 使用手机或者电脑连接该热点 <br>
    <img src=img/PandaBranchPlus/ap_select.png width="300"/>  

* 在浏览器输入:http://192.168.254.1/
* 选择语言<br>
    <img src=img/PandaBranchPlus/language.png width="300"/> 
  
* 扫描WiFi后，选择需要连接的WiFi名称，输入wifi密码后点击连接<br>
    <img src=img/PandaBranchPlus/ap_connect.png width="300"/>   

### 绑定打印机
* 点击扫描打印机
* 输入访问码后点击连接<br>
    <img src=img/PandaBranchPlus/bind_printer.png width="300"/>

## 开关控制
支持通过WEB UI控制USB端口和24V端口的开和关<br>
    <img src=img/PandaBranchPlus/port_control.png width="300">

## 其他Panda设备如何绑定该设备
### 步骤 1: 该设备先绑定一台打印机 
在绑定一台打印机后，该设备会在局域网广播设备信息，模拟一台打印机，打印机名称为"PandaBranchPlus"。
~~~
Location: xxx.xxx.xxx.xxx
USN: B1098A316C65xxx
DevConnect.bambu.com: lan
DevModel.bambu.com: C12
DevName.bambu.com: PandaBranchPlus
DevVersion.bambu.com: 01.00.00.00
~~~
### 步骤 2: 其他Panda设备

* 打开WEB UI, 电机 **扫描打印机**, and select **"PandaBranchPlus"**。
* 输入打印机上的访问码，访问码与打印机上的一模一样。
* 点击 **绑定**。 <br>
  <img src=img/PandaBranchPlus/as_printer.png width="500"> 

## 使用限制
### 与PandaTouch连接
* 不支持云模式
* 不支持显示打印机的SD卡文件
* 不支持通过USB盘发起打印任务
### 最大客户端数量
* 20台

## 固件

### 固件历史
#### [01.00.00.00](https://github.com/bigtreetech/PandaBranchPlus/blob/master/Firmware/01.00.00.00/panda_branch_plus_01.00.00.00.bin) 

* 初始发布的工厂固件版本。
 
## 功能请求
我们欢迎您为未来的固件更新提供建议。请在官方 Panda Branch Plus GitHub 仓库中提交您的功能请求。

[请求功能](https://github.com/bigtreetech/PandaBranchPlus/issues)

## 技术支持
这个页面对您有帮助吗？如果您对产品使用有任何疑问或遇到问题，请联系我们的售后团队：<br>service001@biqu3d.com