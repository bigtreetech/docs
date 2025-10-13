# KNOMI2

<img src=img/KNOMI2/KNOMI2_Title.png width="600" />

## **Product Overview**

The BIGTREETECH KNOMI V2.0 is a compact touchscreen display developed by Shenzhen BIQU Innovation Technology Co., Ltd. for 3D printer nozzle monitoring and control. Its intuitive touch interface simplifies machine operation, offering seamless interaction for users.

**Product Link:** [BIGTREETECH Official Website](https://biqu.equipment/products/bigtreetech-knomi-v1-0)

## **Key Features**

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

!!! note
    For detailed structural and setup information, refer to the [KNOMI 2 USER GUIDE.PDF](https://github.com/bigtreetech/KNOMI/blob/master/KNOMI2/Manual/KNOMI%202%20User%20Manual%2020240109.pdf)

## Performance Comparison Test

!!! question
    Does KNOMI 2 affect StealthBurner performance?

Our custom-designed StealthBurner Main Body integrates KNOMI 2 seamlessly while maintaining optimal airflow and heat dissipation. The modified design includes a top ventilation opening, ensuring no compromise in cooling efficiency.

<img src=img/KNOMI2/KNOMI2_IN0.png width="300" />

<img src=img/KNOMI2/KNOMI2_IN.png width="300" />

!!! note "Printed Parts"
	Download The Printed Parts from [Bigtreetech/Knomi](https://github.com/bigtreetech/KNOMI)

## Mounting Plate

Before beginning installation, make sure you have both printed parts ready. Due to size constraints and airflow requirements, the mounting plate uses a snap-fit design. Note that this design may wear out with repeated removal and reinstallation. We recommend printing extra copies for convenience.

Our performance testing compared airflow velocity and acoustic levels between the standard StealthBurner and the modified KNOMI-equipped version. The results demonstrated equivalent cooling performance and noise output between both configurations, confirming that the KNOMI integration - including its additional ventilation features - maintains the StealthBurner's original operational performance without compromise.

<img src=img/KNOMI/KNOMI_IN3.png width="600" />

## Packing List

<img src=img/KNOMI2/KNOMI2_IN2.png width="600" />

## Overview

<img src=img/KNOMI2/KNOMI2_IN3.png width="600" />

## **CONFIGURING WIFI**

<img src=img/KNOMI2/KNOMI2_WIFI1.png width="600" />

<img src=img/KNOMI2/KNOMI2_WIFI2.png width="600" />

<img src=img/KNOMI2/KNOMI2_WIFI3.png width="600" />

!!! note "Wi-Fi Compatibility"
    Due to device compatibility issues, KNOMI 2 cannot configure networks with `WPA PSK encryption`.If you experience connection issues during setup, please verify your router's encryption settings in the admin panel and change it to `WPA/WPA2 PSK` mixed mode or another supported encryption protocol to establish a successful connection.
    
### Knomi Disconnected

<div class="div-table">
    <img src=img/KNOMI2/KNOMI2_WIFI4.png width="250" class="right-image">
    <p>This status on KNOMI 2 indicates it has lost connection to the WiFi hotspot. Potential causes:</p>
    <ol>
        <li>You changed the WiFi name or password, requiring a long press of the BOOT button to get to the HELLO interface and reconfigure KNOMI 2's network connection.</li>
        <li>KNOMI 2 is too far from the WiFi hotspot, resulting in poor signal quality.</li>
    </ol>
</div>

## Install Knomi To Stealthburner

<img src=img/KNOMI2/KNOMI2_IN4.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN5.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN6.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN7.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN8.png width="600" />

<img src=img/KNOMI2/KNOMI2_IN9.png width="600" />

!!! tip "Power Cable Routing"
	<div class="div-table">
        <img class="right-image" src=img/KNOMI2/KNOMI2_IN10.png width="300">
        <p>As shown, guide KNOMI 2's power cable through the hole in the printed part, and then direct it towards the rear of the EBB SB0000 CAN.</p>
		<p>If you are not using the EBB SB0000 CAN or a similar tool board, after routing the power cable as shown in the diagram, connect it to your motherboard or other power source.</p>
    </div>

## Adding Relevant Macros

<img src=img/KNOMI2/KNOMI2_ADD1.png width="450" />

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

If the printer has a QGL feature

<img src=img/KNOMI2/KNOMI2_ADD2.png width="500" />

```
[gcode_macro QUAD_GANTRY_LEVEL]
rename_existing: BTT_QUAD_GANTRY_LEVEL
gcode:
	SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=True
	BTT_QUAD_GANTRY_LEVEL
	SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=False
```

If there is no QGL but there is a Z_TILT function, you can follow the settings below :

<img src=img/KNOMI2/KNOMI2_ADD3.png width="600" />

```
[gcode_macro QUAD_GANTRY_LEVEL]
gcode:
	SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=True
	Z_TILT_ADJUST
	SET_GCODE_VARIABLE MACRO=_KNOMI_STATUS VARIABLE=qgling VALUE=False
```

## Updating Firmware

Enter http://knomi.local into your browser to access the KNOMI 2 network configuration page. Scroll to the bottom of the page and click `Update FW`.

<img src=img/KNOMI2/KNOMI2_UPDATE1.png width="600" />

Click on `Choose File` on the firmware update page.

<img src=img/KNOMI2/KNOMI2_UPDATE2.png width="600" />

Select the `xxx.bin` file.

<img src=img/KNOMI2/KNOMI2_UPDATE3.png width="600" />

The firmware will automatically update over-the-air.

<img src=img/KNOMI2/KNOMI2_UPDATE4.png width="600" />

Upon completing the firmware update, KNOMI 2 will automatically reboot. You'll see a confirmation message on both the device screen and web interface indicating the update was successful
You may now click the `Back` to return to  KNOMI 2's main network configuration interface.

<img src=img/KNOMI2/KNOMI2_UPDATE5.png width="600" />

## KNOMI UI

!!! note "Knomi Control UI Instruction & Gesture Operation"
	KNOMI 2's touchscreen supports swipe gestures (up/down/left/right) for navigation and long presses for selections.

### Main Interface

<img src=img/KNOMI2/KNOMI2_UI1.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI2.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI3.png width="600" />

### How To Extrude And Retract Filament?

Swipe right from the Standby UI to access the Extruding/Retracting Filament interface.

<img src=img/KNOMI2/KNOMI2_UI4.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI5.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI6.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI7.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI8.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI9.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI10.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI11.png width="600" />

### How To Adjust The Temperature Of The Nozzle/bed?

Swipe left from the Standby UI to access the Nozzle/Heated Bed Temperature Settings interface.

<img src=img/KNOMI2/KNOMI2_UI12.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI13.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI14.png width="600" />

### Manual Temperature Adjustment Is Not Required

<img src=img/KNOMI2/KNOMI2_UI15.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI16.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI17.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI18.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI19.png width="600" />

## Advanced setting 

please only use it if you fully understand its specific function.

### Config mDNS URL

KNOMI has built-in mDNS. You can enter `http://knomi.local` in the browser (The default hostname is KNOMI. If users have modified it, please use the custom name instead of `knomi` in the URL, the URL characters are case-insensitive), or view the IP address on the Knomi Info.

### Adjust Knomi UI Colors?

<img src=img/KNOMI2/KNOMI2_UI20.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI21.png width="600" />

You can further customize the saturation and brightness:
After choosing a color from the wheel, long-press the outer black area to cycle through saturation adjustment, brightness adjustment, and return to the RGB color wheel.

<img src=img/KNOMI2/KNOMI2_UI22.png width="600" />

Your selected saturation/brightness settings remain applied when you return to the RGB color wheel.
<img src=img/KNOMI2/KNOMI2_UI23.png width="600" />

### Adjust Brightness?

<img src=img/KNOMI2/KNOMI2_UI24.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI25.png width="600" />

### KNOMI UI Status Icons

KNOMI UI uses visual elements to provide status information at different stages of printer operation :

<img src=img/KNOMI2/KNOMI2_UI26.png width="600" />

<img src=img/KNOMI2/KNOMI2_UI27.png width="600" />

## FAQ

<img src=img/KNOMI2/KNOMI2_FAQ1.png width="600" />

## Where to Buy & Support

**Purchase KNOMI 2:**

(https://biqu.equipment/products/bigtreetech-knomi-2-for-voron-stealthburner?_pos=2&_psq=knomi&_ss=e&_v=1.0)



**Need assistance? Submit a support ticket.**

https://biqu3d.com/pages/submit-a-ticket



**Official Channels**

BIQU Official Website：                            				http://biqu3d.com

BIGTREETECH Official Website：            				 http://bigtree-tech.com

Online Store：                                           				 https://biqu.equipment

**Community & Discussion**

BIGTREETECH Official Group: 								  https://www.facebook.com/groups/bigtreetech

Discord: 																	   https://discord.gg/hhZsV7zk

Reddit:																		  https://www.reddit.com/r/BIGTREETECH/
