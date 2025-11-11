# **Panda Bifrost**
<img src=img/PandaBifrost/product.jpg width="300"/>

## **修订历史**
| 版本号   | 日期              | 更新内容   |
|:---------|:------------------|:-----------|
| v1.00    | 2025年10月28日      | 初始版本   |

## **产品概述**
BIQU Panda Bifrost V1.0是深圳必趣科技有限公司推出的一款用于与拓竹打印机联动的产品，可做为简易网关与诸多外设进行通讯。

## **产品特点**
* USB-A公头接口供电，方便使用；
* 可同时连接20个独立外设，通过无线进行控制；
* 预留快速烧录接口，方便客户DIY烧录固件，以及后续固件升级；

## **产品参数**  
* 主控：ESP32-S3-WROOM-1-N16R8  
* 电源输入：USB-A 5 V 1 A  
* 峰值电流：5 V 0.1 A  
* 逻辑电压：3.3 V
* 产品尺寸：<br>
Panda Bifrost:<br>
    <img src=img/PandaBifrost/PCB_size.png width="300"/>

   外壳打印件：<br> 
  <img src=img/PandaBifrost/case_size.png width="300"/>


## **接口示意图**

<img src=img/PandaBifrost/interface.jpg width="300"/>

## **组装指南**
1.打印外壳，建议层高 0.15 mm，无需支撑结构。
2.将 Panda Bifrost 主板安装到底壳内，注意安装方向及主板是否完全就位。

    <img src=img/PandaBifrost/install1.jpg width="300"/><br>
    <img src=img/PandaBifrost/install2.jpg width="300"/>

3.将带有 BQ 图案的上盖对准底壳，按压至听到“咔哒”声即可。

    <img src=img/PandaBifrost/install3.jpg width="300"/><br>
    <img src=img/PandaBifrost/install4.jpg width="300"/>

## **首次配置**

### 配网

* 设备会产生一个热点:**"Panda\_Bifrost\_XXXXXXXXXXXX"**, 默认的密码为 **"987654321"**。
* 使用手机或者电脑连接该热点。 <br>
    <img src=img/PandaBifrost/ap_select.png width="300"/>

* 打开浏览器输入: **[http://192.168.254.1/](http://192.168.254.1/)**
* 选择语言 <br>
    <img src=img/PandaBifrost/language.png width="300"/><br>

* 在扫描Wi-Fi后，选择目标网络，输入密码，点击“连接”。<br>
    <img src=img/PandaBifrost/ap_connect.png width="300"/>

### 绑定打印机

* 点击 **扫描**.
* 输入访问码，然后点击 **连接**. <br>
    <img src=img/PandaBifrost/bind_printer.png width="300"/>

## **绑定其他Panda设备**

### 步骤1: 绑定一台打印机到这台设备

绑定完一台打印机后，设备会模拟一台打印机广播自身的信息, 名称为**"PandaBifrost"**。

~~~
Location: xxx.xxx.xxx.xxx
USN: B1098A316C65xxx
DevConnect.bambu.com: lan
DevModel.bambu.com: C12
DevName.bambu.com: PandaBifrost
DevVersion.bambu.com: 01.00.00.00
~~~

### 步骤2: 在其他Panda设备上

* 打开WEB UI, 点击 **扫描**, 然后选择 **"PandaBifrost"**.
* 输入访问码，访问与步骤1所输入的相同.
* 点击 **绑定**. <br>
    <img src=img/PandaBifrost/as_printer.png width="400">

## **使用限制**

### 使用PandaTouoch时

* 不支持云模式。
* 不支持预览打印机的SD卡文件。
* 不支持从U盘发起打印任务

### 连接客户端数量限制

* 最大支持 **20台设备**.

## **固件**

### 固件历史
#### [01.00.00.00](https://github.com/bigtreetech/PandaBifrost/blob/master/Firmware/01.00.00.00/panda_bifrost_01.00.00.00.bin) 

* 首次发布.

### 请求功能

我们欢迎您对未来固件增强提出建议。请在Panda Bifrost官方GitHub存储库上提交您的功能请求。

[Request Features](https://github.com/bigtreetech/PandaBifrost/issues)

## **技术支持**
这个页面对您有帮助吗？如果您对产品使用有任何疑问或遇到问题，请联系我们的售后团队：[service001@biqu3d.com](mailto:service001@biqu3d.com).

## **相关导航**
- [BIQU 官方网站](http://biqu3d.com)  
- [BIGTREETECH 官方网站](http://bigtree-tech.com)  
- [官方商城](https://biqu.equipment)  
- [用户社区](https://community.biqu3d.com)  