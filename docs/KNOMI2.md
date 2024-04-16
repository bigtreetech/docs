# KNOMI2

<img src=img/KNOMI2/KNOMI2_Title.png width="600" />

## **Introduction**

The BIGTREETECH KNOMI V2.0 screen is a screen developed by the 3D printing team of Shenzhen BIQU Innovation Technology Co., Ltd. for printer nozzle display. Support for touch, making it convenient for customers to perform machine control operations.

## **Main Features**

<table border="1">
	<tr>
        <td colspan="5"><center><b>Screen</b></center></td>
	<tr>
        <td><center><b>Display Size</b></center></td><td><center><b>1.28inches</b></center></td></tr>
	<tr>
    	<td><center><b>Display Area</b></center></td><td><center><b>32.4(H)mm x 32.4(V)mm</b></center></td></tr>
	<tr>
    	<td><center><b>Resolution</b></center></td><td><center><b>240RGB x 240dots</b></center></td></tr>
    <tr>
		<td><center><b>Viewing Angle</b></center></td><td><center><b>178°</b></center></td></tr>
    <tr>
		<td><center><b>Backlight Brightness</b></center></td><td><center><b>400Cd/m2</b></center></td></tr>
	<tr>
		<td><center><b>Backlight Lifespan</b></center></td><td><center><b>>20,000hours</b></center></td></tr>
	<tr>
		<td><center><b>Chip</b></center></td><td><center><b>>GC9A01</b></center></td></tr>
    <tr>
        <td colspan="5"><center><b>Power Supply</b></center></td>
	<tr>
        <td><center><b>Input</b></center></td><td><center><b>DC 5V 1A</b></center></td></tr>
	<tr>
        <td><center><b>Logic Voltage</b></center></td><td><center><b>DC 3.3V</b></center></td></tr>
	<tr>
        <td><center><b>Rated Power</b></center></td><td><center><b>5W</b></center></td></tr>
	<tr>
        <td colspan="5"><center><b>Communication & Memory</b></center></td>
	<tr>
        <td><center><b>Communication</b></center></td><td><center><b>ESP32-WIFI 802.11 b/g/n (802.11n, up to 150 Mbps), operating center frequency range: 2412 - 2484 MHz</b></center></td></tr>
	<tr>
        <td><center><b>Screen Communication</b></center></td><td><center><b>SPI</b></center></td></tr>
	<tr>
      	<td><center><b>Wireless Connectivity</b></center></td><td><center><b>Onboard 2.4GHz Wi-Fi + Bluetooth Low Energy (BLE) SoC IEEE 802.11 b/g/n (2.4GHz Wi-Fi) and Bluetooth 5 (LE)</b></center></td></tr>
	<tr>
        <td><center><b>Flash</b></center></td><td><center><b>16MB</b></center></td></tr>
	<tr>
        <td><center><b>PSRAM</b></center></td><td><center><b>8MB</b></center></td></tr>
	<tr>
        <td colspan="5"><center><b>Operating & Storage Conditions</b></center></td>
	<tr>
        <td><center><b>Firmware Support</b></center></td><td><center><b>Klipper</b></center></td></tr>
	<tr>   
        <td><center><b>Operating Temperature</b></center></td><td><center><b>-20°C to 70°C</b></center></td></tr>
	<tr>  
        <td><center><b>Storage Temperature</b></center></td><td><center><b>-30°C to 80°C</b></center></td></tr>
	<tr>  
</table>

