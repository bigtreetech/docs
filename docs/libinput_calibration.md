# libinput_calibration

!!! note "Befor start"
    The current purpose of this step is only for `TFT35_SPI` resistive touch screen. If your capacitive touch screen (such as HDMI5, HDMI7, Pad7, etc.) has inaccurate touch, you can also experiment with this calibration step, but it may not solve the problem because the capacitive screen has been calibrated before leaving the factory and is directly read from the coordinates, rather than calculated through adc sampling values like a resistive screen.

    Anyway, the experiment will not cause any losses

## xinput_calibrator

### Install `xinput_calibrator`

Use command below to update and install `xinput-calibrator`

``` shell
sudo apt update
sudo apt install xinput-calibrator
```

### Find ID of touchscreen 

Query the ID of the touchscreen, The name of TFT35_SPI is `ns2009` or `TSC2007`, as shown in the figure the id is `6`

``` shell
DISPLAY=:0 xinput_calibrator --list
```

<img src=img/tft35_spi_id.png width="500"/></br>

### Start Calibration

Start calibration, Click on the center of the cross that appears one by one on the screen. Replace the id with the actual id found in the previous step. Record the parameters of `click 0 X`, `click 0 Y`, `click 3 X`, and `click 3 Y`, which are required for conversion.

``` shell 
DISPLAY=:0 xinput_calibrator -v --device <id>
```

<img src=img/tft35_spi_calibration.png width="600"/>
  
## Convert to libinput

The parameter of `xinput_calibrator` cannot be directly used for `libinput` and needs to be converted. Please refer to [ArchLinux Wiki](https://wiki.archlinux.org/title/Talk:Calibrating_Touchscreen#Libinput%5Fbreaks%5Fxinput%5Fcalibrator) for details.

### Conversion Script

Use `sudo nano libinput_calibrator.sh` to create conversion script, Copy and paste the following content.

``` bash title="libinput_calibrator.sh"
#!/bin/bash

#according to https://wiki.archlinux.org/title/Talk:Calibrating_Touchscreen#Libinput%5Fbreaks%5Fxinput%5Fcalibrator

screen_width=$1
screen_height=$2
click_0_X=$3
click_0_Y=$4
click_3_X=$5
click_3_Y=$6

re='^[0-9]+$'
if ! [[ $screen_width =~ $re ]] ; then
  echo "error: screen_width=\"$screen_width\" Not a number" >&2; exit 1
fi
if ! [[ $screen_height =~ $re ]] ; then
  echo "error: screen_height=\"$screen_height\" Not a number" >&2; exit 1
fi
if ! [[ $click_0_X =~ $re ]] ; then
  echo "error: click_0_X=\"$click_0_X\" Not a number" >&2; exit 1
fi
if ! [[ $click_0_Y =~ $re ]] ; then
  echo "error: click_0_Y=\"$click_0_Y\" Not a number" >&2; exit 1
fi
if ! [[ $click_3_X =~ $re ]] ; then
  echo "error: click_3_X=\"$click_3_X\" Not a number" >&2; exit 1
fi
if ! [[ $click_3_Y =~ $re ]] ; then
  echo "error: click_3_Y=\"$click_3_Y\" Not a number" >&2; exit 1
fi

#a = (screen_width * 6 / 8) / (click_3_X - click_0_X)
#c = ((screen_width / 8) - (a * click_0_X)) / screen_width
#e = (screen_height * 6 / 8) / (click_3_Y - click_0_Y)
#f = ((screen_height / 8) - (e * click_0_Y)) / screen_height

a=$(awk "BEGIN { printf(\"%.6f\", ($screen_width * 6 / 8) / ($click_3_X - $click_0_X))}")
c=$(awk "BEGIN { printf(\"%.6f\", (($screen_width / 8) - ($a * $click_0_X)) / $screen_width)}")
e=$(awk "BEGIN { printf(\"%.6f\", ($screen_height * 6 / 8) / ($click_3_Y - $click_0_Y))}")
f=$(awk "BEGIN { printf(\"%.6f\", (($screen_height / 8) - ($e * $click_0_Y)) / $screen_height)}")

CONFIG_OPTION="Option \"CalibrationMatrix\" "
CONFIG_LINE="\"$a 0.000000 $c 0.000000 $e $f 0.000000 0.000000 1.000000\""

echo "${CONFIG_OPTION}${CONFIG_LINE}"
echo ""

CONFIG_OPTION="Option \"CalibrationMatrix\" "
CONFIG="/usr/share/X11/xorg.conf.d/40-libinput.conf"
INPUT_CLASS="Identifier \"libinput touchscreen catchall\""
if [ -e "${CONFIG}" ]; then
    ks_restart=0
    grep -e "^\        ${CONFIG_OPTION}${CONFIG_LINE}" ${CONFIG} > /dev/null
    STATUS=$?
    if [ $STATUS -eq 1 ]; then
        sudo sed -i "/${CONFIG_OPTION}/d" ${CONFIG}
        sudo sed -i "/${INPUT_CLASS}/a\        ${CONFIG_OPTION}${CONFIG_LINE}" ${CONFIG}
        echo "Written to file:"
        echo "    ${CONFIG}"
        echo ""
        ks_restart=1
    fi

    # restart KlipperScreen
    if [ ${ks_restart} -eq 1 ];then
        sudo service KlipperScreen restart
    fi

    echo "run:"
    echo "    DISPLAY=:0 xinput list-props <device>"
    echo "to check if the calibration parameters are effective"
    echo ""
fi
```

Use command below to add executable permissions

``` shell
sudo chmod +x libinput_calibrator.sh
```

Then run `libinput_calibrator.sh` to convert calibration parameters

``` shell 
sudo ./libinput_calibrator.sh <screen width> <screen height> <click_0 X> <click_0 Y> <click_3 X> <click_3 Y>
```

`<screen width>`: Screen horizontal resolution, TFT35 SPI is `480`</br>
`<screen height>`: Screen vertical resolution, TFT35 SPI is `320`</br>
`<click_0 X>`: The `X` position of `click 0` during the previous step calibration</br>
`<click_0 Y>`: The `Y` position of `click 0` during the previous step calibration</br>
`<click_3 X>`: The `X` position of `click 3` during the previous step calibration</br>
`<click_3 Y>`: The `Y` position of `click 3` during the previous step calibration</br>

for example:

``` shell 
sudo ./libinput_calibrator.sh 480 320 61 35 417 281
```

The script will automatically convert and write parameters to the configuration file, and then reset KlipperScreen if installed. You can check whether the configuration is effective through the command `DISPLAY=:0 xinput list-props <id>`
<img src=img/tft35_spi_convert.png width="700"/>

## **FAQ**

**Q: How to rotate TFT35_SPI direction**

A: The direction of `TFT35_SPI` cannot be modified through the configuration in `system.cfg` currently, it can only be rotated by modifying the `.dts` file.

For detailed steps, please refer to [bigtreetech/TFT35-SPI issues 7](https://github.com/bigtreetech/TFT35-SPI/issues/7)

https://www.youtube.com/watch?v=tA7uRC17F6U
