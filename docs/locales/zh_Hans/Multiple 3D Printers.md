# 为多台3D打印机安装和配置Klipper

1.首先安装纯净版本的Klipper系统映像;

2.使用CB1运行此系统卡，然后使用自定义的Kiauh脚本安装Klipper，

发送命令:

```
git clone https://github.com/th33xitus/kiauh.git

./kiauh/kiauh.sh
```

等一下，您很快就能进入主菜单:

<img src=img/Multiple_3D_Printers/klipper1.webp width="600" />

3.进入主菜单，发送1（安装）命令; 

再次发送1，选择安装Klipper;

再次发送1，选择Klipper版本，然后提示要安装的号码。如果使用3个单位，请输入3，按enter键，发送y，然后分别命名这三台机器。命名完成后，按Enter键，将进入Klipper安装阶段.

等待安装完成，如下图所示:

<img src=img/Multiple_3D_Printers/klipper2.webp width="600" />

4.完成步骤3后，它将返回到安装菜单，然后发送命令2安装Moonraker，数字也是3，默认情况下它将与步骤3中的数字一致，只需单击Enter，然后发送指令y确认，等待安装完成;

安装完成是这样的，最好记住红色框中的地址。这将是Moonraker添加打印机的地址，通常为7125 7126 7127

<img src=img/Multiple_3D_Printers/klipper3.webp width="600" />

5.完成步骤4后，发送命令3/4以安装您喜欢的接口插件。

在中间，将弹出确认命令。只需发送y并等待安装完成；

<img src=img/Multiple_3D_Printers/klipper4.webp width="600" />

6.完成步骤5后，发送命令5安装KlipperScreen，等待安装完成；

<img src=img/Multiple_3D_Printers/klipper5.webp width="600" />

7.一切正常后，发送命令B返回主菜单。主菜单中的上述选项将显示“Installed”（已安装）文本，表示安装成功；

<img src=img/Multiple_3D_Printers/klipper6.webp width="600" />

9.完成以上步骤后，在网页上添加打印机：

<img src=img/Multiple_3D_Printers/klipper7.webp width="600" />

输入CB1的IP和机器的端口号（步骤4），然后单击添加打印机1:

<img src=img/Multiple_3D_Printers/klipper8.webp width="600" />

打印机2和3具有相同的设置，您需要将端口号更改为7126和7127，如图所示:

<img src=img/Multiple_3D_Printers/klipper9.webp width="600" />

9.为三台机器中的每台添加相应的配置文件。例如，在Printer 1中，单击蓝色命令行（SWITCH TO Printer），然后在MACHINE选项中添加相应的Printer.cfg文件（如果没有mainsail.cfg文件，建议也上传一个。该文件中的[virtual_sdcard]路径可能不同，您可以根据网页右上角的通知铃声进行调整。），然后单击“固件重启”，如图所示:

<img src=img/Multiple_3D_Printers/klipper10.webp width="600" />

这样，打印机1就设置好了，您可以使用控制界面控制打印机1。

<img src=img/Multiple_3D_Printers/klipper11.webp width="600" />

<img src=img/Multiple_3D_Printers/klipper12.webp width="600" />

类似地，打印机2和3也以这种方式设置和切换。
