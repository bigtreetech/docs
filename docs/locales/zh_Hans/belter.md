# Belter

<img src="/img/Belter/Belter_title.webp" width="600" />

**产品链接：** [BIGTREETECH 官方网站](https://biqu.equipment/products/biqu-belter-belt-tension-tool)

**GitHub 链接：** [bigtreetech/Belter-belt-tension-Tool](https://github.com/bigtreetech/Belter-belt-tension-Tool)

## 简介

Belter 是一款皮带张力测量工具，可帮助你测量并估算皮带张力。它配备直观的数字显示屏，读数清晰，使皮带张力调节更加方便。

## 产品亮点

- **数字显示：** 提供直观、清晰的张力读数。
- **精密结构：** 采用轻量化阳极氧化铝合金支架，以获得稳定、准确的测量结果。
- **单手操作：** 支持便捷、高效的单手测量。

## 规格参数

- **产品名称：** Belter
- **支架材质：** 阳极氧化铝
- **单位切换：** inch/mm
- **电源：** 1 × CR2032 3 V 纽扣电池（随产品附送）

## 产品结构

<img src="/img/Belter/Belter_Structure.webp" width="600" />

## 产品尺寸

<img src="/img/Belter/Belter_Dimension.webp" width="600" />

## 打印件准备

所有打印件模型可在此获取：[PrintParts](https://github.com/bigtreetech/Belter-belt-tension-Tool/tree/master/PrintParts)

- 打印并安装 `ProbeTip`，以确保测量准确性。
- 打印并安装 `Hand Held bracket` 和 `Plunger`，以实现单手操作。
- 打印 `zeroing tool`，并在校准过程中备用。

## 校准流程

1. 打开 [Belter Calculation Tool](https://belter.bttwiki.com/)。

<img src="/img/Belter/Belter_Calculation_Tool.webp" width="600" />

2. 将支架组件向上顶紧深度计，确保支架已正确就位。检查所有支架螺丝是否拧紧，并确认支架没有松动。

<img src="/img/Belter/Belter_Structure.webp" width="600" />

3. 将深度计读数归零。

<img src="/img/Belter/Belter_zero.webp" width="600" />

4. 安装归零工具。

<img src="/img/Belter/Belter_Zero_Tool.webp" width="600" />

5. 记录 Belter 读数，并将其输入计算工具中的 **Belter Calibration Reading（Belter 校准读数）**。

<img src="/img/Belter/Belter_Calibration_Reading.webp" width="600" />

6. 使用卡尺测量皮带厚度。

<img src="/img/Belter/Belt_thickness.webp" width="600" />

7. 将皮带厚度输入计算工具中的 **Belt Thickness（皮带厚度）**。

<img src="/img/Belter/Belt_Thickness_Reading.webp" width="600" />

8. 选择正确的皮带规格，用于张力范围检查。

<img src="/img/Belter/Tension Range.webp" width="600" />

对于自定义皮带，请选择 **Custom Range（自定义范围）**，然后输入你希望用于对比检查的最小张力和最大张力。

<img src="/img/Belter/Custom Range.webp" width="600" />

恭喜，你已经完成了校准流程！

## 皮带张力测量

1. 按照下图所示方式测量皮带，并将读数输入计算工具。

<img src="/img/Belter/Belter_measure.webp" width="600" />

## 计算工具使用说明

### Compare Belts（对比两条皮带）

<img src="/img/Belter/Belter_Compare_Belts.webp" width="600" />

当你需要匹配两条皮带的张力时使用此模式，例如 CoreXY 打印机上的两条皮带。

1. 使用 Belter 测量 **Belt A（皮带 A）**。
2. 将读数输入 **Belt A Reading（皮带 A 读数）**。
3. 使用相同的测量设置测量 **Belt B（皮带 B）**。
4. 将读数输入 **Belt B Reading（皮带 B 读数）**。

结果会自动更新。

请检查以下内容：

- **Balance（平衡度）：** 显示 Belt A 与 Belt B 之间的张力差。
- **Difference %（差异百分比）：** 差异为 10% 或以下时视为平衡。
- **Tension Range（张力范围）：** 显示两条皮带是否都处于建议张力范围内。

为了获得最佳结果，建议达到：

**两条皮带张力平衡 + 两条皮带都位于建议张力范围内。**

### Single Belt（单条皮带）

<img src="/img/Belter/Belter_Single_Belt.webp" width="600" />

当你只需要估算一条皮带的张力时使用此模式。

1. 使用 Belter 测量皮带。
2. 将读数输入 **Belter Reading（Belter 读数）**。
3. 工具会自动显示估算的皮带张力。

工具还会显示当前张力是否位于所选皮带规格对应的建议范围内。

### 重要提示

- 在依赖张力计算结果之前，请务必先校准 Belter。
- 请使用正确的皮带厚度和张力范围设置。
- 对比两条皮带时，请使用同一台 Belter、相同的测量设置和校准参数。
- 结果会自动更新，无需点击 **Calculate（计算）** 按钮。
- 调节皮带张力后，请重新测量，直到达到目标结果。

计算得到的张力仅作为 3D 打印机皮带张力调节的估算参考值。

## 计算模型校准（可选）

> 此步骤为可选步骤。Belter Calculation Tool 已内置默认计算模型。
>
> 高级用户可以按照以下步骤，根据自己的 Belter 和测量设置生成自定义计算参数。

1. 确保 Belter Calculation Tool 中输入的 **Belter Calibration Reading（Belter 校准读数）**、**Belt Thickness（皮带厚度）** 和 **Tension Range（张力范围）** 与实际校准过程中使用的设置一致。

<img src="/img/Belter/Belter_Calculation_Tool.webp" width="600" />

2. 准备 **500 g 到 2000 g** 的测试载荷，按 **100 g** 递增。

最便宜、最容易实现的测试载荷方式，是使用一个容量大于 2 L 的容器和一台电子秤。向容器中加水，直到达到目标重量，在电子秤上确认重量后，再进行 Belter 测量。

<img src="/img/Belter/Water_Load.webp" width="600" />

完整测试范围如下：

`500 g, 600 g, 700 g, 800 g, 900 g, 1000 g, 1100 g, 1200 g, 1300 g, 1400 g, 1500 g, 1600 g, 1700 g, 1800 g, 1900 g, 2000 g`

3. 将 **500 g** 测试载荷悬挂在一段皮带上，并等待皮带和测试装置稳定后再进行测量。

<img src="/img/Belter/Belter_Weight_Test.webp" width="600" />

4. 安装 Belter，并将读数记录到提供的 [校准数据表](https://github.com/bigtreetech/Belter-belt-tension-Tool/tree/master/Calculation%20Tool/) 中。

为了获得更好的重复性，每次测量之间请将 Belter 完全拆下并重新安装。

5. 对同一测试载荷测量 **12 次**。

每次测量后：

`测量 → 记录读数 → 拆下 Belter → 重新安装 Belter → 再次测量`

6. 对 **500 g 到 2000 g** 的每一个测试载荷重复相同流程。

数据表会自动计算每个测试载荷的测量结果。

<img src="/img/Belter/Belter_Calibration_Data.webp" width="600" />

7. 对每组 12 次测量，数据表会自动移除：

- 一个最高读数
- 一个最低读数

剩余的 **10 个读数** 用于计算 **Average (trimmed 10)**。

数据表还会显示 **StDev（标准差）**，用于帮助评估测量重复性。

8. 完成所有测试载荷的测量后，选择并复制从 **500 g 到 2000 g** 的完整 **Average (trimmed 10)** 行。

复制时也可以包含 **Average (trimmed 10)** 标签单元格，Belter Calculation Tool 会自动忽略该标签。

<img src="/img/Belter/Belter_Copy_Average.webp" width="600" />

9. 在 Belter Calculation Tool 中打开 **Fit Parameters from Test Data（根据测试数据拟合参数）** 部分。

<img src="/img/Belter/Belter_Fit_Parameters.webp" width="600" />

10. 点击任意测试数据输入框，然后粘贴刚才复制的 **Average (trimmed 10)** 行。

Belter Calculation Tool 会自动识别这些数值，并按照以下顺序分配：

`500 g → 600 g → 700 g → ... → 2000 g`

11. Belter Calculation Tool 会自动拟合测量数据，并为张力模型计算自定义的 **Coefficient A（系数 A）** 和 **Exponent p（指数 p）**：

`Tension = A / (dmax - d)^p`

拟合后的参数会自动应用到 **Compare Belts** 和 **Single Belt** 两种模式。

<img src="/img/Belter/Belter_Auto_Fit_Result.webp" width="600" />

恭喜，你已经完成了可选的计算模型校准！

## 社区致谢

BIQU 衷心感谢所有参与 Belter 开发与测试的社区成员和用户。

特别感谢 @rongith 提供实验性的皮带挠度测量数据和测试数据，也感谢 @anokfireball 提出并分析了用于改进 Belter Calculation Tool 的非线性皮带张力估算模型。

你们的实际测试、数据分享、技术讨论和反馈，对改进 Belter 的测量流程和计算方法发挥了重要作用。BIQU 非常感谢 3D 打印社区投入的时间和精力，并将继续根据实际使用经验和社区反馈不断改进 Belter。

## 产品购买链接

[购买 Belter](https://biqu.equipment/products/biqu-belter-belt-tension-tool)

如果你在使用本产品时遇到任何问题，请联系我们并提交售后支持工单。

[提交支持工单](https://biqu3d.com/pages/submit-a-ticket)

## 导航

- [BIQU 官方网站](http://biqu3d.com/)
- [BIGTREETECH 官方网站](http://bigtree-tech.com/)
- [在线商店](https://biqu.equipment/)
- [社区](https://community.biqu3d.com/)
