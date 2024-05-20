# KNOMI

<img src=img/KNOMI/KNOMI_Title.png width="600" />

## **Product Profile**

KNOMI is a mini round screen designed specifically for Klipper running 3D printers, offering users a unique and personalized way to monitor their printer's operation. The screen displays important information through the KNOMI UI, such as heated bed temperature, nozzle temperature, leveling status, printing progress, etc. KNOMI is an open-source product, allowing users to customize the user interface and design mounting brackets to fit their specific 3D printer.

## **Features Highlights**

- KNOMI UI-based display for quick and easy monitoring of printer status
- User-friendly, wireless communication through WiFi
- Open-source enables effortless customization and adaptation of KNOMI to various 3D printers with provided 3D model files, while also allowing personalized user interfaces to suit preferences
- Compatibility with Voron StealthBurner using our custom printed part files
- Wide input voltage range (DC 5V-24V) for convenient power supply
- Reserved Type-C port for DIY burning, increasing versatility
- Full-view screen for accurate color representation from any angle

<img src=img/KNOMI/KNOMI_IN.png width="600" />

<font  color="red">**For information about KNOMI structure, please click**</font> :[KNOMI USER GUIDE.PDF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI USER GUIDE.pdf)

## **PERFORMANCE COMPARISON TEST**

<font  color="red">**DOES USING KNOMI IMPACT YOUR STEALTHBURNER'S PERFORMANCE?**</font> 

We will offer the customized mounting printed part files for you to effortlessly install KNOMI onto your Voron Stealthburner, in which the StealthBurner main body retains the original fan position and incorporates additional vents on the top for enhanced compatibility and optimized heat dissipation.

<img src=img/KNOMI/KNOMI_IN1.png width="600" />

<img src=img/KNOMI/KNOMI_IN2.png width="600" />

<font  color="red">**MOUNTING PLATE**</font> 

Prior to starting the installation procedure, it is advised to have these two printed parts readily available. Owing to size limitations and air duct considerations, the Mounting Plate has been engineered with a snap-fit design. This may be prone to damage during repeated disassembly and assembly. It is recommended to print additional backup pieces for convenience.



We conducted a comparative analysis measuring wind speed and acoustic energy levels between the original StealthBurner and our customized version featuring vents and KNOMI add-on. The results showed that both versions performed similarly, indicating that adding KNOMI will not compromise the performance of the StealthBurner. 

<img src=img/KNOMI/KNOMI_IN3.png width="600" />

## **PACKING LIST**

<img src=img/KNOMI/KNOMI_IN4.png width="600" />

## **OVERVIEW**

<img src=img/KNOMI/KNOMI_IN5.png width="600" />

## **CONFIGURING WIFI**

<img src=img/KNOMI/KNOMI_IN6.png width="600" />

<font  color="red">**ACTIVATE THE HELLO INTERFACE**</font> 

Power KNOMI using either the Type-C or MX1.25 interface.

While KNOMI is powered on, press and hold the BOOT button for 5 seconds. 

Wait for KNOMI to display the HELLO message then release the BOOT button.

Alternatively, following the installation's completion, the BOOT button may be pressed using a slender tool, such as a hex key.

<img src=img/KNOMI/KNOMI_IN7.png width="600" />

<font  color="red">**COMPATIBILITY**</font> 

Due to device compatibility issues, KNOMI cannot configure networks with WPA PSK encryption.If you encounter an error configuring your network with KNOMI, please check the encryption method of your router and switch it to WPA/WPA2 PSK mixed mode or another compatible mode.

<img src=img/KNOMI/KNOMI_IN8.png width="600" />

<font  color="red">**CONNECTING TO KNOM**</font> 

1.Using a Wi-Fi-enabled device, locate and connect to the “BTT-KNOMI" network.

2.Allow your browser to automatically open the confifiguration page.

3.Input your local area network Wi-Fi credentials and the printer IP address in the  designated fields.

4.Select “Submit" to save your settings.

5.Upon seeing the submission success page, close the browser.

6.Allow about 10 seconds for the display screen to transition to the standard working interface following a successful network connection.



<font  color="red">**CONFIGURING WIFI**</font> 

<img src=img/KNOMI/KNOMI_IN9.png width="600" />

<font  color="red">**KNOMI DISCONNECTED**</font> 

If KNOMI is displaying this interface, it means that KNOMI is disconnected from the printer. 
This may be caused by the following problems:

1.You have modified the Wi-Fi name or password, causing KNOMI and the printer to be in different network states. To resolve this, press and hold the BOOT button on the side of KNOMI for 5 seconds to enter the "HELLO" interface. From there, you can reconfigure the network connection.

2.The printer has a network failure and cannot establish a network connection with KNOMI. 
To resolve this, try restarting your 3D printer.



## **INSTALL KNOMI TO STEALTHBURNER**

<img src=img/KNOMI/KNOMI_IN10.png width="600" />



<img src=img/KNOMI/KNOMI_IN11.png width="600" />

<img src=img/KNOMI/KNOMI_IN12.png width="600" />

<img src=img/KNOMI/KNOMI_IN13.png width="600" />

