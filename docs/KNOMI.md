# KNOMI

<img src=img/KNOMI/KNOMI_Title.webp width="450">

## **Product Profile**

KNOMI is a mini round screen designed specifically for Klipper running 3D printers, offering users a unique and personalized way to monitor their printer's operation. The screen displays important information through KNOMI UI, such as heated bed temperature, nozzle temperature, leveling status, printing progress, etc. KNOMI is an open-source product, allowing users to customize the user interface and design mounting brackets to fit their specific 3D printer.

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-knomi-v1-0?variant=40556258492514)

## Features Highlights

- KNOMI UI-based display for quick and easy monitoring of printer status
- User-friendly, wireless communication through WiFi
- Open-source enables effortless customization and adaptation of KNOMI to various 3D printers with provided 3D model files, while also allowing personalized user interfaces to suit preferences
- Compatibility with Voron StealthBurner using our custom printed part files
- Wide input voltage range (DC 5V-24V) for convenient power supply
- Reserved Type-C port for DIY burning, increasing versatility
- Full-view screen for accurate color representation from any angle

!!! note
    For information about KNOMI structure, please click [KNOMI USER GUIDE.PDF](https://github.com/bigtreetech/KNOMI/blob/master/KNOMI1/KNOMI%201%20User%20Manual%2020241214.pdf)

    <img src=img/KNOMI/KNOMI_IN.webp width="200">

## Performance Comparison Test

!!! question
    DOES USING KNOMI IMPACT YOUR STEALTHBURNER'S PERFORMANCE?

We will offer the customized mounting printed part files for you to effortlessly install KNOMI onto your Voron Stealthburner, in which the StealthBurner main body retains the original fan position and incorporates additional vents on the top for enhanced compatibility and optimized heat dissipation.

<img src=img/KNOMI/KNOMI_IN1.webp width="300" />

<img src=img/KNOMI/KNOMI_IN2.webp width="300" />

## Mounting Plate

Prior to starting the installation procedure, it is advised to have these two printed parts readily available. Owing to size limitations and air duct considerations, the Mounting Plate has been engineered with a snap-fit design. This may be prone to damage during repeated disassembly and assembly. It is recommended to print additional backup pieces for convenience.

We conducted a comparative analysis measuring wind speed and acoustic energy levels between the original StealthBurner and our customized version featuring vents and KNOMI add-on. The results showed that both versions performed similarly, indicating that adding KNOMI will not compromise the performance of the StealthBurner. 

<img src=img/KNOMI/KNOMI_IN3.webp width="600" />

## Packing List

<img src=img/KNOMI/KNOMI_IN4.webp width="600" />

## Overview

<img src=img/KNOMI/KNOMI_IN19.webp width="600" />

!!! abstract "Wiring Experience"
    To optimize the user wiring experience, the latest Knomi power connector has been upgraded to a **vertical type**.

## Connecting Knomi

### Configuring Wifi

<div class="div-table">
    <img src=img/KNOMI/KNOMI_IN6.webp width="300" class="right-image">
    <h4 id="activate-the-hello-interface">Activate The Hello Interface</h4>
    <ol>
        <li>Power KNOMI using either the Type-C or MX1.25 interface.</li>
        <li>While KNOMI is powered on, press and hold the BOOT button for 5 seconds.</li>
        <li>Wait for KNOMI to display the HELLO message then release the BOOT button.</li>
    </ol>
</div>

!!! tip
    <div class="div-table">
        <img class="right-image" src=img/KNOMI/KNOMI_IN7.webp width="300">
        <p>Alternatively, following the installation's completion, the BOOT button may be pressed using a slender tool, such as a hex key.</p>
    </div>

    !!! warning
        Be careful not to slip and touch any of the other electronics!

### Connect Knomi to Wi-Fi

!!! note "Wi-Fi Compatibility"
    Due to device compatibility issues, KNOMI cannot configure networks with `WPA PSK encryption`.If you encounter an error configuring your network with KNOMI, please check the encryption method of your router and switch it to `WPA/WPA2 PSK` mixed mode or another compatible mode.

1. Using a Wi-Fi-enabled device, locate and connect to the “BTT-KNOMI" network.

    <img src=img/KNOMI/KNOMI_IN8.webp width="300">

2. Allow your browser to automatically open the confifiguration page.

3. Input your local area network Wi-Fi credentials and the printer IP address in the  designated fields.

4. Select “Submit" to save your settings.

5. Upon seeing the submission success page, close the browser.

6. Allow about 10 seconds for the display screen to transition to the standard working interface following a successful network connection.

### Knomi Disconnected

<div class="div-table">
    <img src=img/KNOMI/KNOMI_IN9.webp width="250" class="right-image">
    <p>If KNOMI is displaying this interface, it means that KNOMI is disconnected from the printer. 
    This may be caused by the following problems:</p>
    <ol>
        <li>You have modified the Wi-Fi name or password, causing KNOMI and the printer to be in different network states. To resolve this, press and hold the BOOT button on the side of KNOMI for 5 seconds to enter the "HELLO" interface. From there, you can reconfigure the network connection.</li>
        <li>The printer has a network failure and cannot establish a network connection with KNOMI. To resolve this, try restarting your 3D printer.</li>
    </ol>
</div>

## Install Knomi To Stealthburner

<img src=img/KNOMI/KNOMI_IN10.webp width="500" />

<img src=img/KNOMI/KNOMI_IN11.webp width="500" />

<img src=img/KNOMI/KNOMI_IN12.webp width="500" />

<img src=img/KNOMI/KNOMI_IN13.webp width="500" />

<img src=img/KNOMI/KNOMI_IN14.webp width="500" />

<img src=img/KNOMI/KNOMI_IN15.webp width="500" />

## Adding Relevant Macros

<img src=img/KNOMI/KNOMI_IN16.webp width="450" />

```
[gcode_macro BED_MESH_CALIBRATE]
rename_existing: BED_MESH_CALIBRATE_BASE
variable_probing:False

gcode:
    SET_GCODE_VARIABLE MACRO=BED_MESH_CALIBRATE VARIABLE=probing VALUE=True
    BED_MESH_CALIBRATE_BASE
    SET_GCODE_VARIABLE MACRO=BED_MESH_CALIBRATE VARIABLE=probing VALUE=False
 
[gcode_macro G28]
rename_existing: G0028
variable_homing:False

gcode:
    SET_GCODE_VARIABLE MACRO=G28 VARIABLE=homing VALUE=True
    G0028
    SET_GCODE_VARIABLE MACRO=G28 VARIABLE=homing VALUE=False
```

## Homing And Leveling
KNOMI requires the addition of relevant macros for homing and leveling within the `printer.cfg` file. Access the print control interface by entering the Klipper IP address into your browser, locate the config Files directory containing `printer.cfg`, and insert the following macro 
definitions. Once completed, `save` and `exit`.

## Update Firmware

!!! info "Highlights of upgrading KNOMI 1 to KNOMI 2 UI"
    OTA (Over-the-Air) functionality has been added, allowing users to complete firmware upgrades online simply by dragging the firmware file into the Web interface.

    The WiFi configuration Web interface has been optimized, enabling users to search for and select the desired WiFi connection directly on the Web page.

    The KNOMI 2 UI has been upgraded with a completely new design, added QGL leveling UI, making the display effect more vivid. 

    Fixed the Bug of the print progress percentage, and achieved display synchronization with Mainsail/Klipperscreen.

    Fixed other known bugs.

### How to Update 

1. Please click on the link to download the burning tool  https://www.espressif.com.cn/en/support/download/other-tools

    <img src=img/KNOMI/KNOMI_UPDATE1.webp width="500" />

2. Please click to download [Firmware](https://github.com/bigtreetech/KNOMI)

3. Press and hold the button on knomi1 and connect it to the computer via USB.

4. Run `flash_download_tool`

    <img src=img/KNOMI/KNOMI_UPDATE2.webp width="500" />

5. Select esp32

    <img src=img/KNOMI/KNOMI_UPDATE3.webp width="400" />

6. Unzip downloaded Firmware. Click `...` to add 3 corresponding bin files, and manually enter the corresponding bin file offset address after `@` (note that the bin file name corresponds to the address). Select COM for knomi1. Click `START` to start downloading, wait for the progress bar to end and prompt completion;

    <img src=img/KNOMI/KNOMI_UPDATE4.webp width="400" />

7. Unplug the USB and plug it back in (re power on), and you can see that the display screen displays the content normally, indicating successful flash firmware.

## Customize UI

### Image conversion

1. We have provided seventeen customizable gifs in knomi.

    <img src=img/KNOMI/KNOMI_GIF.webp width="400" />

    Click to download [KNOMI GIF](https://github.com/bigtreetech/KNOMI/tree/master/KNOMI_GIF). You must change your GIF to the same name and pixel as the GIF what you want to replace. You can click on [here (English)](https://www.gifgit.com/gif/resize)or  [here (Chinese)](https://www.gif.cn/) to modify your GIF pixels and right-click to view the GIF's.

    For more GIF pixels, please click on [Knomi Picture Pixels](KNOMI.md#picture-pixels)

    <img src=img/KNOMI/KNOMI_Tip.webp width="400" />

2. Click [bigtreetech/KNOMI/firmware](https://github.com/bigtreetech/KNOMI/tree/firmware) to download the KNOMI1 project. Using [Visual Studio Code](https://marlinfw.org/docs/basics/install_platformio_vscode.html) to open the project and enter lvgl_ Gif.cpp file.

    <img src=img/KNOMI/KNOMI_Tip1.webp width="400" />

3. Right click on the GIF you want to replace and click on Go To Definition.

    <img src=img/KNOMI/KNOMI_Tip2.webp width="400" />

4. Can see the structure and data type header.cf of GIF

    <img src=img/KNOMI/KNOMI_Tip3.webp width="400" />

5. Click on the link to enter the GIF conversion tool https://lvgl.io/tools/imageconverter

    <img src=img/KNOMI/KNOMI_Tip4.webp width="400" />

6. Click on BROWSE and select the new replacement GIF，The Color format selects the same data type as the original GIF

    <img src=img/KNOMI/KNOMI_Tip5.webp width="400" />

!!! note 
    After selecting `CF_RAW_CHROMA`, it will display as `CF_RAW`, please ignore this issue

7. The Output format select `C array`, and click on Convert.

    <img src=img/KNOMI/KNOMI_Tip6.webp width="400" />

8. Replace the generated `gif_standby.c` file with the source file with the same name in the knomi project.

    <img src=img/KNOMI/KNOMI_Tip7.webp width="400" />

9. Click Compile.

    <img src=img/KNOMI/KNOMI_Tip8.webp width="400" />

10. After the compilation is completed, connect KNOMI to the computer through using the USB Type C connector.  Click on download, and once the download is completed, power on KNOMI again.

    <img src=img/KNOMI/KNOMI_Tip9.webp width="400" />

### Picture Pixels

<img src=img/KNOMI/KNOMI_gif1.webp width="500" />

<img src=img/KNOMI/KNOMI_gif2.webp width="500" />

<img src=img/KNOMI/KNOMI_gif3.webp width="500" />

<img src=img/KNOMI/KNOMI_gif4.webp width="500" />

<img src=img/KNOMI/KNOMI_gif5.webp width="500" />

<img src=img/KNOMI/KNOMI_gif6.webp width="500" />

<img src=img/KNOMI/KNOMI_gif7.webp width="500" />

## Product Purchase Link

**Purchase Link:**

https://biqu.equipment/products/bigtreetech-knomi-v1-0

**If you have any issues with the product, please submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket


**Navigation:**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
