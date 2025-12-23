# pi 自定义 logo

BIGTREETECH Pix/CBx 系统自定义开机 logo

## BIGTREETECH Pi1/CB1 V3.0.0 之前的系统
参考[这里](https://github.com/bigtreetech/armbian-bootlogo)

## BIGTREETECH Pi1/CB1 OS V3.0.0 及其之后的系统, 以及所有的 Pi2/CB2 系统
使用标准的 plymouth theme 主题管理.
<img src=img/custom_logo.webp width="500"/></br>
* 替换系统路径 `/usr/share/plymouth/themes/armbian/` 下的 `bgrt-fallback.webp`(推荐的分辨率是: 256*256px) 和 `watermark.webp` 图片文件</br>
  ```
  sudo mv ./bgrt-fallback.webp /usr/share/plymouth/themes/armbian/bgrt-fallback.webp
  sudo mv ./watermark.webp /usr/share/plymouth/themes/armbian/watermark.webp
  ```
* 如果不想显示 `bgrt-fallback.webp` 或者 `watermark.webp`, 可以通过下面的命令直接删除它们
  ```
  sudo rm /usr/share/plymouth/themes/armbian/bgrt-fallback.webp
  ```
  或者
  ```
  sudo rm /usr/share/plymouth/themes/armbian/watermark.webp
  ```
* `throbber-*.webp` 由脚本根据 `spinner.gif` 动图生成的一系列的 png 图片. 不推荐自定义它, 如果您不喜欢此 spinner, 可以通过下面的命令直接删除它们
  ```
  sudo rm /usr/share/plymouth/themes/armbian/throbber-*
  ```
* 更新 logo
  ```
  sudo plymouth-set-default-theme -R armbian
  ```
* 等待更新命令执行完成, 然后重启系统即可.
* 执行 `sudo apt upgrade` 命令, 可能会从网络自动下载并更新 armbian 的 logo, 如果您不希望发生这种情况, 可以执行下面的命令, 禁止更新 logo
  ```
  sudo apt-mark hold armbian-plymouth-theme
  ```
