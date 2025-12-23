# **Panda Breath**

<img src=img/panda_breath/image.jpg width="600"/>

- **Product Link**: [Buy Here](https://biqu.equipment/products/biqu-panda-breath-smart-air-filtration-and-heating-system-with-precise-temperature-regulation?_pos=1&_sid=3a4ce2d06&_ss=r&variant=42353406279778) 

- **Print files are available on**: [GitHub](https://github.com/bigtreetech/Panda-Turbo-Kit/tree/master/3D%20Model)

## Revision Log
| Version   | Date           | Revision      |
|:----------|:---------------|:----------------|
| v1.00     | December 12th, 2025 | Initial Version |

## Introduction
The BIQU Panda Breath is a chamber heater and filter for Bambu Lab printers. It uses a 300W PTC heater to warm the chamber, which helps prevent warping, strengthens layer adhesion in engineering materials (ABS, ASA, PC, PA...), and improves first-layer adhesion for all filaments.
<br>Its dual HEPA and carbon filters remove fine particles and VOCs from the air during printing, reducing odors and improving air quality.

## Key Features
- **Easy Firmware Updates**: Includes quick-flash interface for DIY firmware burning and future upgrades.
- **Main Power Switch**: Convenient one-touch total power cutoff.
- **Quick-Access Controls**: Dedicated function buttons for streamlined operation.
- **Automatic Start/Stop**: Intelligently manages chamber heating and air filtration by monitoring the print bed’s temperature in real time. 
- **High-Temperature Capability**: Reaches up to 60°C chamber temperature, ideal for engineering-grade filaments.
- **Wireless Control**: Onboard ESP32 WiFi module enables remote operation.
- **Rapid Heating**: High-power PTC heater ensures fast temperature ramp-up.
- **Wide Voltage Compatibility**: Broad input voltage range maximizes printer compatibility.

## Technical Specifications
| Product Name       | BIQU Panda Breath                                        |
| --------- | ------------------------------------------- |
| Compatibility        | For Bambu Lab P1S, P1P, X1C, A1 3D  Printers <br>*Supports Klipper printers (Snapmaker U1, Voron, and more). Currently requires manual heating control; automatic operation coming soon via firmware update.*                               |
| Main Controller        | ESP32-C3-MINI                               |
| Power Input      | AC110V–220V                                 |
| PTC Heater Power  | 300W                                        |
| Fans | 2pcs 75×75×30mm, 7.8W rated, 5000 RPM, 19.2 CFM max airflow |
| Standby Power      | 0.45W                                       |
| Operating Power      | 330W                                        |
| Logic Voltage     | 3.3V                                        |
| Power Cable Length      | 1.1m                                        |
| PTC Temperature Limit    | 105℃                                        |
| Maximum Chamber Temperature    | 60℃                                         |

**Dimensions**

<img src=img/panda_breath/size.jpg width="400"/>

## Installation Guide
**Preparation**
- Safety First: Power off and unplug the printer completely
- Print the Riser: Use your 3D printer to print the Riser. [Download print files here](https://github.com/bigtreetech/Panda-Turbo-Kit/tree/master/3D%20Model).

<img src=img/panda_breath/print_file.webp width="250"/>

**Installation Steps for P Series**

1. Remove the top glass panel and place the printed riser on the top of the printer.

<img src=img/panda_breath/Pinstall01.jpg width="500"/>

2. Locate and remove the mounting screw at the center of the right-side crossbar using a screwdriver.

<img src=img/panda_breath/Pinstall02.jpg width="500"/>

3. Align the bottom mounting tabs of Panda Breath with the printer's alignment posts. 

<img src=img/panda_breath/Pinstall03.jpg width="500"/>

4. Fasten Panda Breath using the included M3×8 self-tapping screws.

>**Important**<br>
 Tighten all screws securely, but avoid using excessive force. Over-tightening can strip the threads or crack the housing.

<img src=img/panda_breath/Pinstall04.jpg width="500"/>

5. Route and secure the power cable using the included cable clips, following the reference diagram.

<img src=img/panda_breath/Pinstall05.jpg width="500"/>

6. Pass the cable through the rear opening in the printed riser.

<img src=img/panda_breath/Pinstall06.jpg width="500"/>

7. Unplug the printer's original power cable and connect the included Y-cable as shown in the diagram.

<img src=img/panda_breath/Pinstall07.jpg width="500"/>

8. Remove the backing from the 2 included aluminum foil insulation pads and stick them to the bottom and right side of the left fan inside the printer to prevent the exterior from getting too hot during prolonged use.

<img src=img/panda_breath/Aluminum_Foil.jpg width="500"/>

Installation Complete!

**Installation Steps for X Series** 

1. Remove the top glass panel and place the printed riser on the top of the printer.

<img src=img/panda_breath/Pinstall01.jpg width="500"/>

2. Prepare the Mounting Insert

Print the mounting insert (*please contact customer service to receive the print files*), remove the factory screw from the center of the right-side crossbar, and insert the printed part into the crossbar channel.

<img src=img/panda_breath/Xinstall01.jpg width="300"/>

<img src=img/panda_breath/Pinstall02.jpg width="500"/>

<img src=img/panda_breath/Xinstall02.jpg width="500"/>

>**Early Production Units**: If your X1 has factory-installed threaded posts on the right side (early batches), use the included M3×8 machine screws directly—no printed insert needed.

3. Align Panda Breath's bottom tabs with the alignment posts and fasten using the included self-tapping screws. Avoid over-tightening, as previously mentioned.

<img src=img/panda_breath/Pinstall03.jpg width="500"/>

<img src=img/panda_breath/Pinstall04.jpg width="500"/>

**Remaining Steps: Follow P Series Steps 5–8 for cable management and power connection.**

## Interface and Button Functions

<img src=img/panda_breath/BUTTON.jpg width="600"/>

<img src=img/panda_breath/BUTTON02.jpg width="500"/>

Press a mode button to switch modes; the selected button’s backlight will turn on.

Example:
After power-on, the Panda Breath enters Auto Mode by default (Auto button: green).
Press On to switch to Forced On Mode (On button: yellow).

While Panda Breath is operating, the Off button backlight remains on. It turns off automatically when the device stops, indicating the operating status.

## Initial Connection

<a id="first-connection"></a>

After the first power-on, the Panda Breath defaults to Auto Mode, and the green indicator on the button turns on.
Note: Auto Mode requires the Panda Breath to be paired with a printer.

### WiFi Connection Guide

<a id="ap-connect"></a>

- Connecting to the Panda Breath's WiFi_AP Hotspot

    - Connect to the Panda Breath AP hotspot: `Panda_Breath_XXXXXXXXXX`. The default password is `987654321`.

        <img src=img/PandaBreath/ap.webp width="300"/>
  
- Accessing the AP Page

    - After connecting to the AP, open a browser on your computer and enter the default IP address: `192.168.254.1`. On mobile devices, the Panda_Breath Web UI will automatically appear, or you can manually enter the IP address in the browser: `192.168.254.1`. Below, the mobile version will be used as an example for explanation. The web version operates similarly. For Mobile:

- Select Language (Default: English)

    - After selecting a language, tap `Next`

        <img src=img/PandaBreath/en/language.webp width="300"/>

<a id="wifi-connect"></a>

- WiFi Connection Page

    - After initial setup or a factory reset, the interface will automatically scan for available Wi-Fi networks. If your network is not listed, tap Scan to refresh the list manually.

        <img src=img/PandaBreath/en/wifi_scan.webp width="300"/>

    - A confirmation message will appear when the scan is complete.

        <img src=img/PandaBreath/en/wifi_scan_ok.webp width="300"/>

    - Select the WiFi network you want to connect to.

        <img src=img/PandaBreath/en/wifi_list.webp width="300"/>

    - Type your password and tap the `eye icon` if you'd like to see the password you've entered. 

        <img src=img/PandaBreath/en/wifi_connect.webp width="300"/>

    - Tap Connect. You will then see the WiFi connection page with the status `WiFi connecting...`

        <img src=img/PandaBreath/en/wifi_connecting.webp width="300"/>

    - Wait a moment, and a WiFi connection status pop-up will appear.

        - Connection Failed:

            <img src=img/PandaBreath/en/wifi_failed.webp width="300"/>

        - Connection Successful: You can either [bind the printer](#printer-bind) and proceed to the printer interface or tap Cancel to stay on the WiFi page.

            <img src=img/PandaBreath/en/wifi_ok.webp width="300"/>

<a id="printer-bind"></a>

### Printer Binding Page

- Features Overview

    <img src=img/PandaBreath/en/printer.webp width="300"/>

    - ① Printer Page Selection: When you tap the icon, it will turn red to indicate that you are on the Printer page.

    - ② Scan for Printers on the Same Local Network

    - ③ Select the Detected Printer

    - ④ Enter Printer's SN Code

    - ⑤ Enter Printer's Access Code

    - ⑥ Enter Printer's IP Address

    - ⑦ Confirm to Bind This Printer

- How to Bind a Printer (Using P1P as an Example)

    - Tap `Scan` button. After a short wait, a pop-up will appear confirming that the scan was successful.

        <img src=img/PandaBreath/en/printer_scan_ok.webp width="300"/>

    - Select the printer from the list. The printer's SN code and IP address will automatically fill in.

        <img src=img/PandaBreath/en/printer_list.webp width="300"/>

    - Enter the printer's `Access Code`

        * Find the access code in the printer's settings, enter it in the box, and tap Bind to successfully bind the printer.

            <img src=img/PandaBreath/en/p1_1_2_3.webp width="600"/>

            <img src=img/PandaBreath/en/p1_4_5.webp width="600"/>

            <img src=img/PandaBreath/en/printer_bind.webp width="300"/>

            <img src=img/PandaBreath/en/bind_ok.webp width="300"/>


## Introduction to Each Page

### WiFi Page

<img src=img/PandaBreath/en/wifi_ip.webp width="300"/>

- ① WiFi Page Selection: When you tap the icon, it will turn red to indicate that you are on the WiFi page.

- ② Current WiFi Connection Status

- ③ IP Address Icon: Tap the icon to display a pop-up. If the IP field is blank, ensure Panda Breath shows "Connected." If it says, "Not Connected," check your network settings.

- ④ IP Address Display: Entering this IP in your browser will take you to the Web page, as long as you're on the same local network.

- ⑤ WiFi Network Configuration Button: Tap to go to the [WiFi connection page](#wifi-connect)

- ⑥ Host Name: The default hostname is "PandaBreath." If you forget the IP, you can use the hostname followed by "local" in the browser (e.g., http://PandaBreath.local). To modify the hostname, tap the text box to edit it, then tap "Set Hostname" to confirm.

- ⑦ Confirm Hostname Modification

### AP Page

<img src=img/PandaBreath/en/wifi_ap.webp width="300"/>

- ① AP Page Selection: When you tap the icon, it will turn red to indicate that you are on the AP page.

- ② AP Hotspot Switch

- ③ AP Name: Default is `Panda_Breath_XXXXXXXXXX`

- ④ AP Password: Default is `987654321`

- ⑤ Hotspot IP: Default Hotspot IP is "192.168.254.1." If your router's IP range is "192.168.254.xxx," an IP conflict will prevent the device from binding to the printer. Change the Panda Breath hotspot IP to a different range.

- ⑥ Confirm Button: Tapping this button will restart the device. After the restart, you can connect to the AP hotspot. ([How to connect to the AP hotspot](#ap-connect))

### Settings Page

<img src=img/PandaBreath/en/settings.webp width="300"/>

- ① Settings Page Selection: When you tap the icon, it will turn red to indicate that you are on the Settings page.

- ② Choose Language (Default: English)

- ③ Show Current Firmware Version

- ④ Firmware OTA Update: Select a `.bin` file for the update.

    - Tap the `Select .bin File` button to choose the bin file that requires OTA.

        <img src=img/PandaBreath/en/ota_bin.webp width="300"/>

    - Wait for the progress to complete. The device will automatically restart once the update is finished.

        <img src=img/PandaBreath/en/ota_progress.webp width="300"/>

        <img src=img/PandaBreath/en/ota_ok.webp width="300"/>
  
- ⑤ Tap to Confirm [Restore Factory Settings](#first-connection)

### Control Page

- Features Overview

    <img src=img/PandaBreath/en/panel.webp width="300"/>

    - ① Real-time display of the chamber temperature.
    - ② Turn the Panda Breath on or off.
    - ③ Select the operation mode:
      - Auto Mode: When paired with a printer, the device follows the printer's heated bed temperature settings to perform the corresponding functions.
      - Forced-On Mode: No need to pair with a printer; the device heats directly to the set temperature.
      - Filament Drying Mode: Set a timer to dry the filament.

- Auto Mode

    - ④ Target chamber temperature.
    - ⑤ Filter fan activation temperature (when the printer’s heated bed temperature exceeds this value, Panda Breath automatically turns on the filter fan).
    - ⑥ Chamber heating activation temperature（when the printer’s heated bed temperature exceeds this value, Panda Breath automatically starts heating and filtration.）

- Forced On Mode

    <img src=img/PandaBreath/en/force_on.webp width="300"/>

    -  Chamber target temperature (same value as the target temperature in Auto Mode).

- Filament Drying Mode

    <img src=img/PandaBreath/en/drying.webp width="300"/>

    - ① Target chamber temperature and drying countdown timer.
    - ② Quick parameter setting buttons:
        - PLA : Target temperature 60°C, drying time 12 hours.
        - PETG: Target temperature 55°C, drying time 12 hours.
        - Custom: Manually adjusted values will be saved as custom settings.
    - ③ Start/Stop drying.

## Firmware History

### [V1.0.0](https://github.com/bigtreetech/Panda-Breath/tree/master/Firmware/v1.0.0)

- First-release factory firmware.

## Feature Requests

If you'd like to see certain features in the upcoming firmware release, please submit a feature request on the official GitHub repository. [Feature Requests.](https://github.com/bigtreetech/Panda-Breath/issues)

## Important Notice

Failure to follow the above instructions or any improper installation may void the product warranty and could result in damage to the product. BIQU is not liable for any damage or loss resulting from the misuse or incorrect installation of this product.

## Navigation
- [BIQU Official Website](http://biqu3d.com)  
- [BIGTREETECH Official Website](http://bigtree-tech.com)  
- [Online Store](https://biqu.equipment)  
- [Community Forum](https://community.biqu3d.com)  