<font  color="red">**For information about KNOMI2 structure, please click**</font> :[KNOMI 2 User Manual.pdf](https://raw.githack.com/bigtreetech/docs/master/docs/download/KNOMI 2 User Manual.pdf)

## **PERFORMANCE COMPARISON TEST**

<font  color="red">**DOES USING KNOMI 2 IMPACT YOUR STEALTHBURNER'S PERFORMANCE?**</font> 

We have customized installation print parts for KNOMI 2, facilitating its easy installation into your Voron StealthBurner. In particular, 
our StealthBurner Main Body not only retains the original fan positions but also incorporates a circular ventilation opening at the top, 
enhancing compatibility and optimizing heat dissipation.

<img src=img/KNOMI2/KNOMI2_IN0.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN.png width="600" />

<font  color="red">**DOWNLOAD THE PRINTED PARTS**</font> 

https://github.com/bigtreetech/KNOMI

<font  color="red">**MOUNTING PLATE**</font> 

Before you start the assembly, we recommend preparing these two printed parts in advance. The Mounting Plate is designed with a snap-on feature due to size limitations and considerations for the air duct design. This may cause some wear and tear through repeated disassembling and reassembling. Hence, we suggest printing several extra copies of this part for future use.



We conducted a comparative analysis measuring wind speed and acoustic energy levels between the original StealthBurner and our customized 
version featuring vents and KNOMI 2 add-on. The results showed that both versions performed similarly, indicating that adding KNOMI 2 will not 
compromise the performance of the StealthBurner.

<img src=img/KNOMI2/KNOMI2_IN1.png width="600" />

## **PACKING LIST**

<img src=img/KNOMI2/KNOMI2_IN2.png width="600" />

## **OVERVIEW**

<img src=img/KNOMI2/KNOMI2_IN3.png width="600" />

## **CONFIGURING WIFI**

<img src=img/KNOMI2/KNOMI2_WIFI1.png width="600" />

<img src=img/KNOMI2/KNOMI2_WIFI2.png width="600" />

<img src=img/KNOMI2/KNOMI2_WIFI3.png width="600" />

<font  color="red">**ROUTER ENCRYPTION MODE**</font> 

Due to device compatibility issues, KNOMI 2 cannot configure networks with WPA PSK encryption mode. If you're having trouble getting your 
network to configure successfully with KNOMI 2, please check the encryption mode of your router. You may need to switch your router's 
encryption to a mode like WPA/WPA2 PSK mixed mode, or another mode.

<img src=img/KNOMI2/KNOMI2_WIFI4.png width="600" />

<font  color="red">**CONNECTION LOST**</font> 

This status on KNOMI 2 indicates it has lost connection to the WiFi hotspot. Potential causes:
1. You changed the WiFi name or password, requiring a long press of the BOOT button to get 
 to the HELLO interface and reconfigure KNOMI 2's network connection.
2. KNOMI 2 is too far from the WiFi hotspot, resulting in poor signal quality.

## **INSTALL KNOMI TO STEALTHBURNER**

<img src=img/KNOMI2/KNOMI2_IN4.png width="600" />



<img src=img/KNOMI2/KNOMI2_IN5.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN6.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN7.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN8.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN9.png width="600" />

<font  color="red">**POWER CABLE ROUTING**</font> 

As shown, guide KNOMI 2's power cable through the hole in the printed part, and then direct it towards the rear of the EBB SB0000 CAN.

<img src=img/KNOMI2/KNOMI2_IN10.png width="600" />

<font  color="red">**Power Supply**</font> 

If you are not using the EBB SB0000 CAN or a similar tool board, after routing the power cable as shown in the diagram, connect it to your motherboard or other power source.

## **ADDING RELEVANT MACROS**

<img src=img/KNOMI2/KNOMI2_ADD1.png width="600" />

```
[gcode_macro _KNOMI_STATUS]
variable_homing: False
variable_probing: False
variable_qgling: False
variable_heating_nozzle: False
variable_heating_bed: False
gcode:

[gcode_macro M109]
rename_existing: M109.1
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=heating_nozzle VALUE=True
 M109.1 {rawparams}
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=heating_nozzle VALUE=False
 
[gcode_macro M190]
rename_existing: M190.1
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=heating_bed VALUE=True
 M190.1 {rawparams}
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=heating_bed VALUE=False
 
[gcode_macro G28]
rename_existing: G28.1
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=homing VALUE=True
 G28.1 {rawparams}
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=homing VALUE=False
 
[gcode_macro BED_MESH_CALIBRATE]
rename_existing: BTT_BED_MESH_CALIBRATE
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=probing VALUE=True
 BTT_BED_MESH_CALIBRATE
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=probing VALUE=False
```

<font  color="red">**If the printer has a QGL feature :**</font> 

<img src=img/KNOMI2/KNOMI2_ADD2.png width="600" />

```
[gcode_macro QUAD_GANTRY_LEVEL]
rename_existing: BTT_QUAD_GANTRY_LEVEL
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=True
 BTT_QUAD_GANTRY_LEVEL
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=False
```

<font  color="red">**If there is no QGL but there is a Z_TILT function, you can follow the settings below :**</font> 

<img src=img/KNOMI2/KNOMI2_ADD3.png width="600" />

```
[gcode_macro QUAD_GANTRY_LEVEL]
gcode:
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=True
 Z_TILT_ADJUST
 SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=False
```

## **UPDATING FIRMWARE**

Enter http://knomi.local into your browser to access the KNOMI 2 network configuration page. Scroll to the bottom of the page and click “Update FW”.

<img src=img/KNOMI2/KNOMI2_UPDATE1.png width="600" />

Click on“Choose File”on the firmware update page.

<img src=img/KNOMI2/KNOMI2_UPDATE2.png width="600" />

Select the xxx.bin file.

<img src=img/KNOMI2/KNOMI2_UPDATE3.png width="600" />

The firmware will automatically update over-the-air.

<img src=img/KNOMI2/KNOMI2_UPDATE4.png width="600" />

KNOMI 2 will reboot to indicate a successful update. The page will also show information that the update succeeded.
At this point, you can click “Back” to return to the main KNOMI 2 network configuration interface.

<img src=img/KNOMI2/KNOMI2_UPDATE5.png width="600" />

## **KNOMI UI**

<font  color="red">**KNOMI CONTROL UI INSTRUCTION & GESTURE OPERATION**</font> 

KNOMI 2 supports full-screen touch, swiping up, down, left, and right, as well as long press operations.

<font  color="red">**Main Interface**</font> 

<img src=img/KNOMI2/KNOMI2_UI1.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI2.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI3.png width="600" />

<font  color="red">**HOW TO EXTRUDE AND RETRACT FILAMENT？**</font> 

Swipe right from the Standby UI to access the Extruding/Retracting Filament interface.

<img src=img/KNOMI2/KNOMI2_UI4.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI5.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI6.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI7.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI8.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI9.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI10.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI11.png width="600" />

<font  color="red">**HOW TO ADJUST THE TEMPERATURE OF THE NOZZLE/BED?**</font> 

Swipe left from the Standby UI to access the Nozzle/Heated Bed Temperature Settings interface.

<img src=img/KNOMI2/KNOMI2_UI12.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI13.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI14.png width="600" />

<font  color="red">**MANUAL TEMPERATURE ADJUSTMENT IS NOT REQUIRED**</font> 

<img src=img/KNOMI2/KNOMI2_UI15.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI16.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI17.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI18.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI19.png width="600" />

**1、Advanced setting - please only use it if you fully understand its specific function.**

**2、KNOMI has built-in mDNS. You can enter "http://knomi.local" in the browser (The default hostname is KNOMI. If users have modified** 
**it, please use the custom name instead of “knomi” in the URL, the URL characters are case-insensitive), or view the IP address on** 
**the "Knomi Info".**

<font  color="red">**HOW TO ADJUST KNOMI UI COLORS?**</font> 

<img src=img/KNOMI2/KNOMI2_UI20.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI21.png width="600" />

You can further customize the saturation and brightness:
After selecting a color on the wheel, long press the black area outside the wheel to cycle through saturation, brightness, and back to the RGB wheel.

<img src=img/KNOMI2/KNOMI2_UI22.png width="600" />

 When you pick a saturation/brightness level, returning to the RGB wheel will show that saturation/brightness.

<img src=img/KNOMI2/KNOMI2_UI23.png width="600" />

<font  color="red">**HOW TO ADJUST BRIGHTNESS?**</font> 

<img src=img/KNOMI2/KNOMI2_UI24.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI25.png width="600" />

<font  color="red">**KNOMI UI Status Icons**</font> 

KNOMI UI uses visual elements to provide status information at different stages of printer operation :

<img src=img/KNOMI2/KNOMI2_UI26.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI27.png width="600" />

## **FAQ**

<img src=img/KNOMI2/KNOMI2_FAQ1.png width="600" />

