# libinput_校准

## **注释**

此步骤的当前目的仅用于“TFT35_SPI”电阻式触摸屏。如果你的电容式触摸屏（如HDMI5、HDMI7、Pad7等）触摸不准确，你也可以尝试这个校准步骤，但它可能无法解决问题，因为电容式屏幕在出厂前已经校准，并且是直接从坐标中读取的，而不是像电阻式屏幕那样通过adc采样值计算</br>

无论如何，这个实验不会造成任何损失

##  **xinput_校准器**

1.安装`xinput_calibrator`</br>

```
sudo apt update
sudo apt install xinput-calibrator
```
2.查询触摸屏ID，TFT35_SPI名称为`ns2009`或`TSC207`，如图所示ID为`6`</br>

```
DISPLAY=:0 xinput_calibrator --list
```
<img src=/img/tft35_spi_id.webp width="500"/></br>
3.开始校准，单击屏幕上逐个显示的十字的中心。将id替换为在上一步骤中找到的实际id。记录转换所需的参数`点击0 X`、`点击0 Y`、`单击3 X`和`点击3 Y`。</br>

```
DISPLAY=:0 xinput_calibrator -v --device <id>
```
<img src=/img/tft35_spi_calibration.webp width="1200"/>

## **转换为libinput**

__`xinput_calibrator`的参数不能直接用于`libinput`，需要转换。请参阅[此处](https://wiki.archlinux.org/title/Talk:Calibrating_Touchscreen#Libinput%5Fbreaks%5Fxinput%5Fcalibrator)了解详细信息__</br>
1.`sudo nano libinput_calibrator.sh` 创建转换脚本，复制并粘贴以下内容</br>

```
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
2.`sudo chmod +x libinput_calibrator.sh` 添加可执行权限
3.运行`libinput_calibrator.sh`转换校准参数</br>

```
sudo ./libinput_calibrator.sh <screen width> <screen height> <click_0 X> <click_0 Y> <click_3 X> <click_3 Y>
```

`<screen width>`: 屏幕水平分辨率，TFT35 SPI为 `480`</br>
`<screen height>`: 屏幕垂直分辨率，TFT35 SPI为 `320`</br>
`<click_0 X>`: 上一步校准过程中`点击0`的`X`位置</br>
`<click_0 Y>`: 上一步校准过程中`点击0`的`Y`位置</br>
`<click_3 X>`: 上一步校准过程中`点击3`的`X`位置</br>
`<click_3 Y>`: 上一步校准过程中`点击3`的`Y`位置</br>
例如:</br>

```
sudo ./libinput_calibrator.sh 480 320 61 35 417 281
```
</br>
脚本将自动转换参数并将其写入配置文件，然后重置KlipperScreen（如果已安装）。您可以通过命令检查配置是否有效 `DISPLAY=:0 xinput list-props <id>`
<img src=/img/tft35_spi_convert.webp width="1200"/>

## **FAQ**

**问： 如何旋转TFT35_SPI方向**

答： `TFT35_SPI`的方向目前无法通过`system.cfg`中的配置进行修改，只能通过修改`.dts`文件进行旋转。.
有关详细步骤，请参阅此处：</br>
https://github.com/bigtreetech/TFT35-SPI/issues/7</br>
https://www.youtube.com/watch?v=tA7uRC17F6U
