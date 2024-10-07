---
id: 5e46f7f8ac417301a38fb92a
title: 医疗数据可视化工具
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

我们仍在开发Python课程的交互式教学部分 目前，你可以在 freeCodeCamp.org 的 YouTube 频道中通过视频学习到这个项目相关的所有知识

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">如何使用 Python Pandas 分析数据</a>（10 小时）

# --instructions--

In this project, you will visualize and make calculations from medical examination data using `matplotlib`, `seaborn`, and `pandas`. 数据集的数值是从体检中收集的。

## Data description

数据集中的行代表患者，列代表身体测量、各种血液检查的结果和生活方式等信息。 您将使用该数据集来探索心脏病、身体测量数据、血液标志物和对生活方式的选择之间的关系。

文件名：medical_examination.csv

|                    Feature                    |       变量类型        |      变量名      |         变量值类型         |
|:---------------------------------------------:|:-----------------:|:-------------:|:---------------------:|
|                      Age                      | Objective Feature |     `age`     |      int (days)       |
|                    Height                     |       客观特征        |   `height`    |       int (cm)        |
|                    Weight                     |       客观特征        |   `weight`    |      float (kg)       |
|                    Gender                     |       客观特征        |   `gender`    |         分类编码          |
|            Systolic blood pressure            |       检测特征        |    `ap_hi`    |          int          |
|           Diastolic blood pressure            |       检测特征        |    `ap_lo`    |          int          |
|                  Cholesterol                  |       检测特征        | `cholesterol` | 1：正常，2：高于正常，3：远远高于正常值 |
|                    Glucose                    |       检测特征        |    `gluc`     | 1：正常，2：高于正常，3：远远高于正常值 |
|                    Smoking                    |       主观特征        |    `smoke`    |        binary         |
|                Alcohol intake                 |       主观特征        |    `alco`     |        binary         |
|               Physical activity               |       主观特征        |   `active`    |        binary         |
| Presence or absence of cardiovascular disease |       目标变量        |   `cardio`    |        binary         |


## Instructions
By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable
2. Create the `overweight` column in the `df` variable
3. Normalize data by making `0` always good and `1` always bad. If the value of `cholesterol` or `gluc` is 1, set the value to `0`. If the value is more than `1`, set the value to `1`.
4. Draw the Categorical Plot in the `draw_cat_plot` function
5. Create a DataFrame for the cat plot using `pd.melt` with values from `cholesterol`, `gluc`, `smoke`, `alco`, `active`, and `overweight` in the `df_cat` variable.
6. Group and reformat the data in `df_cat` to split it by `cardio`. Show the counts of each feature. You will have to rename one of the columns for the `catplot` to work correctly.
7. Convert the data into `long` format and create a chart that shows the value counts of the categorical features using the following method provided by the seaborn library import : `sns.catplot()`
8. Get the figure for the output and store it in the `fig` variable
9. Do not modify the next two lines
10. Draw the Heat Map in the `draw_heat_map` function
11. Clean the data in the `df_heat` variable by filtering out the following patient segments that represent incorrect data:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calculate the correlation matrix and store it in the `corr` variable
13. Generate a mask for the upper triangle and store it in the `mask` variable
14. Set up the `matplotlib` figure
15. Plot the correlation matrix using the method provided by the `seaborn` library import: `sns.heatmap()`
16. Do not modify the next two lines

## 开发

Write your code in `medical_data_visualizer.py`. For development, you can use `main.py` to test your code.

## 测试

The unit tests for this project are in `test_module.py`. 为了你的方便，我们将测试从 `test_module.py` 导入到 `main.py`。

## 提交

复制项目的 URL 并将其提交给 freeCodeCamp。

# --hints--

它应该通过所有的 Python 测试。

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
