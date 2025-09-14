# **Panda Lux RGB PX**

<img src=img/PandaLuxRGBPX/panda_lux_rgb.jpg width="400"/>

* **Product Link**: [Click to Buy](https://bit.ly/3Iejmk0)

* **GitHub**: [Repository](https://github.com/bigtreetech/Panda-Lux-RGB)


## **Revision Log**

| Version | Date         | Update Notes    |
| :------ | :----------- | :-------------- |
| v1.00   | Sept 8, 2025 | Initial Release |


## **Introduction**

Panda Lux RGB PX – Engineered for the Bambu Lab P1/X1 series, this dual-function light combines bright white LEDs for clear print monitoring with customizable RGB lighting for status alerts and aesthetic enhancement. The perfect-fit design ensures optimal visibility while adding style to your workspace.


## **Feature Highlights**

- **High-Level Brightness**

    Provide clear illumination for the print area.

- **Smart Lighting with Auto On/Off**

    Features automatic lighting sync via a built-in ESP32 chip and network connectivity for operation that seamlessly powers on and off with your printer.

- **Multiple Lighting Effects**

    Choose from various dynamic lighting patterns with 16 million colors to perfectly complement your workspace aesthetic.

- **Adjust Everything to Your Preference**

    Customize your lighting effortlessly. Manage effects, color, brightness, and speed via an intuitive web interface.


## Specifications

- **Product Name**: Panda Lux RGB PX

- **Color Temperature**: RGB + 6000K White Light

- **Lighting Effects**: Static, Breathing, Strobing, Wave, Marquee, Color Cycle, Rainbow, Warning: Hot, H2D Style Status Indicator

- **Web UI + BIQU APP Control**: √

- **Original Screen & APP Control (Bambu Handy + Bambu Studio)**: √

- **Material**: Aluminum Alloy

- **Magnetic Mounting**: √

- **LED Quantity**: 16 High Brightness RGBW LEDs

- **Voltage**: 5V

- **Current**: Standby 0.07A, Peak 0.71A

- **Waterproof**: No

- **Lifespan**: Up to 36,000 Hours

- **Product Size**: 273mm/10.75in

### Printer Compatibility

- **For Bambu Lab P1P, P1S**: Direct install and use.

- **For X1C and X1E**: Requires a separate 2 m USB cable.

    For X1C and X1E printers, it is recommended to use the Panda Branch as the power source for optimal cable routing. Otherwise, a separate 5V USB power adapter is required.*

### USB Product Compatibility

- **USB-A to USB-C**: Panda Hub, Panda Branch

- **USB-C to USB-C**: Panda Hub Plus, Panda Branch Plus


## Installation

### Installation on P1 Series Printer

* Print the control board housing and place the control board inside the printed housing. Secure it with screws.

    <img src=img/PandaLuxRGBPX/install_1.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_2.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_3.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_4.jpg width="300"/> 

* Pluig in the included USB-A to USB-C cable.

   <img src=img/PandaLuxRGBPX/install_5.jpg width="300"/> 

* Attatch the Panda LUX RGB PX inside the printe.

    <img src=img/PandaLuxRGBPX/install_6.jpg width="300"/>

    Plug in the USB-A connector of the control board into the printer’s USB-A port.

    <img src=img/PandaLuxRGBPX/install_7.jpg width="300"/>

* Remove part of the tape from the printer and follow the diagram to route the Panda LUX RGB PX power cable into the machine.

   <img src=img/PandaLuxRGBPX/install_8.jpg width="300"/>

* Insert the Panda LUX RGB PX power cable into the control board, then secure the control board inside the machine to complete the installation.

   <img src=img/PandaLuxRGBPX/install_9.jpg width="300"/>

### Installation on X1 Series Printer

* Print the control board housing and place the control board inside the printed housing. Secure it with screws.

    <img src=img/PandaLuxRGBPX/install_1.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_2.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_3.jpg width="300"/>

    <img src=img/PandaLuxRGBPX/install_4.jpg width="300"/>

* Plug the 2m USB-A to USB-C cable (sold separately).

   <img src=img/PandaLuxRGBPX/en/install_10.jpg width="300"/>

* Attach the Panda Lux RGB PX magnetically inside the printer. Insert the power cable of the Panda Lux RGB PX into the control board and secure the control board inside the printer as shown.

   <img src=img/PandaLuxRGBPX/install_11.jpg width="300"/>

* Route the USB-A to USB-C cable along the printer upper frame, loosen the screws on the back of the cover and lift the cover, pass it through the hole, and power it using Panda Branch or a separate 5V USB power adapter.

   <img src=img/PandaLuxRGBPX/install_12.jpg width="300"/>

   <img src=img/PandaLuxRGBPX/install_13.jpg width="600"/>


## First Connection

<a id="first-connection"></a>

When you power up for the first time or restore factory settings, you'll see a blue flowing light, indicating that Panda Lux RGB PX is not yet bound to the printer.

### WiFi Connection Guide

<a id="ap-connect"></a>

- Connecting to the Panda Lux RGB PX's WiFi_AP Hotspot

    - Connect to the Panda_Lux_RGB PX AP hotspot: `Panda_Lux_RGB_XXXXXXXXXX`. The default password is `987654321`.

        <img src=img/PandaLuxRGBPX/ap.png width="300"/>

- Accessing the AP Webpage

    - After connecting to the AP, open a browser on your computer and enter the default IP address: `192.168.254.1`. On mobile devices, the Panda Lux RGB PX Web UI will automatically appear, or you can manually enter the IP address in the browser: `192.168.254.1`.

- Select Language (Default: English)

    - After selecting a language, tap `Next`.

        <img src=img/PandaLuxRGBPX/en/language.jpg width="300"/>

<a id="wifi-connect"></a>
  
- WiFi Connection Page

    - After the initial setup or a factory reset, this page will automatically scan for nearby Wi-Fi networks, or you can manually tap the scan button.

        <img src=img/PandaLuxRGBPX/en/wifi_scan.jpg width="300"/>

    - Once the scan is complete, a pop-up will appear notifying you that the scan is finished.

        <img src=img/PandaLuxRGBPX/en/wifi_scan_ok.png width="300"/>

    - Select the WiFi network you want to connect to.

        <img src=img/PandaLuxRGBPX/en/wifi_list.jpg width="300"/>

    - Type your password and tap the `eye icon` if you'd like to see the password you've entered.

        <img src=img/PandaLuxRGBPX/en/wifi_connect.jpg width="300"/>

    - tap Connect, and the interface will switch to the WiFi connection page, showing `WiFi Connecting...`.

        <img src=img/PandaLuxRGBPX/en/wifi_connecting.png width="300"/>

    - Wait a moment, and a WiFi connection status pop-up will appear.

        - Connection Failed:

            <img src=img/PandaLuxRGBPX/en/wifi_failed.png width="300"/>

        - Connection Successful: You can either [bind the printer](#printer-bind) and proceed to the printer interface or tap `Cancel` to stay on the WiFi page.

            <img src=img/PandaLuxRGBPX/en/wifi_ok.png width="300"/>

<a id="printer-bind"></a>

### Printer Binding Page

- Feature Introduction

    <img src=img/PandaLuxRGBPX/en/printer.jpg width="300"/>

    - ① Printer Page Selection: When you tap the icon, it will turn red to indicate that you are on the Printer page.

    - ② Scan for Printers on the Same Local Network

    - ③ Select the Detected Printer

    - ④ Enter Printer's SN Code

    - ⑤ Enter Printer's Access Code

    - ⑥ Enter Printer's IP Address

    - ⑦ Confirm to Bind This Printer

- How to Bind a Printer
 
    - Tap `Scan` button. After a short wait, a pop-up will appear confirming that the scan was successful.

        <img src=img/PandaLuxRGBPX/en/printer_scan_ok.png width="300"/>

    - Select the printer from the list. The printer's SN code and IP address will automatically fill in.

        <img src=img/PandaLuxRGBPX/en/printer_list.png width="300"/>

    - Enter the printer's `Access Code`

        * Find the `Access Code` in the printer (Using P1 series printer as an Example)

            <img src=img/PandaLuxRGBPX/en/p1_1_2_3.png width="600"/>

            <img src=img/PandaLuxRGBPX/en/p1_4_5.png width="600"/>

        * Enter `Access Code` in the input box, and tap `Bind` to bind the printer.

            <img src=img/PandaLuxRGBPX/en/printer_bind.png width="300"/>

            <img src=img/PandaLuxRGBPX/en/bind_ok.png width="300"/>


## Introduction to Each Page

### WiFi Page

<img src=img/PandaLuxRGBPX/en/wifi_ip.png width="300"/>

- ① WiFi Page Selection: When you tap the icon, it will turn red to indicate that you are on the WiFi page.

- ② Current WiFi Connection Status

- ③ IP Address Icon: tap the icon to display a pop-up. If the IP field is blank, ensure Panda_Status shows "Connected." If it says, "Not Connected," check your network settings.

- ④ IP Address Display: Entering this IP in your browser will take you to the Web page, as long as you're on the same local network.

- ⑤ WiFi Network Configuration Button: tap to go to the [WiFi connection page](#wifi-connect)

- ⑥ Host Name: The default hostname is "PandaLuxRGB." If you forget the IP, you can use the hostname followed by "local" in the browser (e.g., http://PandaLuxRGB.local). To modify the hostname, tap the text box to edit it, then tap "Set Hostname" to confirm.

- ⑦ Confirm Hostname Modification

### AP Page

<img src=img/PandaLuxRGBPX/en/wifi_ap.png width="300"/>

- ① AP Page Selection: When you tap the icon, it will turn red to indicate that you are on the AP page.

- ② AP Hotspot Switch

- ③ AP Name: Default is `Panda_Lux_RGB_XXXXXXXXXX`

- ④ AP Password: Default is `987654321`

- ⑤ Hotspot IP: Default Hotspot IP is "192.168.254.1." If your router's IP range is "192.168.254.xxx," an IP conflict will prevent the device from binding to the printer. Change the Panda_Lux_RGB hotspot IP to a different range.

- ⑥ Confirm Button: taping this will restart the device. After the restart, you can connect to the AP hotspot.([How to connect to the AP hotspot](https://bttwiki.com/Panda-Lux-RGB.html#wifi_connect_ap))

### Settings Page

<img src=img/PandaLuxRGBPX/en/settings.png width="300"/>

- ① Settings Page Selection: When you tap the icon, it will turn red to indicate that you are on the Settings page.

- ② Choose Language (Default: English)

- ③ Show Current Firmware Version

- ④ Firmware OTA Update: Select a `.bin` file for the update.

    - tap the 'Select .bin File' button to choose the bin file that requires OTA.

        <img src=img/PandaLuxRGBPX/ota_bin.png width="300"/>

    - Wait for the progress to complete, and the device will automatically restart once the update is finished.

        <img src=img/PandaLuxRGBPX/en/ota_progress.png width="300"/>

        <img src=img/PandaLuxRGBPX/en/ota_ok.png width="300"/>

- ⑤ tap to Confirm [Restore Factory Settings](#first-connection)

### Control Page

- Feature Introduction

    <img src=img/PandaLuxRGBPX/en/panel.png width="300"/>

    - ① Control Page Selection: When you tap the icon, it will turn red to indicate that you are on the Control page.

    - ② Current Device Name

    - ③ Turn on and off the RGB Light effects.

    - ④ Automatically turns RGB effect ON and OFF following the printers stock light.

    - ⑤ Override Red flashing warning light when printer is in error state.

    - ⑥ Select the lighting effect and the current effect.

    - ⑦ Light color setting.

    - ⑧ Brightness.

    - ⑨ Speed.

- Light Effect

    <img src=img/PandaLuxRGBPX/en/mode.jpg width="300"/>

    - ①-⑦ After selection, the corresponding lighting effect will be displayed immediately.

    - ⑧ The light color can change based on the printer’s temperature. Additionally, you can choose between two lighting effects—Static or Strobing—under Safety Effect and Danger Effect.

        <img src=img/PandaLuxRGBPX/en/warning_mode.png width="300"/>

    - ⑨ After selection,The color of the light can be adjusted according to the printer.You can choose between the Static or Rainbow lighting effects in the printing.

        <img src=img/PandaLuxRGBPX/en/h2d_mode.png width="300"/>

- Customizing Light Color (using Static mode as an example):

    - Tap on the color setting box, and you will be directed to the color selection page.

        <img src=img/PandaLuxRGBPX/en/static_mode.jpg width="300"/>

    - Choose the desired color.

        <img src=img/PandaLuxRGBPX/en/color_preset.png width="300"/>

        - ① Factory default preset color.

        - ② Custom color. After clicking, a color picker will appear where you can set the color value for this custom color.

            <img src=img/PandaLuxRGBPX/en/picker.jpg width="300"/>

    - After selecting a `Preset` or `Color Definition`(custom color) color block. Click `Confirm`, you can set the RGB lights to your selected color.

        <img src=img/PandaLuxRGBPX/en/confirm.png width="300"/>

        <img src=img/PandaLuxRGBPX/en/custom_ok.png width="300"/>


## Firmware History

### [V1.0.0](https://github.com/bigtreetech/Panda-Lux-RGB/tree/master/Firmware/v1.0.0)

- First-release factory firmware.

## Feature Requests

If you'd like to see certain features in the upcoming firmware release, please submit a feature request on the official GitHub repository. [Feature Requests](https://github.com/bigtreetech/Panda-Lux-RGB/issues)
