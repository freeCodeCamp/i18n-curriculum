---
id: 5e46f8edac417301a38fb930
title: 线性回归健康成本计算器
challengeType: 10
forumTopicId: 462379
dashedName: linear-regression-health-costs-calculator
---

# --description--

You will be <a href="https://colab.research.google.com/github/freeCodeCamp/boilerplate-linear-regression-health-costs-calculator/blob/master/fcc_predict_health_costs_with_regression.ipynb" target="_blank" rel="noopener noreferrer nofollow">working on this project with Google Colaboratory</a>.

点击链接后，在自己的账户中或在本地创建一个笔记本的副本。 完成项目并通过测试（在那个链接中）后，请在下面提交你的项目链接。 如果你提交的是 Google Colaboratory 的链接，请确保链接分享选项为 “anyone with the link”。

我们仍在开发机器学习课程的交互式课程部分。 现在，你可以通过这个认证中的视频挑战。 你可能还需要寻找额外的学习资源，类似于你在真实世界项目中的工作。

# --instructions--

在这个挑战中，你将使用回归算法预测医疗费用。

你会得到一个数据集，其中包含不同人的信息，包括他们的医疗费用。 用数据来预测基于新数据的医疗费用。

此笔记本的前两个单元格导入库和数据。

确保将分类数据转换为数字。 将 80% 的数据用作 `train_dataset`，将 20% 的数据用作 `test_dataset`。

使用 `pop` 从这些数据集中移出“费用”列中，来创建名为 `train_labels` 和 `test_labels` 的新数据集。 训练模型时使用这些标签。

创建一个模型并使用 `train_dataset` 对其进行训练。 运行本笔记本中的最后一个单元来检查你的模型。 最后一个单元格将使用看不见的 `test_dataset` 来检查模型的泛化程度。

要通过挑战，`model.evaluate` 必须返回低于 3500 的平均绝对误差。 这意味着它可以正确地预测医疗保健费用在 3500 美元以内。

最后一个单元格还将使用 `test_dataset` 预测费用并绘制结果图。

# --hints--

它应该通过所有 Python 测试。

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
