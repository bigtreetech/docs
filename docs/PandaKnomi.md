# Panda Knomi

<img src=img/PandaKnomi/panda_knomi.jpg width="400"/>

## IMPORTANT NOTE

* Latest firmware [Click here](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware)
* Print files [Click here](https://github.com/bigtreetech/PandaKnomi/tree/master/Print_Files)
* Panda Knomi only monitors the printer's status and does not control the printer. Therefore, its functionality will not be affected by firmware updates for the printer.
* Panda Knomi only supports connections to 2.4G Wi-Fi.
* If you see the message `Invalid IP, Adjusting` for an extended period, try controlling the printer using `Bambu Handy` or `Bambu Studio`. If the printer does not respond or appears offline, it may be due to an issue with the network environment. Please check your network settings. If you can control the printer normally, try restarting the Panda Knomi by turning it off and on. If the issue persists after rebooting, please contact customer support at: `support01@bigtree-tech.com`.
* After connecting to the Panda Knomi AP hotspot in your phone settings menu, you will be redirected directly to the Web UI interface. Due to permission issues on some mobile phones, it may not be possible to upload GIF images, IMG files, or firmware updates on this page. Please access the Web UI through a browser to perform file uploads.
* If you encounter any issues during use, feel free to visit our GitHub page to [submit an issue](https://github.com/bigtreetech/PandaKnomi/issues) and stay in touch with us.

## Specifications

| MCU | Xtensa dual-core 32-bit LX6 ESP32<br/>up to 240MHz clock speed.|
| :-----| :----: |
| Memory | PSRAM-8MB(4MB RAM + [4MB Himem](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/system/himem.html)), Flash-16MB |
| Logic Voltage | 3.3V |
| Input Power Voltage | 5V-24V |
| Rated Power | 0.65W |
| Dimensions | 34.6mm x 37.9mm x 3.5mm |
| Display Size | 1.28” |
| Resolution | 240 x 240 |
| Display Area | 32.4（H）mm x 32.4（V）mm |
| Screen Driver Chip | GC9A01 |
| Viewing Angle | All-View |
| Backlight Brightness | 400 Cd/m² |
| Connectivity | 2.4G Wi-Fi (IEEE 802.11 b/g/n) |
| Operating Temperature | Panda Knomi：-20°C to +70°C<br/>Plastic Shell：-30℃ to +130℃ |
| Storage Temperature | -30°C to +80°C |
| Backlight Life | Over 20,000 hours |

## Dimensions & Interface

<img src=img/PandaKnomi/size.png width="400"/>
<img src=img/PandaKnomi/port.jpg width="400"/>

## Mounting Guide

> In this section, you will learn how to install the Panda Knomi onto the A1 Series printer's toolhead using our plastic shell.

* Step 1: Gently peel off the protective cover.<br/>
  <img src=img/PandaKnomi/install_1.png width="300"/>
* Step 2: Fix the Panda Knomi in the shell.
  * Position the Panda Knomi directly into the shell.<br/>
    <img src=img/PandaKnomi/install_2.jpg width="300"/>
  * Align the cover with the locking tab, as shown by Arrow `A`. Then, gently press down in the direction of Arrow `B` until it clicks past the tab, securing it in place.<br/>
    <img src=img/PandaKnomi/install_3.jpg width="300"/>
* Step 3: Installing the Panda Knomi onto the A1 series Toolhead
  * Press the Toolhead Cover from both sides to unlock and remove the cover.<br/>
    <img src=img/PandaKnomi/install_5.png width="300"/>
  * Then remove the rotating wheel.<br/>
    <img src=img/PandaKnomi/en_install_6.png width="300"/>
  * Pass the power cable through the designated holes.<br/>
    <img src=img/PandaKnomi/install_7.jpg width="300"/>
  * Then connect it to the Panda Knomi power interface.<br/>
    <img src=img/PandaKnomi/install_8.jpg width="300"/>
  * Snap the Panda Knomi from the top, then gently press to secure.<br/>
    <img src=img/PandaKnomi/install_9.png height="300"/><img src=img/PandaKnomi/install_10.png height="300"/>
  * Installation Completed<br/>
    <img src=img/PandaKnomi/install_11.png width="300"/>
* Step 4: Power Supply
  Congratulations on successfully installing your Panda Knomi.
  Please power on the device and adhere to the on-screen instructions in order to pair it with your printer. 
  * For A1 Series:
    > * Tips: If the power interface on your A1 series printer is already occupied by other peripherals, you can use the BIGTREETECH Panda Branch to extend the connection.
    > * Note: Our tests show the A1 Series' AMS port provides up to 24.4W, while AMS lite consumes up to 4W. With a maximum power use of 0.65W. Panda Knomi can be directly connected. For external expansions using the Panda Branch, set the USB power to 2A before connecting Panda Knomi to its 4-pin interface.
    > * The Panda Branch is sold separately.

    <img src=img/PandaKnomi/power_a1.png width="600"/>
  * For X1 Series<br/>
    <img src=img/PandaKnomi/power_x1.png width="600"/>
  * For P1 Series<br/>
    <img src=img/PandaKnomi/power_p1.png width="600"/>
* Step 5: Installation of Cable Clips/Organizers
  > * To keep the printer organized, we've designed a cable organizer and clip model. Feel free to visit [GitHub](https://github.com/bigtreetech/PandaKnomi) to download and print it.
  > * For optimal organization, it is recommended to print several Cable Organizers.
  * After fitting the printed cable clip, insert the Panda Knomi power cable into the designated slot.<br/>
    <img src=img/PandaKnomi/en_print_1.png width="600"/>
  * Use the printed cable organizers to systematically arrange the cables.<br/>
    <img src=img/PandaKnomi/print_2.png width="600"/>

## Disassembling Guide

> To disassemble the plastic shell’s back cover or to detach the Panda Knomi from the A1 series toolhead, please follow the method below.

* Press the blue-highlighted slot using the cover opener, and the cover will pop open. (You will need to download the cover opener model file from [GitHub](https://github.com/bigtreetech/PandaKnomi) and print it ahead of time.)<br/>
  <img src=img/PandaKnomi/en_open.jpg width="600"/>
* Press the shell from both sides to unlock and carefully remove it from the toolhead.<br/>
  <img src=img/PandaKnomi/uninstall.png width="500"/>

## User Interface Instructions

### First Time Use Guide

#### Access the Web UI

* Connect to the Panda Knomi AP Hotspot<br/>
You will be presented with the screen below after booting for the first time or after executing the `Factory Reset` command.<br/>
  <img src=img/PandaKnomi/en_ap_qr_code.jpg width="400"/>

  * Scan the QR code on the Panda Knomi to get the AP name and password.
    Connect to the AP with the default credentials:<br/>
    Wi-Fi SSID: `Panda_Knomi_xxxxxxxxxxxx`<br/>
    Wi-Fi Password: `987654321`<br/>

    > <font size="2">Note: Most modern smartphones are equipped to scan QR codes directly through their camera app. This feature is typically available on devices running iOS 11 or later, and Android 9.0 or later. To ensure optimal QR code scanning performance, please verify that both your device’s operating system and camera app are updated to their latest versions. If your smartphone does not have this capability, alternative options include using third-party applications from the application store, like Google Lens. Alternatively, you can manually connect to the Panda Knomi’s hotspot using the default password `987654321` to access the Web UI.</font>

  * If scanning the QR code doesn't work, you can go to the `settings` menu on the device to connect to the hotspot manually.
    Using an iPhone as an example:
    * On your phone home screen, go to `Settings` → `WLAN`.
    * Turn on `WLAN`. Your device will automatically search for available networks.<br/>
      <img src=img/PandaKnomi/en_wlan.jpg width="300"/>
    * Tap on the network name starting with `Panda_Knomi_` and enter the default password: `987654321`.
    * After successfully connecting to the Panda Knomi network, you will see a blue checkmark next to the network, and the Wi-Fi icon indicating a connection will appear in the top-right corner of the screen.
* After connecting to the AP, there should be a prompt of `Connected (Login/Authentication required)`, and click it to enter the Web UI configuration interface. Sometimes due to network reasons, you need to wait for 10~20 seconds. If you still cannot enter the Web UI configuration interface after waiting, you can manually enter [192.168.4.1](http://192.168.4.1) in the browser to access the Web UI configuration interface.

#### Connect Panda Knomi to the same Wi-Fi network as your printer.

* You will be prompted to select a language. After setting the language, tap `Next` to proceed to the Wi-Fi connection interface.<br/>
  <img src=img/PandaKnomi/en_language.png width="300"/>
* The Panda Knomi will automatically search for available Wi-Fi networks in the vicinity. Please select the Wi-Fi that the printer is connected to to connect. If the Wi-Fi that the printer is connected to is not scanned. you can tap the `Scan` button to initiate a new search for networks.<br/>
  <img src=img/PandaKnomi/en_wifi.png width="300"/>
* Once the connection is established, tap `Binding` to proceed to the `Printer` interface where you will bind the printer.<br/>
  <img src=img/PandaKnomi/en_goto_printer.png width="300"/>

#### Printer Binding

> Note: If the access code field is blank, the printer may be in cloud mode and not linked to a cloud account. Please switch the printer to `LAN Only Mode` or use Bambu Handy/Bambu Studio to bind the printer to a cloud account.

##### Automatic Scanning

* In the `Printer` interface, tap `Scan` to scan for printers on the same local network. A full scan takes about 30 seconds. Each additional Bambu printer adds up to 20 seconds to the scan time. Panda Knomi supports up to 20 printers per scan. If the number of printers in your LAN exceeds 20, it may not be able to scan all printers. If the scan fails to identify the printer you want to connect, you can click the `Scan` button to scan again, or `Manual Input` all the information to bind printer.<br/>
  <img src=img/PandaKnomi/en_printer.png width="300"/>
* After scanning, select the printer you wish to connect to, After selecting, the printer's `SN Code` and `IP` will be automatically filled in, then manual enter the `Access Code`.
  * For A1 Series
    * ①	`Setting`<br/>
      <img src=img/PandaKnomi/en_a1_1.jpg width="300"/>
    * ② -> ③ `LAN Only Mode`<br/>
      <img src=img/PandaKnomi/en_a1_2_3.jpg width="300"/>
    * ④ `Access Code`<br/>
      <img src=img/PandaKnomi/en_a1_4_5.jpg width="300"/>
  * For P1 Series
    * ①	`Setting`-> ② `WLAN` -> ③ `OK`<br/>
      <img src=img/PandaKnomi/p1_1_2_3.png width="600"/>
    * ⑤ `Access Code`<br/>
      <img src=img/PandaKnomi/p1_4_5.png width="600"/>
  * For X1 Series<br/>
    * ①	`Setting` -> ② `General` -> ③ `Access Code`<br/>
      <img src=img/PandaKnomi/en_x1_1_2_3_4.jpg width="600"/>
* Tap `Bind`. A `Binding successful` popup will confirm that the Panda Knomi has connected to the printer.<br/>
  <img src=img/PandaKnomi/en_bind_ok.png width="300"/>
* Congratulations! You can now enjoy your Panda Knomi.

##### Manual Input

> * Panda Knomi supports identifying up to 20 printers per scan. If the number of Panda Knomi printers in your LAN exceeds 20, it may not be possible to scan all printers. We can `Manual Input` all the information needed to bind the printer.
> * If you don't have many Bambu Lab printers in your LAN, but still can't scan the printer, we can try to `Manual Input` all the information required to bind the printer. If Panda Knomi cannot connect to the printer, it may be that some security features of your router prohibit devices in the LAN from communicating with each other. Please contact customer service `support01@bigtree-tech.com` to assist you with further investigation.

* Find the `Printer SN`, `Access Code` and `IP` on the printer, and enter them into the corresponding input fields on the Web UI.
  * For A1 Series
    * `Printer SN`
      * ①	`Setting`<br/>
        <img src=img/PandaKnomi/en_a1_1.jpg width="300"/>
      * ② `Device`<br/>
        <img src=img/PandaKnomi/en_a1_2.jpg width="300"/>
      * ③ `Printer SN`<br/>
        <img src=img/PandaKnomi/en_a1_3.jpg width="300"/>
    * `Access Code` and `IP`
      * ①	`Setting`<br/>
        <img src=img/PandaKnomi/en_a1_1.jpg width="300"/>
      * ② -> ③ `LAN Only Mode`<br/>
        <img src=img/PandaKnomi/en_a1_2_3.jpg width="300"/>
      * ④ `Access Code`, ⑤ `IP`<br/>
        <img src=img/PandaKnomi/en_a1_4_5.jpg width="300"/>
  * For P1 Series
    * `Printer SN`
      * ①	`Setting` -> ② `Device`<br/>
        <img src=img/PandaKnomi/p1_1_2.png width="600"/>
      * ③ `Printer` is the `Printer SN`<br/>
        <img src=img/PandaKnomi/p1_3.png width="600"/>
    * `Access Code` and `IP`          
      * ①	`Setting`-> ② `WLAN` -> ③<br/>
        <img src=img/PandaKnomi/p1_1_2_3.png width="600"/>
      * ④ `IP`, ⑤ `Access Code`<br/>
        <img src=img/PandaKnomi/p1_4_5.png width="600"/>
  * For X1 Series
    * `Printer SN` 和 `Access Code`
      * ①	`Setting` -> ② `General` -> ③ `Access Code`, ④ `Device info` is the `Printer SN`<br/>
        <img src=img/PandaKnomi/en_x1_1_2_3_4.jpg width="600"/>
    * `IP`          
      * ①	`Setting`-> ② `Network` -> ③ `IP`<br/>
        <img src=img/PandaKnomi/en_x1_1_2_3.jpg width="600"/>
* Tap `Bind`. A `Binding successful` popup will confirm that the Panda Knomi has connected to the printer.<br/>
  <img src=img/PandaKnomi/en_bind_ok.png width="300"/>
* Congratulations! You can now enjoy your Panda Knomi.

### GIF Status Explanation

* Due to hardware limitations, Panda Knomi requires that the size of a single GIF not exceed 1.5MB (1536KB, 1MB = 1024KB), and the total size of all GIFs must not exceed 3MB (3072KB, 1MB = 1024KB).
* In the factory state, the total size of all GIFs is 2664.25KB (slightly different from the sum of all sizes in the table above due to rounding each GIF's size to two decimal places), leaving 407.75KB of available space.

| | File Name in Web UI | GIF Effect | Conditions for Display (Printer must be bound) | Factory GIF Size | Factory GIF Resolution (Width x Height) |
| :-----| :-----| :----: | :----: | :----: | :----: |
| 1 | gif_idle_standby.gif  | <img src=img/PandaKnomi/gif/standby.gif /> | The printer is idle. | 63.61KB | 240 x 240 |
| 2 | gif_nozzle_heating.gif  | <img src=img/PandaKnomi/gif/nozzle_heating.gif /> | Nozzle is heating up. | 135.7KB | 240 x 240 |
| 3 | gif_bed_heating.gif  | <img src=img/PandaKnomi/gif/bed_heating.gif /> | Bed is heating up. | 128.55KB | 240 x 240 |
| 4 | gif_bed_leveling.gif  | <img src=img/PandaKnomi/gif/bed_leveling.gif /> | Auto-leveling. | 111.28KB | 240 x 240 |
| 5 | gif_homing.gif  | <img src=img/PandaKnomi/gif/homing.gif /> | Homing. | 142.75KB | 240 x 240 |
| 6 | gif_nozzle_cleaning.gif  | <img src=img/PandaKnomi/gif/nozzle_cleaning.gif /> | Nozzle is being cleaned. | 164.02KB | 240 x 240 |
| 7 | gif_calibrating_flow.gif  | <img src=img/PandaKnomi/gif/calibrating_flow.gif /> | Calibrating extrusion flow. | 1023.41KB | 240 x 240 |
| 8 | gif_xy_mesh_mode_sweep.gif  | <img src=img/PandaKnomi/gif/xy_mesh_mode_sweep.gif /> | Calibrating resonance compensation. | 78.45KB | 240 x 240 |
| 9 | gif_filament_check_location.gif  | <img src=img/PandaKnomi/gif/filament_check_location.gif /> | Checking filament location. | 225.3KB | 240 x 240 |
| 10 | gif_filament_cut.gif  | <img src=img/PandaKnomi/gif/filament_cut.gif /> | Cutting filament. | 54.09KB | 240 x 240 |
| 11 | gif_filament_pull_back_cur.gif  | <img src=img/PandaKnomi/gif/filament_pull_back_cur.gif /> | Retracting filament. | 139.41KB | 240 x 240 |
| 12 | gif_filament_push_new.gif  | <img src=img/PandaKnomi/gif/filament_push_new.gif /> | Loading new filament. | 164.94KB | 240 x 240 |
| 13 | gif_filament_purge_old.gif  | <img src=img/PandaKnomi/gif/filament_purge_old.gif /> | Purging old filament. | 52.98KB | 240 x 240 |
| 14 | gif_printing_ok.gif  | <img src=img/PandaKnomi/gif/printing_ok.gif /> | Printing complete. | 22.37KB | 240 x 240 |
| 15 | gif_printing.gif  | <img src=img/PandaKnomi/gif/printing.gif /> | Printing in progress. | 157.41KB | 240 x 240 |

### Screen Saver

> To prevent screen burn-in from long exposure to static images, Panda Knomi includes a built-in screen saver. Every 15 seconds, a screen saver GIF (non-customizable) will appear for 2 seconds.

* The screen saver GIF is as follows:<br/>
  <img src=img/PandaKnomi/gif/screen_saver.gif />
* The screen saver is active on the following interfaces: 
  * Invalid IMG interface
  * Hello screen after first power on
  * Wi-Fi scan completion
  * Wi-Fi connection failure
  * Wi-Fi password error
  * Binding printer interface
  * Printer scan completion
  * Printer SN error
  * Printer Access Code error
  * One printer HMS QR code interface
  * Multiple printer HMS error interface

### Wi-Fi & IP Settings

<img src=img/PandaKnomi/en_wifi_ip.png width="300"/>

* ①	Tap the `Wi-Fi & IP` option.
* ②	To change the Wi-Fi network that Panda Knomi connects to, tap "Configure Wi-Fi", this will take you back to the Wi-Fi configuration interface.
  > <font size="2">Note: When the Panda Knomi switches to a different Wi-Fi network, it will connect to a new local network and IP address. If your device is connected to the same Wi-Fi network as Panda Knomi at the time of this change, you will lose the ability to communicate with it. To reconnect, you'll need to join the new Wi-Fi network to which Panda Knomi has connected. However, to avoid losing connection during this transition, it is recommended to connect your device to the Panda Knomi's AP hotspot before initiating any changes to the Wi-Fi settings. This way, you can manage the network settings without disrupting your connection to the device.</font>
* ③	After configuring the network, ensure that your devices (phone, computer, etc.) are connected to the same local network as Panda Knomi.
Access the Web UI by entering the IP address into your browser’s address bar. To avoid forgetting the IP address, consider bookmarking it on your phone’s home screen.
* ④	Alternatively, if your devices are on the same network as Panda Knomi, you can access the Web UI using the hostname, which by default is `PandaKnomi` (accessible via [http://pandaknomi.local](http://pandaknomi.local) , hostname is not case-sensitive). <br/>
  Note that if a VPN is active on your device, you may need to use the IP address directly, as accessing by hostname might fail.<br/>
  Setting the Hostname:<br/>
    * The hostname must consist only of letters (a-z, A-Z), numbers (0-9), and hyphens (-), and must start with a letter.
    * The hostname must be at least 8 characters long and no more than 32 characters.

  After choosing a new hostname, tap `Set Hostname` to update Panda Knomi. A popup will confirm the successful change. The device must be restarted for the hostname change to take effect. This can be initiated by tapping `OK` in the confirmation popup, or postponed by closing the popup with the `x` button.<br/>
  <img src=img/PandaKnomi/en_hostname.png width="300"/>

### AP Interface

> <font size="2">If your device is connected to the Panda Knomi AP hotspot to access the Web UI, any changes or shutdown of the Panda Knomi AP settings will disconnect the device. To prevent this, it is recommended to connect your device to the same local network as Panda Knomi before making changes.</font>

<img src=img/PandaKnomi/en_ap.png width="300"/>

* ①	Access the `AP` interface.
* ②	Toggle the Panda Knomi AP hotspot on or off. When the AP hotspot is off, the device will no longer connect to Panda Knomi’s hotspot for Web UI access. Before disabling it, ensure you record Panda Knomi’s IP address on the current Wi-Fi network. Devices on the same Wi-Fi can still access the Web UI via this IP.
* ③	Modify the Panda Knomi AP hotspot settings. The default configuration is:<br/>
  Wi-Fi SSID: `Panda_Knomi_xxxxxxxxxxxx`<br/>
  Wi-Fi Password: `987654321`<br/>
  After modifying settings, there is no need to restart Panda Knomi. It will automatically create the new AP hotspot in the background.

## Theme Settings and IMG sharing

### Theme Settings

<img src=img/PandaKnomi/en_theme_1_2_3_4_5.jpg width="300"/>
<img src=img/PandaKnomi/en_theme_6.jpg width="300"/>
<img src=img/PandaKnomi/en_settings_7_8.jpg width="300"/>

* ①	Go to the `Theme` interface.
* ②	Choose how to display printing progress:
  * `Only percentage`: Displays real-time printing progress as a percentage.
  * `Only GIF`: Displays a GIF representing the printing process. 
  * `Alternating percentage and GIF`: Alternates between showing the percentage and GIF every 10 seconds.
* ③	Set GIF Colors<br/>
  <img src=img/PandaKnomi/en_picker.jpg width="300"/>
  * a) Tap to open the color setting interface for the GIF.
  * b) Use the HSL Color Picker.（[What is HSL?](https://en.wikipedia.org/wiki/HSL_and_HSV)）
  * c) H (Hue) ranges from 0° to 360°.
  * d) S (Saturation) ranges from 0% to 100%.
  * e) L (Lightness) ranges from 0% to 100%.
  * f) A (Alpha/Opacity) ranges from 0.00 to 1.00.
  * g) The corresponding RGBA Hexadecimal Value: Each color value ranges from 0 to 255 (0x00 to 0xFF). You can modify these values to get the desired color. For example, #FFFFFFFF means:
    * R (Red)：0xFF (255/255)
    * G (Green)：0xFF (255/255)
    * B (Blue)：0xFF (255/255)
    * A (Alpha)：0xFF (1.00/1.00)
  * h) The corresponding HSLA Values, You can modify these values to get the desired color.
    * H (Hue)：0°
    * S (Saturation)：0%
    * L (Lightness)：100%
    * A (Alpha)：1.00
  * i) Tap to reset to the original GIF color.
  * j) Preview the color in the preview area.
