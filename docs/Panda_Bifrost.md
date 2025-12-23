# **Panda Bifrost**
<img src=img/PandaBifrost/product.jpg width="300"/>

## **Revision Log**
| Version   | Date           | Revision      |
|:----------|:---------------|:----------------|
| v1.00     | October 28th, 2025 | Initial Version |

## **Introduction**
The BIQU Panda Bifrost V1.0 is designed to work seamlessly with Bambu Lab printers. It functions as a simple MQTT gateway between the printer and multiple peripheral devices. 

## **Key Features**
* Powered by any USB source (printer, PC, wall charger) via its USB-A port and included Type-C adapter.
* Seamlessly expand your 3D printing setup by connecting up to 20 MQTT devices in minutes.<br>
* Dedicated programming interface — enables convenient DIY firmware flashing and future updates.<br> 

## **Technical Specifications**
* Main Controller: ESP32-S3-WROOM-1-N16R8
* Power Input: USB-A 5 V / 1 A
* Peak Current: 5 V / 0.1 A
* Logic Voltage: 3.3 V
* Product Dimensions:<br>
Panda Bifrost:<br>
<img src=img/PandaBifrost/PCB_size_en.webp width="300"/>

  Printed shell:<br>
<img src=img/PandaBifrost/case_size_en.webp width="300"/>

## **Interface Diagram**

<img src=img/PandaBifrost/interface_en.jpg width="300"/>

## **Assembly Guide**

1.Print the shell:

Recommended layer height: 0.15 mm; No supports required

2.Install the Panda Bifrost:

Place the Panda Bifrost PCBA into the bottom shell.

*Note*: Ensure correct orientation and a secure fit.

<img src=img/PandaBifrost/install1_en.jpg width="300"/>

<img src=img/PandaBifrost/install2_en.jpg width="300"/>

3.Attach the top cover:

Align the BQ logo on the cover with the bottom shell.

Press down until you hear a click.

<img src=img/PandaBifrost/install3.jpg width="300"/>

<img src=img/PandaBifrost/install4.jpg width="300"/>

## **Initial Connection**

### Connecting to the Device

* The device will create a hotspot named **"Panda\_Bifrost\_XXXXXXXXXXXX"**, with the default password **"987654321"**.
* Connect to this hotspot using your mobile phone or computer. <br>
    <img src=img/PandaBifrost/ap_select.webp width="300"/>

* Open your browser and visit **[http://192.168.254.1/](http://192.168.254.1/)**
* Select your preferred language.<br>
    <img src=img/PandaBifrost/language_en.webp width="300"/><br>
After the device scans for available Wi-Fi networks, select your target network, enter its password, and click **Connect**.<br>
    <img src=img/PandaBifrost/ap_connect_en.webp width="300"/>

### Binding the Printer

* Click **Scan**.
* Enter the access code, then click **Connect**. <br>
    <img src=img/PandaBifrost/bind_printer_en.webp width="300"/>

## **Binding Other Panda Devices**

### Step 1: Bind a Printer to This Device

Once a printer is bound, the device will broadcast its information over the local network, simulating a printer named **"PandaBifrost"**.

~~~
Location: xxx.xxx.xxx.xxx
USN: B1098A316C65xxx
DevConnect.bambu.com: lan
DevModel.bambu.com: C12
DevName.bambu.com: PandaBifrost
DevVersion.bambu.com: 01.00.00.00
~~~

### Step 2: For Other Panda Devices

* Open the Web UI, click **Scan**, and select **"PandaBifrost"**.
* Enter the access code from the printer you connected in Step 1.
* Click **Bind**. <br>
    <img src=img/PandaBifrost/as_printer_en.webp width="400">

## **Usage Limitations**

### When Connected to Panda Touch

* Cloud mode is not supported.
* Viewing SD card files from the printer is not supported.
* Starting print jobs from a USB drive is not supported.

### Maximum Number of Clients

* Supports up to **20 devices** connected simultaneously.

## **Firmware**

### Firmware History
#### [01.00.00.00](https://github.com/bigtreetech/PandaBifrost/blob/master/Firmware/01.00.00.00/panda_bifrost_01.00.00.00.bin) 

* Initial release.

### Feature Requests

We welcome your ideas for future firmware improvements.

Please submit your suggestions on the official Panda Bifrost GitHub repository.

[Submit a Feature Request](https://github.com/bigtreetech/PandaBifrost/issues)

## **Technical Support**
Was this page helpful? If you have any questions or encounter issues during use, please contact our after-sales support team at **[service001@biqu3d.com](mailto:service001@biqu3d.com)**.

## **Navigation**
- [BIQU Official Website](http://biqu3d.com)  
- [BIGTREETECH Official Website](http://bigtree-tech.com)  
- [Online Store](https://biqu.equipment)  
- [Community Forum](https://community.biqu3d.com)  
