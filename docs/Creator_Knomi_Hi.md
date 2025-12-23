# Creator Knomi Hi

<img src=img/Creator_Knomi_Hi/knomi-hi.jpg width="500"/>



## Important Notes

* Latest firmware: [Click here](https://github.com/bigtreetech/Creator_Knomi_Hi/tree/master/Firmware)
* Creator Knomi Hi only supports 2.4GHz Wi-Fi networks.
* After connecting to the Creator Knomi Hi’s AP hotspot from the settings screen, your device should redirect to the Web UI. However, on some smartphones, permissions may block the ability to upload GIFs, IMG files, or firmware here. If this happens, open a browser manually and go to the Web UI to complete uploads.
* For any issues or suggestions, please visit our GitHub and [submit an issue](https://github.com/bigtreetech/Creator_Knomi_Hi/issues)

## Technical Specifications

| Processor            | Xtensa Dual-Core 32-bit LX6 ESP32, up to 240MHz
| :-----| :----: |
| Memory                | PSRAM 8MB (4MB RAM + [4MB Himem](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-reference/system/himem.html)), Flash 16MB |
| Logic Voltage | 3.3V |
|Input Voltage | 5V-24V |
| Rated Power | 0.65W |
| Display Dimensions | 34.6mm x 37.9mm x 3.5mm |
| Display Size | 1.28” |
| Resolution | 240 x 240 |
| Active Display Area | 32.4（H）mm x 32.4（V）mm |
| Display Driver Chip | GC9A01 |
| Viewing Angle | All View |
| Backlight Brightness | 400 Cd/m² |
| Connection | 2.4GHz Wi-Fi (IEEE 802.11 b/g/n)      |
| Operating Temperature |  Creator Knomi Hi: -20°C to +70°C<br/>Creator Knomi Hi Shell: -30°C to +130°C    |
| Storage Temperature | -30°C to +80°C |
| Backlight Lifespan | > 20,000 hours |

## Dimensions & Interfaces

<img src=img/Creator_Knomi_Hi/size.webp width="400"/>
<img src=img/Creator_Knomi_Hi/port.jpg width="400"/>

## Installation Guide

> This section covers how to install the Creator Knomi Hi into the Creality Hi printer toolhead using the Creator Knomi Hi Shell .

* Step 1: Remove the Stock Front Cover<br/>
 Use a 2.0mm screwdriver to remove the screws on both sides of the front cover.
<br/>Note: these screws will be used later to secure the Creator Knomi Hi shell.<br/>
<img src=img/Creator_Knomi_Hi/screw-left.jpg width="400"/>
<img src=img/Creator_Knomi_Hi/screw-right.jpg width="400"/>
<br/>

* Step 2:  Remove the Wiring Harness<br/>
Unplug the two connectors shown by the arrows to remove the wiring harness. <br/>
<img src=img/Creator_Knomi_Hi/wring.webp width="400"/>
<br/>

* Step 3: Cable Connection<br/>
Plug connector A into the display socket d (as shown in the image).<br/>
<img src=img/Creator_Knomi_Hi/wring_1.jpg width="400"/><br/>
Plug connector B to the e port on the Creality Hi print head controller board.<br/>
<img src=img/Creator_Knomi_Hi/wring_2.jpg width="400"/><br/>
Plug connector C to the f port on the print head, then route the cable through position g.<br/>
<img src=img/Creator_Knomi_Hi/wring_3.jpg width="400"/>
<br/>Ensure all connections are fully seated and secure. Route cables neatly to prevent pinching or mechanical interference during operation.<br/>

* Step 4: Attach and Secure the Creator Knomi Hi Shell <br/>
Align the Creator Knomi Hi shell in place. Secure it using the screws you removed earlier.<br/>
<img src=img/Creator_Knomi_Hi/close_left.jpg width="400"/>
<img src=img/Creator_Knomi_Hi/close_right.jpg width="400"/>
<br/>

* Installation Complete! <br/>
<img src=img/Creator_Knomi_Hi/succeed.jpg width="400"/>



## Printer Configuration
* Find your printer's IP address
  * ① Tap `Settings`<br/>
    <img src=img/Creator_Knomi_Hi/hi_1.webp width="600"/>
  * ② Tap `Network` -> ③ `IP`<br/>
    <img src=img/Creator_Knomi_Hi/hi_2.webp width="600"/>

* Ensure your computer is connected to the same local network as the printer. Open a web browser and enter the printer's IP address followed by `4408` (the default port). Example: If your printer's IP is `192.168.3.81`, enter `192.168.3.81:4408` in your browser.
* Upload Configuration File:  In the interface:  ① -> ② -> ③ Tap `Upload Files` and select `Creator_Knomi_Hi_01.00.00.00.cfg` to upload. <br/>
  <img src=img/Creator_Knomi_Hi/printer_1.webp width="600"/>
* Edit `printer.cfg` and add this line:
  ```
  [include Creator_Knomi_Hi_01.00.00.00.cfg]
  ```
  <img src=img/Creator_Knomi_Hi/printer_2.webp width="600"/>
* Edit `sensorless.cfg` <br/>
  At the beginning of each of the following macros: `_HOME_X`, `_HOME_Y`, and `_HOME_Z`, add the this line:
  ```
  SET_KNOMI_STATUS VALUE=4
  ```
  At the end of each macro, add:
  ```
  RESET_KNOMI_STATUS
  ```
  <img src=img/Creator_Knomi_Hi/printer_3.webp width="600"/>
  <br/>Note: The screenshot only shows “_HOME_X” but “_HOME_Y” and “_HOME_Z” should be updated the same way.<br/>
  <br/>
* Edit `gcode_macro.cfg`: In the `QUIT_MATERIAL` macro, add the following in the shown location:
  ```
  SET_KNOMI_STATUS VALUE=9
  ```
  and
  ```
  RESET_KNOMI_STATUS
  ```
  <img src=img/Creator_Knomi_Hi/printer_4.webp width="600"/>

* After making all changes, click `SAVE & RESTART` to apply your configuration.

## User Interface Overview

### First-Time Setup Guide

#### Accessing the Web UI Configuration Page

* Connect to the Creator Knomi Hi AP hotspot
  After powering on for the first time or performing a `Factory Reset`, you’ll see this interface:<br/>
  <img src=img/Creator_Knomi_Hi/ap_qr_code.jpg width="400"/>

    * Scan the QR code on the Creator Knomi Hi to get the AP name and password.<br/> <img src=img/Creator_Knomi_Hi/password.jpg width="300"/><br/>
      Connect to the AP with the default credentials:<br/>
      Wi-Fi Name: `Creator_Knomi_Hi_xxxxxxxxxxxx`<br/>
      Wi-Fi Password: `987654321`<br/>
      > <font size="2">Note: Most modern smartphones are equipped to scan QR codes directly through their camera app. This feature is typically available on devices running iOS 11 or later, and Android 9.0 or later. To ensure optimal QR code scanning performance, please verify that both your device’s operating system and camera app are updated to their latest versions.
      If your smartphone does not have this capability, alternative options include using third-party applications from the application store, like Google Lens. Alternatively, you can manually connect to the  Creator Knomi Hi’s hotspot using the default password `987654321` to access the Web UI.</font>
    * If scanning the QR code doesn't work, you can go to the `settings` menu on the device to connect to the hotspot manually. <br/>Using an iPhone as an example:<br/>
        * On your phone home screen, go to `Settings` → `WLAN`.
        * Turn on `WLAN`. Your device will automatically search for available networks.<br/>
          <img src=img/Creator_Knomi_Hi/wlan.webp width="300"/>
        * Tap on the network name starting with `Creator_Knomi_Hi` and enter the default password: `987654321`.
        * After successfully connecting to the Creator_Knomi_Hi network, you will see a blue checkmark next to the network, and the Wi-Fi icon indicating a connection will appear in the top-right corner of the screen.

* Once connected, a `Login Required` message may appear. Tap it to launch the Web UI. If that doesn’t happen, wait 10–20 seconds. If it still doesn’t load, open your browser manually and go to: [192.168.254.1](http://192.168.254.1).

#### Connecting to the Same Wi-Fi as the Printer

* Initially, you will be prompted to select a language. After setting the language, tap `Next` to proceed to the Wi-Fi connection interface.<br/>
  <img src=img/Creator_Knomi_Hi/en/language.jpg width="300"/>
* The Creator Knomi Hi will automatically search for available Wi-Fi networks in the vicinity. If your desired Wi-Fi network does not appear, you can tap the `Scan` button to initiate a new search for networks.<br/>
Select the printer’s connected Wi-Fi network, enter the password, and tap `Connect`.<br/>
  <img src=img/Creator_Knomi_Hi/en/wifi.jpg width="300"/>
* Once the connection is established, tap `Binding` to proceed to the `Printer` interface where you will bind the printer.<br/>
  <img src=img/Creator_Knomi_Hi/en/goto_printer.jpg width="300"/>

#### Printer Binding

##### Auto Scan

* In the Web UI, go to the `Printer` page, set the scan port (default for Creality Hi is `7125`) and tap `Scan`.<br/>
  Scanning may take 50–300 seconds depending on how many devices are on your network. If the desired printer isn’t found after scanning, you can tap `Scan` again to retry, or manual enter the printer information directly.<br/>
  <img src=img/Creator_Knomi_Hi/en/printer.jpg width="300"/>
* After scanning, select your printer. The IP/Device Name and port will fill in automatically
* Tap `Bind`. A `Binding successful` popup will confirm that the Creator Knomi Hi has connected to the printer.<br/>
  <img src=img/Creator_Knomi_Hi/en/bind_ok.jpg width="300"/>
* You’re all set—Creator Knomi Hi is now connected to your printer!

##### Manual Entry

> * The scan works by pinging all IPs in the LAN and sending HTTP GET requests to each on the selected port. If valid printer data is returned, it is listed. However, not all printers may be detected. In such cases, manual entry is recommended.
> * If your LAN has few printers but still fails to detect them, try manual binding. If connection fails, your router may be blocking inter-device LAN traffic. Contact support at support01@bigtree-tech.com  for help.


* Find the printer’s IP and enter it in the Web UI:
    * ①	`Settings`<br/>
      <img src=img/Creator_Knomi_Hi/hi_1.webp width="600"/>
    * ② `Network` -> ③ `IP`<br/>
      <img src=img/Creator_Knomi_Hi/hi_2.webp width="600"/>
    * The default port is `7125`
* Tap `Bind`. A "Binding successful" popup will confirm that the Creator Knomi Hi has connected to the printer.<br/>
  <img src=img/Creator_Knomi_Hi/en/bind_ok.jpg width="300"/>
* Congratulations! Your Creator Knomi Hi is now set up and ready to use. Enjoy exploring its features!

### GIF Status Explanation

* Due to hardware limitations, Creator Knomi Hi requires that the size of a single GIF not exceed 1.5MB (1536KB, 1MB = 1024KB), and the total size of all GIFs must not exceed 3MB (3072KB, 1MB = 1024KB).
* In the factory state, the total size of all GIFs is 1374.06KB (slightly different from the sum of all sizes in the table above due to rounding each GIF's size to two decimal places), leaving 1697.94KB of available space.

| | File Name in Web UI | GIF Effect | Conditions for Display (Printer must be bound) | Factory GIF Size | Factory GIF Resolution (Width x Height) |
| :-----| :-----| :----: | :----: | :----: | :----: |
| 1 | standby.gif  | <img src=img/Creator_Knomi_Hi/standby.gif /> | The printer is idle. | 242.21KB | 240 x 240 |
| 2 | nozzle_heating.gif  | <img src=img/Creator_Knomi_Hi/nozzle_heating.gif /> | Nozzle is heating up. | 146.11KB | 240 x 240 |
| 3 | bed_heating.gif  | <img src=img/Creator_Knomi_Hi/bed_heating.gif /> | Bed is heating up. | 72.74KB | 240 x 240 |
| 4 | bed_leveling.gif  | <img src=img/Creator_Knomi_Hi/bed_leveling.gif /> | Auto-leveling. | 133.82KB | 240 x 240 |
| 5 | homing.gif  | <img src=img/Creator_Knomi_Hi/homing.gif /> | Homing. | 149.86KB | 240 x 240 |
| 6 | z_tilting.gif  | <img src=img/Creator_Knomi_Hi/z_tilting.gif /> | Z-axis leveling. | 172.79KB | 240 x 240 |
| 7 | nozzle_cleaning.gif  | <img src=img/Creator_Knomi_Hi/nozzle_cleaning.gif /> | Nozzle is being cleaned. | 82.4KB | 240 x 240 |
| 8 | xy_input_shaper.gif  | <img src=img/Creator_Knomi_Hi/xy_input_shaper.gif /> | Calibrating input shaping. | 59.44KB | 240 x 240 |
| 9 | filament_cut.gif  | <img src=img/Creator_Knomi_Hi/filament_cut.gif /> | Cutting filament. | 12.56KB | 240 x 240 |
| 10 | Filament_pull_back_cur.gif  | <img src=img/Creator_Knomi_Hi/filament_pull_back_cur.gif /> | Retracting filament. | 108.79KB | 240 x 240 |
| 11 | filament_purge_old.gif  | <img src=img/Creator_Knomi_Hi/filament_purge_old.gif /> | Purging old filament. | 17.51KB | 240 x 240 |
| 12 | printing_ok.gif  | <img src=img/Creator_Knomi_Hi/printing_ok.gif /> | Printing complete. | 18.4KB | 240 x 240 |
| 13 | printing.gif  | <img src=img/Creator_Knomi_Hi/printing.gif /> | Printing in progress. | 157.43KB | 240 x 240 |

### Screen Saver

> To prevent screen burn-in from long exposure to static images, Creator Knomi Hi includes a built-in screen saver. Every 15 seconds, a screen saver GIF (non-customizable) will appear for 2 seconds.

* The screen saver GIF is as follows:<br/>
  <img src=img/Creator_Knomi_Hi/screen_saver.gif />
* The screen saver is active on the following interfaces:
    * Invalid IMG Interface
    * Hello Screen at Factory Settings
    * Wi-Fi Scan Completion
    * Wi-Fi Connection Failure
    * Wi-Fi Password Error
    * Binding Printer Interface
    * Printer Scan Completion
    * Printer Unready


### Wi-Fi & IP Settings

<img src=img/Creator_Knomi_Hi/en/wifi_ip.jpg width="300"/>

* ①	Tap the `Wi-Fi & IP` option.
* ②	To change the Wi-Fi network that Creator Knomi Hi connects to, tap `Configure Wi-Fi`, this will take you back to the Wi-Fi configuration interface.
  > <font size="2">Note: When the Creator Knomi Hi switches to a different Wi-Fi network, it will connect to a new local network and IP address. If your device is connected to the same Wi-Fi network as Creator Knomi Hi at the time of this change, you will lose the ability to communicate with it. To reconnect, you'll need to join the new Wi-Fi network to which Creator Knomi Hi has connected. <br/>
However, to avoid losing connection during this transition, it is recommended to connect your device to the Creator Knomi Hi's AP hotspot before initiating any changes to the Wi-Fi settings. This way, you can manage the network settings without disrupting your connection to the device.</font>
* ③	After configuring the network, ensure that your devices (phone, computer, etc.) are connected to the same local network as Creator Knomi Hi.<br/>
Access the Web UI by entering the IP address into your browser’s address bar. To avoid forgetting the IP address, consider bookmarking it on your phone’s home screen.
* ④	Alternatively, if your devices are on the same network as Creator Knomi Hi, you can access the Web UI using the hostname, which by default is `Creator_Knomi_Hi` (accessible via  [http://CreatorKnomiHi.local](http://CreatorKnomiHi.local)  , hostname is not case-sensitive).<br/>Note that if a VPN is active on your device, you may need to use the IP address directly, as accessing by hostname might fail.<br/>Setting the Hostname:<br/>
    * The hostname must consist only of letters (a-z, A-Z), numbers (0-9), and hyphens (-), and must start with a letter.
    * The hostname must be at least 8 characters long and no more than 32 characters.  (If firmware is `v1.0.2` or earlier, max is 15 characters to avoid boot failure. To support longer names, update to firmware version V1.0.3 or later.)

    After choosing a new hostname, tap `Set Hostname` to update Creator Knomi Hi. A popup will confirm the successful change. The device must be restarted for the hostname change to take effect. This can be initiated by tapping `OK` in the confirmation popup, or postponed by closing the popup with the `x` button.<br/>
    <img src=img/Creator_Knomi_Hi/en/hostname.jpg width="300"/>

### AP Interface

> <font size="2">If your device is connected to the Creator Knomi Hi AP hotspot to access the Web UI, any changes or shutdown of the Creator Knomi Hi AP settings will disconnect the device. To prevent this, it is recommended to connect your device to the same local network as Creator Knomi Hi before making changes.</font>

<img src=img/Creator_Knomi_Hi/en/ap.jpg width="300"/>

* ①	Access the `AP` interface.
* ②	Toggle the Creator Knomi Hi AP hotspot on or off.
When the AP hotspot is off, the device will no longer connect to Creator Knomi Hi’s hotspot for Web UI access. Before disabling it, ensure you record Creator Knomi Hi’s IP address on the current Wi-Fi network. Devices on the same Wi-Fi can still access the Web UI via this IP.
* ③	Modify the Creator Knomi Hi AP hotspot settings. The default configuration is:<br/>
  Wi-Fi Name:  `Creator_Knomi_Hi_xxxxxxxxxxxx`<br/>
  Wi-Fi Password: `987654321`<br/>
  IP Address:  `192.168.254.1`<br/>
  > <font size="2">Note: <br/>Changing only the name/password takes effect immediately.<br/>
  Changing the IP address requires a reboot.</font>

## Theme Settings & Sharing IMG Files

### Theme Settings <a id="theme-settings"></a>

<img src=img/Creator_Knomi_Hi/en/theme_1_2_3_4_5.jpg width="300"/>
<img src=img/Creator_Knomi_Hi/en/theme_6.jpg width="300"/>
<img src=img/Creator_Knomi_Hi/en/settings_7_8.jpg width="300"/>

* ①	Go to the `Theme` interface.
* ②	Choose how to display printing progress:
    * `Only percentage`: Displays real-time printing progress as a percentage
    * `Only GIF`: Displays a GIF representing the printing process.
    * `Alternating percentage and GIF`: Alternates between showing the percentage and GIF every 10 seconds.
* ③	Set GIF Colors<br/>
  <img src=img/Creator_Knomi_Hi/en/picker.jpg width="300"/>
    * a) Tap to open the color setting interface for the GIF.
    * b) Use the HSL Color Wheel. ( [What is HSL?](https://zh.wikipedia.org/wiki/HSL%E5%92%8CHSV%E8%89%B2%E5%BD%A9%E7%A9%BA%E9%97%B4)）
    * c) H (Hue) ranges from 0° to 360°.
    * d) S (Saturation) ranges from 0% to 100%.
    * e) L (Lightness) ranges from 0% to 100%.
    * f) The hex RGB value — each value ranges from 0 to 255 (0x00 to 0xFF). You can directly modify this value to get your desired color. For example, the value #CCFF4D shown in the image means:
        * R (Red): 0xCC (204/255)
        * G (Green): 0xFF (255/255)
        * B (Blue): 0x4D (77/255)
    * g) The HSLA Values — Hue (H) ranges from 0–360°, Saturation (S) from 0–100%, and Lightness (L) from 0–100%. You can directly edit these values to achieve your desired color.
  For example, the value hsla(77, 100%, 65%) shown in the image means:
        * H (Hue): 77°
        * S (Saturation): 100%
        * L (Lightness): 65%
    * h) Tap to reset to the original GIF color.
    * i) Preview the color in the preview area.
