# KNOMI

<img src=img/KNOMI/KNOMI_Title.png width="600" />

## **Introduction**

KNOMI is a mini round screen designed specififically for Klipper running 3D printers, offffering users a unique and personalized way to monitor their printer's operation. The screen displays important information through KNOMI UI, such as heated bed temperature, nozzle temperature, leveling status, printing progress, etc. KNOMI is an open-source product, allowing users to customize the user interface and design mounting brackets to fifit their specifific 3D printer.

## **Main Features**

- KNOMI UI-based display for quick and easy monitoring of printer status.
- User-friendly, wireless communication through WiFi.
- Open-source enables effortless customization and adaptation of KNOMI to various 3D printers with provided 3D model files, while also allowing personalized user interfaces to suit preferences.
- Compatibility with Voron StealthBurner using our custom printed part files.
- Wide input voltage range (DC 5V-24V) for convenient power supply.
- Reserved Type-C port for DIY burning, increasing versatility.
- Full-view screen for accurate color representation from any angle.

<img src=img/KNOMI/KNOMI_IN.png width="600" />

<font  color="red">**For information about KNOMI structure, please click**</font> :[KNOMI USER GUIDE.PDF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI USER GUIDE.pdf)

## **PERFORMANCE COMPARISON TEST**

<font  color="red">**DOES USING KNOMI IMPACT YOUR STEALTHBURNER'S PERFORMANCE?**</font> 

We will offffer the customized mounting printed part fifiles for you to effffortlessly install KNOMI into your Voron Stealthburner, in which the StealthBurner main body retains the original fan position and incorporates additional vents on the top for enhanced compatibility and optimized heat dissipation.

<img src=img/KNOMI/KNOMI_IN1.png width="600" />

<img src=img/KNOMI/KNOMI_IN2.png width="600" />

<font  color="red">**MOUNTING PLATE**</font> 

Prior to initiating the installation procedure, it is advised to have these two printed parts readily available. Owing to size limitations and air duct considerations, the Mounting Plate has been engineered with a snap-fifit design. This may be prone to damage during repeated disassembly and assembly. It is recommended to print additional backup pieces for convenience.



We conducted a comparative analysis measuring wind speed and acoustic energy levels between the original StealthBurner and our customized version featuring vents and KNOMI add-on. The results showed that both versions performed similarly, indicatingthat adding KNOMI will not compromise the performance of the StealthBurner. 

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

Due to device compatibility issues, KNOMI cannot confifigure networks with WPA PSK encryption.If you encounter an error confifiguring your network with KNOMI, please check the encryption method of your router and switch it to WPA/WPA2 PSK mixed mode or another compatible mode.

<img src=img/KNOMI/KNOMI_IN8.png width="600" />

<font  color="red">**CONNECTING TO KNOM**</font> 

1.Using a Wi-Fi-enabled device, locate and connect to the “BTT-KNOMI" network.

2.Allow your browser to automatically open the confifiguration page.

3.Input your local area network Wi-Fi credentials and the printer IP address in the  designated fifields.

4.Select “Submit" to save your settings.

5.Upon seeing the submission success page, close the browser.

6.Allow an about 10 seconds for the display screen to transition to the standard  work interface following a successful network connection.



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

<font  color="red">**HOMING AND LEVELING**</font> 

KNOMI requires the addition of relevant macros for homing and leveling within the printer.cfg file. Access the print control interface by 
entering the Klipper IP address into your browser, locate the config Files directory containing printer.cfg, and insert the following macro 
definitions. Once completed, save and exit.

<font  color="red">**KNOMI UI**</font> 

KNOMI user interface employs visual elements during various stages of printer operation to provide status information to the user:

<img src=img/KNOMI/KNOMI_IN17.png width="600" />

<img src=img/KNOMI/KNOMI_IN18.png width="600" />

## **Customize UI**

### **Image conversion**

1、We have provided seventeen customizable gifs in knomi.

<img src=img/KNOMI/KNOMI_GIF.png width="600" />

2、Click to download [KNOMI GIF](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI_GIF.zip) . Must change your GIF to the same name and pixel as the GIF what you want to replace.

<img src=img/KNOMI/KNOMI_Tip.png width="600" />

3、Click https://github.com/bigtreetech/KNOMI to download knomi project . Using VSCODE https://marlinfw.org/docs/basics/install_platformio_vscode.html to open the project and enter lvgl_ Gif.cpp file.

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

<img src=img/KNOMI/KNOMI_Tip7.png width="600" />

9、Replace the generated Standby. c file with the source file with the same name in the knomi project.

<img src=img/KNOMI/KNOMI_Tip10.png width="600" />

10、Click Compile.

<img src=img/KNOMI/KNOMI_Tip8.png width="600" />

11、After the compilation is completed, connect knomi to the computer through TYPE-C, click on download, and once the download is completed, power on knomi again.

<img src=img/KNOMI/KNOMI_Tip9.png width="600" />
