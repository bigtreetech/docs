# Belter

<img src="/img/Belter/Belter_title.webp" width="600" />

**产品链接：** [BIGTREETECH Official Website](https://biqu.equipment/products/biqu-belter-belt-tension-tool)

**GitHub 链接：** [bigtreetech/Belter-belt-tension-Tool](https://github.com/bigtreetech/Belter-belt-tension-Tool)

## 简介

Belter 是一款皮带张力工具，可帮助您测量并估算皮带张力。它配备直观的数字读数显示，读数清晰，让皮带张力调节更加轻松。

## 功能亮点

- **数字显示：** 提供直观、清晰的张力读数。
- **精密设计：** 采用轻量化铝合金支架，实现准确测量。
- **单手操作：** 支持便捷、高效的单手测量操作。

## 规格参数

- **产品名称：** Belter
- **支架材质：** 阳极氧化铝合金
- **单位切换：** inch/mm
- **电源：** 1 × CR2032 3 V 纽扣电池（已包含）

## 产品结构

<img src="/img/Belter/Belter_Structure.webp" width="600" />

## 尺寸

<img src="/img/Belter/Belter_Dimension.webp" width="600" />

## 打印件准备

所有打印件模型可在此处找到：[PrintParts](https://github.com/bigtreetech/Belter-belt-tension-Tool/tree/master/PrintParts)

- 打印并安装 `ProbeTip`，以确保测量准确。
- 打印并安装 `Hand Held bracket` 和 `Plunger`，以实现单手操作。
- 打印 `zeroing tool`，并准备好用于校准流程。

## 校准流程

1. 打开 [Belter Calculation Tool](https://belter.bttwiki.com/)。

    <img src="/img/Belter/Belter_Calculation_Tool.webp" width="600" />

2. 将支架组件推向深度计，确保其正确贴合到位。检查所有支架螺丝是否已拧紧，并确认支架没有松动。

    <img src="/img/Belter/Belter_Structure.webp" width="600" />

3. 将深度计读数归零。

    <img src="/img/Belter/Belter_zero.webp" width="600" />

4. 安装 zeroing tool。

    <img src="/img/Belter/Belter_Zero_Tool.webp" width="600" />

5. 记录 Belter 的读数，并将其输入计算工具中的 **Belter Calibration Reading**。

    <img src="/img/Belter/Belter_Calibration_Reading.webp" width="600" />

6. 使用卡尺测量皮带厚度。

    <img src="/img/Belter/Belt_thickness.webp" width="600" />

7. 将皮带厚度值输入校准工具中的 **Belt Thickness**。

    <img src="/img/Belter/Belt_Thickness_Reading.webp" width="600" />

8. 选择正确的皮带规格，以检查张力范围。

    <img src="/img/Belter/Tension Range.webp" width="600" />

    对于自定义皮带，请选择 "Custom Range"，并输入您希望用于检查的最小和最大张力值。

    <img src="/img/Belter/Custom Range.webp" width="600" />

恭喜，您现在已经完成校准流程！

## 皮带张力测量

1. 按照图片所示测量皮带张力，并将读数输入计算工具。

    <img src="/img/Belter/Belter_measure.webp" width="600" />

## 计算工具使用说明

### Compare Belts

<img src="/img/Belter/Belter_Compare_Belts.webp" width="600" />

当您希望匹配两条皮带的张力时，请使用此模式，例如 CoreXY 打印机上的两条皮带。

1. 使用 Belter 测量 **Belt A**。
2. 将读数输入 **Belt A Reading**。
3. 使用相同的测量方式测量 **Belt B**。
4. 将读数输入 **Belt B Reading**。

结果会自动更新。

请检查以下项目：

- **Balance：** 显示 Belt A 与 Belt B 之间的张力差异。
- **Difference %：** 差异为 10% 或更低时，可视为平衡。
- **Tension Range：** 显示两条皮带是否都处于建议的张力范围内。

为了获得最佳结果，建议达到以下状态：

**两条皮带张力平衡 + 两条皮带均处于建议范围内。**

### Single Belt

<img src="/img/Belter/Belter_Single_Belt.webp" width="600" />

当您只需要估算单条皮带的张力时，请使用此模式。

1. 使用 Belter 测量皮带。
2. 将数值输入 **Belter Reading**。
3. 估算的皮带张力会自动显示。

工具还会显示当前张力是否处于所选皮带宽度对应的建议范围内。

### 重要提示

- 在参考张力结果之前，请务必先校准 Belter。
- 请使用正确的皮带厚度和皮带宽度。
- 比较两条皮带时，请对两次测量使用相同的 Belter 设置和校准参数。
- 结果会自动更新——无需点击 **Calculate** 按钮。
- 调整皮带张力后请重新测量，直到达到所需结果。

计算得到的张力值是用于调整 3D 打印机皮带张力的估算参考值。

## 计算模型校准（可选）

> 此步骤为可选项。Belter Calculation Tool 已包含默认计算模型。
>
> 高级用户可以按照以下步骤，根据自己的 Belter 和测量设置生成自定义计算参数。

1. 确保在 Belter Calculation Tool 中输入的 **Belter Calibration Reading**、**Belt Thickness** 和 **Belt Width** 与校准过程中使用的数值一致。

    <img src="/img/Belter/Belter_Calculation_Tool1.webp" width="600" />

2. 准备 **500 g 到 2000 g** 的测试负载，以 **100 g 为增量**。

    最便宜且最简单的测试负载方案，是使用一个容量大于 2 L 的容器和一台电子秤。加水直到达到目标负载，在电子秤上确认重量，然后进行 Belter 测量。

    <img src="/img/Belter/Water_Load.webp" width="600" />

    完整测试范围如下：

    `500 g, 600 g, 700 g, 800 g, 900 g, 1000 g, 1100 g, 1200 g, 1300 g, 1400 g, 1500 g, 1600 g, 1700 g, 1800 g, 1900 g, 2000 g`

3. 将 **500 g** 测试负载悬挂在一段皮带上，并等待皮带和测试装置稳定后再进行测量。

    <img src="/img/Belter/Belter_Weight_Test.webp" width="600" />

4. 安装 Belter，并将读数记录到提供的 [calibration spreadsheet](https://github.com/bigtreetech/Belter-belt-tension-Tool/tree/master/Calculation%20Tool/) 中。

    为获得最佳重复性，每次测量之间请将 Belter 完全拆下，然后重新安装。

5. 对同一个测试负载测量 **12 次**。

    每次测量后：

    `Measure → Record the reading → Remove the Belter → Reinstall the Belter → Measure again`

6. 对 **500 g 到 2000 g** 的每个测试负载重复相同流程。

    电子表格会自动计算每个测试负载的测量结果。

    <img src="/img/Belter/Belter_Calibration_Data.webp" width="600" />

7. 对每组 12 次测量数据，电子表格会自动移除：

    - 最高读数
    - 最低读数

    剩余的 **10 个读数** 将用于计算 **Average (trimmed 10)**。

    电子表格还会显示 **StDev**，以帮助评估测量重复性。

8. 完成所有测试负载的测量后，选择并复制从 **500 g 到 2000 g** 的完整 **Average (trimmed 10)** 行。

    复制时也可以包含 **Average (trimmed 10)** 的标签单元格。Belter Calculation Tool 会自动忽略该标签。

    <img src="/img/Belter/Belter_Copy_Average.webp" width="600" />

9. 打开 Belter Calculation Tool 中的 **Fit Parameters from Test Data** 部分。

    <img src="/img/Belter/Belter_Fit_Parameters.webp" width="600" />

10. 点击任意测试数据输入字段，并粘贴已复制的 **Average (trimmed 10)** 行。

    Belter Calculation Tool 会自动识别这些数值，并按照以下顺序进行分配：

    `500 g → 600 g → 700 g → ... → 2000 g`

11. Belter Calculation Tool 会自动拟合测量数据，并为张力模型计算自定义的 **Coefficient A** 和 **Exponent p**：

    `Tension = A / (dmax - d)^p`

    拟合后的参数会自动应用到 **Compare Belts** 和 **Single Belt** 两种模式。

    <img src="/img/Belter/Belter_Auto_Fit_Result.webp" width="600" />

恭喜，您现在已经完成可选的计算模型校准！

## 社区致谢

BIQU 衷心感谢所有为 Belter 的开发和测试做出贡献的社区成员和用户。

特别感谢 @rongith 提供实验性的皮带挠度测量结果和测试数据，也感谢 @anokfireball 提出并分析用于改进 Belter Calculation Tool 的非线性皮带张力估算模型。

您的实际测试、数据分享、技术讨论和反馈，对改进 Belter 的测量流程和计算方法发挥了重要作用。BIQU 非常感谢 3D 打印社区投入的时间和精力，并将继续根据实际使用经验和社区反馈改进 Belter。

## 产品购买链接

[Purchase the Belter](https://biqu.equipment/products/biqu-belter-belt-tension-tool)

如果您在使用本产品时遇到任何问题，请联系我们并提交支持工单。

[Submit a support ticket](https://biqu3d.com/pages/submit-a-ticket)

## 导航

- [BIQU Official Website](http://biqu3d.com/)
- [BIGTREETECH Official Website](http://bigtree-tech.com/)
- [Online Store](https://biqu.equipment/)
- [Community](https://community.biqu3d.com/)