<img src=img/KNOMI/KNOMI_IN14.png width="600" />

<img src=img/KNOMI/KNOMI_IN15.png width="600" />

## **ADDING RELEVANT MACROS**

<img src=img/KNOMI/KNOMI_IN16.png width="600" />

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

<font  color="red">**HOMING AND LEVELING**</font> 

KNOMI requires the addition of relevant macros for homing and leveling within the printer.cfg file. Access the print control interface by 
entering the Klipper IP address into your browser, locate the config Files directory containing printer.cfg, and insert the following macro 
definitions. Once completed, save and exit.

## **Update Firmware**

The highlights of upgrading KNOMI 1 to KNOMI 2 UI are as follows:
1. OTA (Over-the-Air) functionality has been added, allowing users to complete firmware upgrades online simply by dragging the firmware file into the Web interface.

2. The WiFi configuration Web interface has been optimized, enabling users to search for and select the desired WiFi connection directly on the Web page.

3. The KNOMI 2 UI has been upgraded with a completely new design, added QGL leveling UI, making the display effect more vivid. 

4. Fixed the Bug of the print progress percentage, and achieved display synchronization with Mainsail/Klipperscreen.

5. Fixed other known bugs.

   

1、Please click on the link to download the burning tool  https://www.espressif.com.cn/en/support/download/other-tools

<img src=img/KNOMI/KNOMI_UPDATE1.png width="600" />

2、Please click to download [Firmware](https://raw.githack.com/bigtreetech/docs/master/docs/download/Firmware.zip)

3、<font  color="red">**Press and hold the button on knomi1 and connect it to the computer via USB.**</font> 

4、Click on .exe

<img src=img/KNOMI/KNOMI_UPDATE2.png width="600" />

5、Select esp32

<img src=img/KNOMI/KNOMI_UPDATE3.png width="600" />

5、Unzip downloaded Firmware. Click "..." to add 3 corresponding bin files, and manually enter the corresponding bin file offset address after "@" (note that the bin file name corresponds to the address). Select COM for knomi1.Click "START" to start downloading, wait for the progress bar to end and prompt completion;

<img src=img/KNOMI/KNOMI_UPDATE4.png width="600" />

6、Unplug the USB and plug it back in (re power on), and you can see that the display screen displays the content normally, indicating successful burning;

## **Customize UI**

### **Image conversion**

1、We have provided seventeen customizable gifs in knomi.

<img src=img/KNOMI/KNOMI_GIF.png width="600" />

2、Click to download [KNOMI GIF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI_GIF.zip) . You must change your GIF to the same name and pixel as the GIF what you want to replace. You can click on [here (English)](https://www.gifgit.com/gif/resize)or  [here (Chinese)](https://www.gif.cn/) to modify your GIF pixels and right-click to view the GIF's.

For more GIF pixels, please click on https://bigtreetech.github.io/docs/KNOMI.html#picture-pixels

<img src=img/KNOMI/KNOMI_Tip.png width="600" />

3、Click https://github.com/bigtreetech/KNOMI/tree/firmware to download the KNOMI1project. Using Visual Studio Code https://marlinfw.org/docs/basics/install_platformio_vscode.html to open the project and enter lvgl_ Gif.cpp file.

<img src=img/KNOMI/KNOMI_Tip1.png width="600" />

4、Right click on the GIF you want to replace and click on Go To Definition.

<img src=img/KNOMI/KNOMI_Tip2.png width="600" />

5、Can see the structure and data type header.cf of GIF

<img src=img/KNOMI/KNOMI_Tip3.png width="600" />

6、Click on the link to enter the GIF conversion tool https://lvgl.io/tools/imageconverter

<img src=img/KNOMI/KNOMI_Tip4.png width="600" />

7、Click on BROWSE and select the new replacement GIF，The Color format selects the same data type as the original GIF

<img src=img/KNOMI/KNOMI_Tip5.png width="600" />

<font  color="red">**Note:After selecting CF_RAW_CHROMA, it will display as CF_RAW, please ignore this issue**</font> 

8、The Output format select C array,and click on Convert.

<img src=img/KNOMI/KNOMI_Tip6.png width="600" />

9、Replace the generated gif_standby. c file with the source file with the same name in the knomi project.

<img src=img/KNOMI/KNOMI_Tip7.png width="600" />

10、Click Compile.

<img src=img/KNOMI/KNOMI_Tip8.png width="600" />

11、After the compilation is completed, connect KNOMI to the computer through using the USB Type C connector.  Click on download, and once the download is completed, power on KNOMI again.

<img src=img/KNOMI/KNOMI_Tip9.png width="600" />

### **Picture Pixels**

<img src=img/KNOMI/KNOMI_gif1.png width="600" />

<img src=img/KNOMI/KNOMI_gif2.png width="600" />

<img src=img/KNOMI/KNOMI_gif3.png width="600" />

<img src=img/KNOMI/KNOMI_gif4.png width="600" />

<img src=img/KNOMI/KNOMI_gif5.png width="600" />

<img src=img/KNOMI/KNOMI_gif6.png width="600" />

<img src=img/KNOMI/KNOMI_gif7.png width="600" />



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