* ④	View GIF Storage Usage
  Due to Panda Knomi’s hardware limitations, the total size of all GIFs cannot exceed 3MB (3072KB). If this limit is exceeded, the Web UI will block the update and display a pop-up reminder.
* ⑤	Set Each GIF Individually (including color and custom GIF images)<br/>
  Turn "Preview Mode" on/off to show/hide the "Preview" button.<br/>
  Tapping "Preview this GIF" enters preview mode, allowing you to view the custom GIF on the screen. To exit preview mode, turn off "Preview Mode" or navigate away from the "Theme" interface.<br/>
  Custom GIF Notes:<br/>
  * If using the UI color changing feature, the GIF must have a transparent background. Without transparency, color changes will affect the entire image.
  * Due to software limitations, the last frame of a transparent GIF must match the first frame to avoid overlap. If dynamic UI color changes are unnecessary, you can use a non-transparent GIF.
  * Panda Knomi uses a `240 x 240` pixel screen resolution. GIFs larger than this resolution won’t display fully, so only GIFs of this size or smaller are allowed.
    [Resize larger GIFs](https://www.iloveimg.com/resize-image/resize-gif):
    * Tap `Select images` button to select GIF, or Drag and drop the GIF into the browser window.
    * Make sure that the `Maintain aspect ratio` box is ticked. Avoid changing the aspect ratio to cause inconsistent image effects
    * Change the larger of the `Width (px):` or `Height (px):` to 240. If both are the same then you can change either of them.
    * Tap `Resize IMAGES`
    * Tap `Download resized IMAGES` to download the resized GIF.
  * The size of a single GIF cannot exceed 1.5MB (1536KB, 1MB=1024KB), and the total size of all GIFs cannot exceed 3MB (3072KB, 1MB=1024KB).
  * The new GIF size must not exceed the sum of the replaced GIF size and remaining capacity. Otherwise, the Web UI will reject the replacement. You can check the available capacity in ④ and the size of each GIF in ⑤. <br/>
    For example, to replace “Standby.gif,” if the factory GIF size is 63.61KB and the remaining capacity is 407.75KB, the new GIF size cannot exceed 63.61KB + 407.75KB = 471.36KB.
* ⑥	Download and Export Custom GIF as IMG File, Conveniently backup or share your custom GIF designs.
  > <font size="2">Note: IMG does not include custom color data information, only GIF image data.</font>
* ⑦	⑧ Update Others’ Shared IMG Files to Panda Knomi.

### Apply IMG to Panda Knomi

> <font size="2">Note: IMG does not include custom color data information, only GIF image data.</font>

* Download IMG Theme file
  * Download Panda Knomi `.img` files shared by other users in the community.
  * Download from the Github of Panda Knomi.
    * Visit [Panda Knomi’s GitHub repository](https://github.com/bigtreetech/PandaKnomi)
    * Go to the IMG Folder, select the IMG theme.<br/>
      <img src=img/PandaKnomi/img_github_path.png width="800"/>
    * Click Download to save it locally.<br/>
      <img src=img/PandaKnomi/img_github_download.png width="800"/>
* Then, enter Panda Knomi's Web UI: ① Go to "Settings" → ② Select the .img file you just downloaded.
  Once the update is complete, Panda Knomi will automatically apply the new IMG file.<br/>
  <img src=img/PandaKnomi/en_img_web_upload.jpg width="300"/>

### Export IMG from Panda Knomi to Share

> <font size="2">Note: IMG does not include custom color data information, only GIF image data.</font>

* ① Go to "Theme" → ② Select "Export IMG," and wait for the file to export.<br/>
  <img src=img/PandaKnomi/en_img_web_download.jpg width="300"/>
* Rename it using the following format: `panda_knomi_diy_<theme_name>_<author_name>_YYYY_MM_DD.img`
  * `<theme_name>`: Choose a theme name for the IMG 
  * `<author_name>`: Author’s nickname or name
  * `YYYY_MM_DD`: Date of the IMG file (Year_Month_Day)

  Example: panda_knomi_diy_theme_author_2025_02_22.img。
* Share IMG theme to GitHub
  * If you don’t have a GitHub account, please [create](https://docs.github.com/en/get-started/start-your-journey/creating-an-account-on-github) one.
  * Visit [Panda Knomi’s GitHub repository](https://github.com/bigtreetech/PandaKnomi)
  * Click ① `Fork`<br/>
    <img src=img/PandaKnomi/fork_1.png width="800"/>
  * Click ② `Create fork`<br/>
    <img src=img/PandaKnomi/fork_2.png width="800"/>
  * Wait for the `fork` to complete<br/>
    <img src=img/PandaKnomi/fork_3.png width="800"/>
  * After forking, go to the IMG Folder<br/>
    <img src=img/PandaKnomi/img_pri_path.png width="800"/>
  * Drag and drop the IMG file into the browser window. The `Drop to upload your files` interface will appear.<br/>
    <img src=img/PandaKnomi/img_drag.png width="800"/><br/>
    <img src=img/PandaKnomi/img_drop.png width="800"/>
  * Enter the ① `title`, ② `description`, and ③ `commit changes`.<br/>
    <img src=img/PandaKnomi/img_pri_commit.png width="800"/>
  * ① `Contribute` -> ② `Open pull request`<br/>
    <img src=img/PandaKnomi/img_open_pr.png width="800"/>
  * Write a ① `title`, ② `description`, check ③ `Allow edits by maintainers`, and ④ `Create pull request`<br/>
    <img src=img/PandaKnomi/img_create_pr.png width="800"/>
  * Congratulations! You’ve shared your theme.

## Factory Reset

> <font size="2">Restoring the factory settings of Panda Knomi will erase all configurations, including language, Wi-Fi settings, custom hostname, custom AP hotspot name and password, bound printers, print progress display selection, and theme color information. However, custom GIFs cannot be restored to the factory defaults. GIFs can only be modified by uploading new ones or updating the IMG file. The factory IMG file is available for download and can be updated from [GitHub](https://github.com/bigtreetech/PandaKnomi) </font>

### Via Web UI

* Go to the ① `Settings` interface and tap the ② `Factory Reset`<br/>
  <img src=img/PandaKnomi/en_factory_1.png width="300"/>
* A confirmation popup will appear, Tap ③ `YES` to confirm and reset. Panda Knomi will restore the factory settings and restart.<br/>
  <img src=img/PandaKnomi/en_factory_2.png width="300"/>

### Via Hardware Button

Hold the Boot button on Panda Knomi for 5 seconds to reset the factory settings. The device will restart automatically.<br/>
<img src=img/PandaKnomi/boot.jpg width="300"/>

## Firmware

### Feature requests

If there is something you would like to see in a future release of the Panda Knomi firmware, please let us know by logging a feature request on the official Panda Knomi Github repository.

[Request a feature](https://github.com/bigtreetech/PandaKnomi/issues)

### How to update firmware

#### OTA

* Access the Web UI
  > <font size="2">If Panda Knomi is already connected to Wi-Fi, you can connect the device to the same LAN as the Wi-Fi and access the Web UI directly via IP to update the firmware. You can also connect the device to the AP hotspot of Panda Knomi to access the Web UI to update the firmware. You can choose either of these two methods.</font>
  * Connect your device to the same local network as Panda Knomi
    * Connect your device to the local area network of the Wi-Fi where Panda Knomi is located (Wi-Fi or Ethernet is OK)
    * Enter Panda Knomi’s IP or hostname into your browser. The default hostname is [http://pandaknomi.local](http://pandaknomi.local).
  * Connect to Panda Knomi's AP hotspot
    * Connect your device to Panda Knomi's AP hotspot
      Using an iPhone as an example:
      * On your phone home screen, go to `Settings` → `WLAN`.
      * Turn on `WLAN`. Your device will automatically search for available networks.<br/>
        <img src=img/PandaKnomi/en_wlan.jpg width="300"/>
      * Tap on the network name starting with `Panda_Knomi_` and enter the default password: `987654321`.
      * After successfully connecting to the Panda Knomi network, you will see a blue checkmark next to the network, and the Wi-Fi icon indicating a connection will appear in the top-right corner of the screen.
    * After connecting to the AP, there should be a prompt of `Connected (Login/Authentication required)`, and click it to enter the Web UI configuration interface. Sometimes due to network reasons, you need to wait for 10~20 seconds. If you still cannot enter the Web UI configuration interface after waiting, you can manually enter [192.168.4.1](http://192.168.4.1) in the browser to access the Web UI configuration interface.
* In the configuration interface, go to ① `Settings`, then tap ② `Select .bin file` to choose the firmware to update. The device will restart automatically after the update.<br/>
  <img src=img/PandaKnomi/en_firmware.png width="300"/>

#### flash_download_tool (Type-C)

> <font size="2">Note: Panda Knomi should be available as a free OTA, This step is only necessary when OTA is unavailable.</font>

* If your computer does not have the CH340 driver, please download and install [CH341SER.EXE](https://www.wch-ic.com/downloads/CH341SER_EXE.html)<br/>
* Download the [Flash Download Tools](https://www.espressif.com.cn/en/support/download/other-tools)
  <img src=img/PandaKnomi/en_download_esp_tool.png width="800"/>
* Download the [Panda Knomi firmware](https://github.com/bigtreetech/PandaKnomi)
* Hold the `Boot` button on Panda Knomi, connect it via `Type-C` to your computer, and a new COM port should appear in the device manager.<br/>
  <img src=img/PandaKnomi/boot_fw.jpg width="300"/>
* Open `flash_download_tool_3.9.8_6.exe`, and configure as follows:<br/>
  <img src=img/PandaKnomi/open_esp_tool.png width="400"/>
* As shown in the figure below, configure the flash download tool:<br/>
  <img src=img/PandaKnomi/set_esp_tool.png width="400"/>
  * ①	Set the.bin file's writing address, ensuring all checkboxes are ticked:
    * `panda_knomi_bootloader.bin` to `0x1000`
    * `panda_knomi_partition.bin` to `0x8000`
    * `panda_knomi_v1.0.0.bin` to `0x10000`
    * `panda_knomi_v1.0.0.img` to `0x910000`
  * ②	Set the COM port to the Panda Knomi port(We can check it in the computer's `Device Manager` -> `Port`), and choose a baud rate (recommended: 460800).
  * ③	Click `START` to begin writing. Once done, power off and restart Panda Knomi.


### Firmware History <a id="firmware_history"></a>

#### [V1.0.2](https://github.com/bigtreetech/PandaKnomi/tree/master/Firmware/v1.0.2)

* Fix: Solve the problem that the TCP connection is occupied and the Web UI cannot be accessed. Now the old connection will be forcibly disconnected and the latest Web UI request will be answered.
* Fixed: MQTT memory leak. Fixed the issue where Panda Knomi may remain in the state of `binding printer` after disconnecting and rebinding the printer more than 100 times.
* Fixed: After unbinding a printer in Web UI, if you immediately click `Bind` the printer, Panda Knomi may not bind the printer.
* Fix: After printing is completed, `gif_printing_ok.gif` is occasionally not displayed.
* Optimization: Add the total size limit of GIF, Web UI (pop-up window) + background (refuse to allocate memory) are limited to no more than 3MB, to avoid GIF running out of RAM and causing system abnormalities.
* Optimization: Web UI adds display of GIF storage usage information.
* Optimization: Web UI add the display of the size and resolution of each GIF file.

#### [V1.0.1]

* Fixed: When accessing the Web UI, the pop-up window that appears immediately is always in English.
* Fixed: Screen saver function causes the `WiFi scan completed` and `Printer scan completed` interfaces not to be displayed.
* Fixed: Unable to connect to WiFi hotspots with encryption method `WPA-PSK`.
* Fixed: The WiFi password error was reported incorrectly. A 3-time retry mechanism was added. An exception will be thrown only after the password error is reported 3 times, and the background will still try to reconnect.
* Optimization: It takes about 25 seconds for the A1 mini printer to complete the deployment of MQTT after it is powered on. Panda Knomi will try to reconnect within 30 seconds after the connection is started, and will throw an `Invalid IP` exception after 30 seconds, to avoid the situation where Panda Knomi reports an error when MQTT deployment is not completed when the printer is just turned on。
* Optimization: When an `Invalid IP` exception occurs, Panda Knomi background automatically listens to UDP and rescans the printer. If a printer with the same SN code is scanned, the new IP will be re-applied to establish a connection.

#### [V1.0.0]

* First released factory firmware.

## Technical Support
Did this page help you? If you have any further questions about product usage or encounter other issues, please feel free to contact our after-sales email at `support01@bigtree-tech.com`.
