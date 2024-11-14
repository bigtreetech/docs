# Rodent

<img src=img/rodent/rodent_title.png width="600"/>

## **Product Profile**

The BIGTREETECH Rodent V1.0 is our very first control board designed specifically in collaboration with RatRig for CNC machines. It supports USB and 
RS-485 communication, greatly simplifying the wiring process and providing smooth operation.

## **Feature Highlights**

- MCU: ESP32-D0WD-V3.
- Wi-Fi Capability: Supports 802.11 b/g/n, 802.11 n (2.4 GHz) with maximum speeds of 150 Mbps.
- Integrated Motor Drivers: Onboard four TMC2160 drivers, capable of handling high voltage and current, making them ideal for more powerful motors.
- Power Input Range: DC24V to DC56V at 10A.
- V-MOS Power Input: Accepts DC12V to DC36V with three externally controllable voltage output ports, supporting up to 5A; output voltage depends on the V-MOS input.
- 5 Endstop Switch Interfaces: Support voltage selection of 5V, 12V, and VIN, featuring optocoupler isolation to improve motherboard stability and reduce interference.
- VProbe Control Switch Interface: Support voltage selection of 5V, 12V, and VIN, featuring optocoupler isolation to improve motherboard stability and reduce interference.
- Spindle control interface.
- One PWM output interface (3-10V).
- One TF card interface.
- Firmware Management: Features TYPE-C automatic firmware burning and onboard CH340 for easy updates without external tools. Includes BOOT and RESET buttons for entering DFU mode via USB.
- RS485 Support: Includes a built-in 130R terminal resistor for RS485 communications.
- Expansion Interfaces: Reserved connections for an OLED display (I2C) and Wi-Fi antenna, and supports 3-channel RGB LEDs for customization.

## **Dimensions**

<img src=img/rodent/rodent_dimensions.png width="600"/>

## **Peripheral Interface**

### Pin Description

<img src=img/rodent/rodent_pins.png width="600"/>

## **Interface Details**

### Endstop Switch

<img src=img/rodent/rodent_endstop.png width="600"/>

### VProbe Switch

<img src=img/rodent/rodent_switch.png width="600"/>

### **Spindle**

<img src=img/rodent/rodent_spindle.png width="600"/>

### V-MOS Output Ports

<img src=img/rodent/rodent_v_mos.png width="600"/>

### OLED Display Interface

<img src=img/rodent/rodent_v_mos.png width="600"/>

### Wi-Fi Antenna Interface

<img src=img/rodent/rodent_wifi.png width="600"/>

### LED

<img src=img/rodent/rodent_led.png width="600"/>

## Software Setup

### Firmware Installation

Firmware available at: https://github.com/bdring/FluidNC

### Wi-Fi Configuration Steps

1、Connect to the FluidNC hotspot to access the configuration interface.

<img src=img/rodent/rodent_software1.png width="600"/>

2、Navigate to the FluidNC configuration interface.

<img src=img/rodent/rodent_software2.png width="600"/>

3、Modify Sta/SSID (Wi-Fi name) and Sta/Password (Wi-Fi password), then click "Set" to apply changes.

<img src=img/rodent/rodent_software3.png width="600"/>

4、Restart the FluidNC system to finalize the setup.

<img src=img/rodent/rodent_software4.png width="600"/>

### Configuring the Machine

1、Download rodent.yaml from the file icon. 

<img src=img/rodent/rodent_software5.png width="600"/>

2、Customize your settings by referencing the FluidNC Wiki: http://wiki.fluidnc.com/

3、Click the "Delete icon".

<img src=img/rodent/rodent_software6.png width="600"/>

4、Click "Upload files" to upload rodent.yaml.

<img src=img/rodent/rodent_software7.png width="600"/>

5、Click "Restart Rodent".