* ④	View GIF Storage Usage：Due to Creator Knomi Hi’s hardware limitations, the total size of all GIFs cannot exceed 3MB (3072KB). If this limit is exceeded, the Web UI will block the update and display a pop-up reminder.
* ⑤	Set Each GIF Individually, including color and custom GIF images：<br/>
  Turn `Preview Mode` on/off to show/hide the `Preview` button. Tapping `Preview this GIF` enters preview mode, allowing you to view the custom GIF on the screen. To exit preview mode, turn off `Preview Mode` or navigate away from the `Theme` interface.<br/>
  Custom GIF Notes:<br/>
    * The screen resolution of the Creator Knomi Hi is `240 × 240 pixels` (width × height). GIFs larger than this will not display correctly. Only GIFs that are `240 × 240 pixels` or smaller are supported. If your GIF exceeds this size, we recommend resizing it using an online tool like [https://www.iloveimg.com/resize-image/resize-gif](https://www.iloveimg.com/resize-image/resize-gif)
        * Click `Select images` or drag your GIF into the upload area.
        * Ensure `Maintain aspect ratio` is checked to prevent distortion.
        * Set the larger value—either `Width (px)` or `Height (px)`—to 240 or less. If both are equal, you can adjust either.
        * Click `Resize IMAGES`.
        * After processing, click `Download resized IMAGES` to save your optimized GIF.
    * Each individual GIF must be no larger than 1.5MB (1536KB). The total size of all GIFs must not exceed 3MB (3072KB).
    * When replacing a built-in GIF, the new GIF's size must not exceed the sum of the original GIF size and the remaining available space. You can check the available space in `④` and each GIF’s size in `⑤`.<br/>Example:<br/>&ensp;&nbsp;To replace `standby.gif` (242.21KB) with 1697.94KB of remaining space, the new GIF must be ≤ 1940.15KB(242.21KB + 1697.94KB).
* ⑥	Export your custom GIFs as an `.img` file for easy backup or sharing.
* ⑦	⑧ Import a shared `.img` file into Creator Knomi Hi to apply the custom theme.

### Download IMG Theme and Apply to Creator Knomi Hi
* Download IMG Theme File
    * Download a `.img` theme file from the community
* Open Creator Knomi Hi’s Web UI: ① `Settings` -> ② `Select .img file`，select the .img file you just downloaded. Once the update is complete, Creator Knomi Hi will automatically apply the new IMG file.<br/>
  <img src=img/Creator_Knomi_Hi/en/img_web_upload.jpg width="300"/>

### Export IMG File from Creator Knomi Hi

* In Web UI: Go to ① `Theme` -> ② Export IMG, and wait for the file to export.<br/>
  <img src=img/Creator_Knomi_Hi/en/img_web_download.jpg width="300"/>

## Factory Reset

> <font size="2">Restoring the factory settings of Creator Knomi Hi will erase all configurations, including language, Wi-Fi settings, custom hostname, custom AP hotspot name and password, bound printers, print progress display selection. However, custom GIFs cannot be restored to the factory defaults. GIFs can only be modified by uploading new ones or updating the IMG file. </font>

### Via Web UI

* Go to the ①`Settings` interface and tap the ②`Factory Reset`<br/>
  <img src=img/Creator_Knomi_Hi/en/factory_1.jpg width="300"/>
* A confirmation popup will appear, tap ③`YES` to confirm and reset. Creator Knomi Hi will restore the factory settings and restart. <br/>
  <img src=img/Creator_Knomi_Hi/en/factory_2.jpg width="300"/>

### Via Hardware Button

Hold the Boot button on Creator Knomi Hi for 5 seconds to reset the factory settings. It will restart automatically.<br/>
<img src=img/Creator_Knomi_Hi/boot.jpg width="300"/>

## Firmware

### Feature Requests

Want a new feature added in the next firmware release? Submit a request on Creator Knomi Hi github repo:

[Submit a Feature Request](https://github.com/bigtreetech/Creator_Knomi_Hi/issues)

### How to Update Firmware

#### OTA

* Open the Web UI
  > <font size="2">You can access it by connecting your device to the same Wi-Fi as Creator Knomi Hi or by connecting to Creator Knomi Hi’s AP hotspot.</font>
    * Option A: Connect via local network：
        * Ensure your device (phone/computer) is connected to the same Wi-Fi network as your Creator Knomi Hi.
        * Open a browser and go to Creator Knomi Hi’s IP or hostname (e.g., `http://CreatorKnomiHi.local`). If VPN is active, use the IP address instead.
    * Option B: Connect via AP hotspot:
        * Connect to Creator Knomi Hi’s hotspot on your phone (iPhone Example):
            * Go to `Settings`-> `WLAN`.
            * Enable `WLAN`, your phone will automatically scan for available networks.<br/>
              <img src=img/Creator_Knomi_Hi/wlan.webp width="300"/> <br/>
            * Tap the network name that starts with `Creator_Knomi_Hi_` then enter the default password：`987654321`.
            * Once connected: A blue checkmark will appear next to the network name. The Wi-Fi icon will be visible in the top-right corner of your phone screen.
        * After connecting, you should see a message such as `Connected (Login Required)`. Tap this message to launch the Web UI configuration page.<br/>
        If the page doesn't open automatically, wait about 10–20 seconds.<br/>
        If it still doesn’t appear, open Safari and manually enter: [192.168.254.1](http://192.168.254.1)
* In Web UI: Go to ① `Settings`-> ② Tap `Select .bin file`, then select the firmware file, after uploading, Creator Knomi Hi will reboot automatically.<br/>
  <img src=img/Creator_Knomi_Hi/en/firmware.jpg width="300"/>

#### Flash via flash_download_tool (USB Type-C)

> <font size="2">Note: Creator Knomi Hi should be able to perform OTA updates automatically. This step is only necessary when OTA is unavailable.</font>

* If your computer does not have the CH340 driver, please download and install [CH341SER.EXE](https://www.wch.cn/downloads/CH341SER_EXE.html)
* Download [Flash Download Tools](https://www.espressif.com/zh-hans/support/download/other-tools)<br/>
  <img src=img/Creator_Knomi_Hi/en/download_esp_tool.webp width="800"/>
* Download the [Creator Knomi Hi Firmware](https://github.com/bigtreetech/Creator_Knomi_Hi)
* Hold the Boot button on Creator Knomi Hi, connect it via Type-C to your computer, and a new COM port should appear in the device manager.<br/>
  <img src=img/Creator_Knomi_Hi/boot_fw.jpg width="300"/>
* Open `flash_download_tool_3.9.8_6.exe` and configure as follows:<br/>
  <img src=img/Creator_Knomi_Hi/open_esp_tool.webp width="400"/>
* As shown in the figure below, configure the burning software:<br/>
  <img src=img/Creator_Knomi_Hi/set_esp_tool.webp width="400"/>
    * ①	Set the.bin file's burning address, ensuring all checkboxes are ticked:
        * `creator_knomi_hi_bootloader.bin` to `0x1000`
        * `creator_knomi_hi_partitions.bin` to `0x8000`
        * `creator_knomi_hi_ota_data.bin` to `0xe000`
        * `creator_knomi_hi_01.00.00.00.bin` to `0x10000`
        * `creator_knomi_hi_01.00.00.00.img` to `0x910000`
    * ②	Set the COM port to the Creator Knomi Hi port (check in Device Manager) and choose a baud rate (recommended: `460800`)
    * ③	Click `START` to begin burning. Once done, power off and restart Creator Knomi Hi.


### Firmware Version History <a id="firmware_history"></a>

#### [01.00.00.00](https://github.com/bigtreetech/Creator_Knomi_Hi/tree/master/Firmware/01.00.00.00)

* Initial factory firmware release.

## Technical Support
Was this page helpful?
For any questions or issues, please email:`support01@bigtree-tech.com`
