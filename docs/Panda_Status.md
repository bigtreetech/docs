# Panda Status

## Assembly Manual

### Bambu Lab P1S

* Step 1: Print the control board PCB casing. Print file download from [github](https://github.com/bigtreetech/Panda_Status/tree/master/Print_Files) or [Maker world](https://makerworld.com/en/models/1650182-panda-status-upper-shell#profileId-1744587)

    <img src=img/panda_status/case.png width="600"/>

* Step 2: Install the control board into the printed casing, then securely snap on the rear cover.

    <img src=img/panda_status/1.jpg width="600"/>

    <img src=img/panda_status/2.jpg width="600"/>

    <img src=img/panda_status/3.jpg width="600"/>

* Step 3: Remove the PTFE tube silicone plug.

    <img src=img/panda_status/4.jpg width="600"/>

* Step 4: Pass the Type-C end of the power cable through the hole and connect it to the control board, which should already have the casing installed.

    <img src=img/panda_status/7.png width="600"/>

    <img src=img/panda_status/5.jpg width="600"/>

    <img src=img/panda_status/6.jpg width="600"/>

* Step 5: Install the printed casing into the printer (compress the spring to insert it, then release it to secure the casing in place. Push it to the right until it reaches the  approximate position shown in the image below). Connect the power cable for the Panda Status.

    <img src=img/panda_status/10.png width="600"/>

    <img src=img/panda_status/8.jpg width="600"/>

    <img src=img/panda_status/9.jpg width="600"/>

* Step 6: Secure the Type-C power cable and reinsert the silicone plug (leave one end of the silicone plug unsecured).

    <img src=img/panda_status/12.jpg width="600"/>

* Step 7: Secure the Panda Status power cable (route the cable as shown in the image and use the included acetate tape to fix it).

    <img src=img/panda_status/11.jpg width="600"/>

    <img src=img/panda_status/13.jpg width="600"/>

    <img src=img/panda_status/14.jpg width="600"/>

    <img src=img/panda_status/15.jpg width="600"/>

    <img src=img/panda_status/16.jpg width="600"/>

    <img src=img/panda_status/17.jpg width="600"/>

    <img src=img/panda_status/18.jpg width="600"/>

* Step 8: Raise the heated bed, then clean the installation surface with alcohol wipes and a dry cloth.

    <img src=img/panda_status/19.jpg width="600"/>

    <img src=img/panda_status/20.jpg width="600"/>

* Step 9: Plug in the Panda Status power cable, peel off the protective film from the double-sided tape, and attach the Panda Status securely to the front of the heated bed (the best adhesion is achieved after 24 hours).

    <img src=img/panda_status/21.jpg width="600"/>

    <img src=img/panda_status/22.jpg width="600"/>

    <img src=img/panda_status/23.jpg width="600"/>

    <img src=img/panda_status/24.jpg width="600"/>

    <img src=img/panda_status/25.jpg width="600"/>

* Step 10: Route the cables beneath the heated bed (as shown in the image).

    <img src=img/panda_status/27.png width="600"/>

### Bambu Lab A1

* Step 1: Print the controller casing. Print file download from [github](https://github.com/bigtreetech/Panda_Status/tree/master/Print_Files) or [Maker world](https://makerworld.com/en/models/1650182-panda-status-upper-shell#profileId-1744587)

    <img src=img/panda_status/A1_case.png width="600"/>

* Step 2: Install the controller board into the printed casing and securely snap the back cover into place.

    <img src=img/panda_status/A1_1.png width="600"/>

    <img src=img/panda_status/A1_2.png width="600"/>

* Step 3: Mount the printed casing to the back of the printer (use the longer strip of double‑sided tape included in the kit as the backing adhesive for the casing).

    <img src=img/panda_status/A1_3.png width="600"/>

    <img src=img/panda_status/A1_4.png width="600"/>

    <img src=img/panda_status/A1_5.png width="600"/>

* Step 4: Move the heated bed toward the back of the printer (from the printer's perspective) and clean the mounting surface with an alcohol wipe, then a dry cloth.

    <img src=img/panda_status/A1_13.png width="600"/>

* Step 5: Plug in the Panda Status power cable. Peel off the protective film from the double-sided tape and press the Panda Status firmly onto the front of the heated bed. <br> Full bond strength is achieved after 24 hours.

    <img src=img/panda_status/A1_6.png width="600"/>

    <img src=img/panda_status/A1_7.png width="600"/>

    <img src=img/panda_status/A1_8.png width="600"/>

* Step 6: Cut acetate tape to the appropriate length and use it to route and secure the cables along the underside of the heated bed (as shown).

    <img src=img/panda_status/A1_9.png width="600"/>

    <img src=img/panda_status/A1_10.png width="600"/>

    <img src=img/panda_status/A1_11.png width="600"/>

* Step 7: Connect the Panda Status power cable and the controller power cable to the controller board.

    <img src=img/panda_status/A1_12.png width="600"/>

### Note

* The accessories include spare double-sided tape, which can be stacked to install the Panda Status in other positions.

    <img src=img/panda_status/26.jpg width="600"/>

* The product is powered by 5V and can be used with Panda Branch or directly with a USB 5V power plug.

## First Connection 

<a id="reset_config"></a>

When you power up for the first time or restore factory settings, you'll see a blue flowing light, indicating that Panda Status is not yet bound to the printer.

### WiFi Connection Guide

<a id="wifi_connect_ap"></a>

* Connecting to the Panda Status's WiFi_AP Hotspot

    * Connect to the Panda_Status AP hotspot: `Panda_Status_XXXXXXXXXX`. The default password is `987654321`.

        <img src=img/panda_status/en/pc_wifi_list.png width="300"/>

* Accessing the AP Webpage

    * After connecting to the AP, open a browser on your computer and enter the default IP address: `192.168.4.1`. On mobile devices, the Panda_Status Web UI will automatically appear, or you can manually enter the IP address in the browser: `192.168.4.1`.
        For Computer:

        <img src=img/panda_status/en/pc_hello.png width="800"/>

        For Mobile:

        <img src=img/panda_status/en/phone_hello.png width="300"/>

* Select Language (Default: English)

    * After selecting a language, click `Next`.

        <img src=img/panda_status/en/languge.png width="300"/>

<a id="wifi_connect_section"></a>

* WiFi Connection Page

    * Scanning for WiFi

        After the initial setup or a factory reset, this page will automatically scan for available WiFi networks.

        <img src=img/panda_status/en/wifi_scanning.jpg width="300"/>

        Once the scan is complete, a pop-up will appear notifying you that the scan is finished.

        <img src=img/panda_status/en/wifi_scanned.jpg width="300"/>

        Select the WiFi network you want to connect to.

        <img src=img/panda_status/en/phone_wifi_list.jpg width="300"/>

    * Connecting to WiFi

        Type your password and tap the `eye icon` if you'd like to see the password you've entered.

        <img src=img/panda_status/en/wifi_input.jpg width="300"/>

        Click Connect, and the interface will switch to the WiFi connection page, showing `Connecting to WiFi`.

        <img src=img/panda_status/en/wifi_connecting.jpg width="300"/>

        Wait a moment, and a WiFi connection status pop-up will appear.

        * Connection Failed:

            <img src=img/panda_status/en/wifi_falid.jpg width="300"/>

        * Connection Successful: You can either `bind the printer` and proceed to the printer interface or click `Cancel` to stay on the WiFi page.

            <img src=img/panda_status/en/wifi_ok.jpg width="300"/>

### Printer Binding Page

* Elements and Functions

    <img src=img/panda_status/en/printer.png width="300"/>

    * ① Printer Page Selection: When you click the icon, it will turn red to indicate that you are on the Printer page.
    * ② Scan for Printers on the Same Local Network
    * ③ Select the Detected Printer
    * ④ Enter Printer's SN Code
    * ⑤ Enter Printer's Access Code
    * ⑥ Enter Printer's IP Address
    * ⑦ Confirm to Bind This Printer

* How to Bind a Printer (Using P1P as an Example)

    Click `Scan` button. After a short wait, a pop-up will appear confirming that the scan was successful.

    <img src=img/panda_status/en/printer_scanned.jpg width="300"/>

    Select the printer from the list. The printer's SN code and IP address will automatically fill in.

    <img src=img/panda_status/en/printer_list.jpg width="300"/>
    
    Enter the printer's access code: Find the access code in the printer's settings, enter it in the box, and click `Bind` to successfully bind the printer.

    <img src=img/panda_status/en/p1_1_2_3.png width="600"/>

    <img src=img/panda_status/en/p1_4_5.png width="600"/>

    <img src=img/panda_status/en/printer_binding.gif width="300"/>

## Webpage Usage Guide

### WiFi Page

* Elements and Functions

    <img src=img/panda_status/en/wifi_ip.png width="300"/>

    * ① WiFi Page Selection:  When you click the icon, it will turn red to indicate that you are on the WiFi page.
    * ② Current WiFi Connection Status
    * ③ IP Address Icon: Click the icon to display a pop-up. If the IP field is blank, ensure Panda_Status shows "Connected." If it says, "Not Connected," check your network settings.
    * ④ IP Address Display: Entering this IP in your browser will take you to the Web page, as long as you're on the same local network.
    * ⑤ WiFi Network Configuration Button: Click to go to the [WiFi connection page](#wifi_connect_section)
    * ⑥ Host Name: The default hostname is "PandaStatus." If you forget the IP, you can use the hostname followed by "local" in the browser (e.g., http://PandaStatus.local). To modify the hostname, click the text box to edit it, then click "Set Hostname" to confirm.
    * ⑦ Confirm Hostname Modification

### AP Page

* Elements and Functions

    <img src=img/panda_status/en/ap.png width="300"/>

    * ① AP Page Selection:  When you click the icon, it will turn red to indicate that you are on the AP page.
    * ② AP Hotspot Switch
    * ③ AP Name: Default is `Panda_Status_XXXXXXXXXX`
    * ④ AP Password: Default is `987654321`
    * ⑤ Hotspot IP: Default Hotspot IP is "192.168.4.1." If your router's IP range is "192.168.4.xxx," an IP conflict will prevent the device from binding to the printer. Change the Panda_Status hotspot IP to a different range.
    * ⑥ Confirm Button: Clicking this will restart the device. After the restart, you can connect to the AP hotspot.([How to connect to the AP hotspot](#wifi_connect_ap))


### Settings Page

* Elements and Functions

    <img src=img/panda_status/en/settings.jpg width="300"/>

    * ① Settings Page Selection: When you click the icon, it will turn red to indicate that you are on the Settings page.
    * ② Choose Language (Default: English)
    * ③ Show Current Firmware Version
    * ④ Firmware OTA Update: Select a `.bin` file for the update.
        * Click `Select .bin File` to choose the .bin file for the OTA update.

            <img src=img/panda_status/en/fw_upload.png width="300"/>

        * Wait for the progress to complete, and the device will automatically restart once the update is finished.

            <img src=img/panda_status/en/fw_uploading.jpg width="300"/>
            <img src=img/panda_status/en/fw_uploaded.jpg width="300"/>

    * ⑤ Click to Confirm [Restore Factory Settings](#reset_config)


### Control Page

* Elements and Functions

    <img src=img/panda_status/en/rgb.png width="300"/>

    * ① Control Page Selection: When you click the icon, it will turn red to indicate that you are on the Control page.
    * ② Current Device Name
    * ③ Current Device Mode
    * ④ Current Mode's Light Effects
    * ⑤ Brightness
    * ⑥ Speed
    * ⑦ Clicking the `Reset Settings` button will restore the brightness for both Music and H2D modes to the factory default (50%). Additionally, the colors for the three printing states will be reset to their default settings.

* Device Modes 

    * Mode 1: Music (Factory Default Mode)

        <img src=img/panda_status/en/rgb_music.jpg width="300"/>

        Brightness is set to 50% by default, adjustable from 0 to 100%.

        In this mode, RGB lights pulse rhythmically with the audio level, changing color from Blue → Green → Yellow → Orange → Red.
        Specific light effects:

        |-------- Low Audio --------|---- Medium Audio ---- | ---------High Audio --------|
        |---------------------------|-----------------------|-----------------------------|

        <img src=img/panda_status/music.gif width="600"/>

    * Mode 2: H2D Style

        <img src=img/panda_status/en/rgb_h2d.jpg width="300"/>

        Brightness is set to 50% by default, adjustable from 0 to 100%.

        In this mode, the RGB light will display various effects based on the printer's current status, as follows:

        Idle State: White breathing light (customizable color settings for this state: [How to set the color](#rgb_set_color))

        <img src=img/panda_status/printer_idle.gif width="600"/>

        Downloading Files: Yellow flow.

        <img src=img/panda_status/printer_loading.gif width="600"/>

        Pre-print Preparation: Yellow-orange flowing light.

        <img src=img/panda_status/printer_wave.gif width="600"/>

        Printing: White solid light that fills proportionally based on the printing percentage (customizable color settings for this state: [How to set the color](#rgb_set_color))

        <img src=img/panda_status/printer_printing.gif width="600"/>

        Print Completed: Green light stays on for 30 seconds before switching to the idle state light effect (default is white breathing light).

        <img src=img/panda_status/printer_complete.gif width="600"/>

        Print Paused: White breathing light.

        <img src=img/panda_status/printer_pause.gif width="600"/>

        Print Error: Red flashing light (customizable color settings for this state: [How to set the color](#rgb_set_color))

        <img src=img/panda_status/printer_error.gif width="600"/>


<a id="rgb_set_color"></a>

#### Customizing Light Color

* To set the color (using the idle state as an example):
    * In the control page, select the H2D mode. Under the "Color" option, you will see three boxes: Idle-white breathing light, Printing-white solid light that fills based on progress, and Error-red flashing light.

        <img src=img/panda_status/en/rgb_h2d.jpg width="300"/>

    * Select the idle state and click `Confirm` button.

        <img src=img/panda_status/en/rgb_h2d_idle.jpg width="300"/>

    * You will then be directed to the color selection page.

        <img src=img/panda_status/en/rgb_color_block.jpg width="300"/>

        * ① Factory default preset color.
        * ② Custom color

    * After selecting a color block, click `Confirm`.

        <img src=img/panda_status/en/rgb_set_block.jpg width="300"/>

    * The white idle light will change to the selected color, such as sky blue.

        <img src=img/panda_status/en/rgb_idle_ok.jpg width="300"/>

## Firmware History

### [V1.0.0](https://github.com/bigtreetech/Panda_Status/tree/master/Firmware/v1.0.0)
* First released factory firmware.

## Feature Requests

If you'd like to see certain features in the upcoming firmware release, please submit a feature request on the official GitHub repository. 
[Feature Requests](https://github.com/bigtreetech/issues)
