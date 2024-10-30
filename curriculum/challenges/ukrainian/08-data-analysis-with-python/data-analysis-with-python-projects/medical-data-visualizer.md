---
id: 5e46f7f8ac417301a38fb92a
title: Візуалізатор медичних даних
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Ми все ще розробляємо інтерактивну частину навчального курсу Python. Наразі є декілька відео на ютуб-каналі freeCodeCamp.org, які навчать всього необхідного для виконання цього проєкту:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">How to Analyze Data with Python Pandas</a> (10 годин)

# --instructions--

У цьому проєкті ви візуалізуєте і зробите підрахунки на основі даних медичного обстеження, використовуючи `matplotlib`, `seaborn` та `pandas`. Значення набору даних були зібрані під час медичних оглядів.

## Data description

Рядки в наборі даних представляють пацієнтів, а стовпці інформацію, як-от вимірювання тіла, результати різних аналізів крові та вибір способу життя. Ви будете використовувати набір даних, щоб дослідити зв’язок між серцевими захворюваннями, розмірами тіла, маркерами крові та вибором способу життя.

Назва файлу: medical_examination.csv

|                    Feature                    |       Тип змінної       |    Змінна     |                   Тип значення                    |
|:---------------------------------------------:|:-----------------------:|:-------------:|:-------------------------------------------------:|
|                      Age                      |    Objective Feature    |     `age`     |                    int (days)                     |
|                    Height                     | Об’єктивна особливість  |   `height`    |                  ціле число (см)                  |
|                    Weight                     | Об’єктивна особливість  |   `weight`    |                плаваюче число (кг)                |
|                    Gender                     | Об’єктивна особливість  |   `gender`    |                 категоричний код                  |
|            Systolic blood pressure            | Особливість обстеження  |    `ap_hi`    |                    ціле число                     |
|           Diastolic blood pressure            | Особливість обстеження  |    `ap_lo`    |                    ціле число                     |
|                  Cholesterol                  | Особливість обстеження  | `cholesterol` | 1: нормально, 2: вище норми, 3: значно вище норми |
|                    Glucose                    | Особливість обстеження  |    `gluc`     | 1: нормально, 2: вище норми, 3: значно вище норми |
|                    Smoking                    | Суб’єктивна особливість |    `smoke`    |                     двійкове                      |
|                Alcohol intake                 | Суб’єктивна особливість |    `alco`     |                     двійкове                      |
|               Physical activity               | Суб’єктивна особливість |   `active`    |                     двійкове                      |
| Presence or absence of cardiovascular disease |     Цільова змінна      |   `cardio`    |                     двійкове                      |


## Instructions

Create a chart similar to `examples/Figure_1.png`, where we show the counts of good and bad outcomes for the `cholesterol`, `gluc`, `alco`, `active`, and `smoke` variables for patients with `cardio=1` and `cardio=0` in different panels.

By each number in the `medical_data_visualizer.py` file, add the code from the associated instruction number below.

1. Import the data from `medical_examination.csv` and assign it to the `df` variable.
2. Add an `overweight` column to the data. To determine if a person is overweight, first calculate their BMI by dividing their weight in kilograms by the square of their height in meters. If that value is > 25 then the person is overweight. Use the value `0` for NOT overweight and the value `1` for overweight.
3. Нормалізуйте дані, зробивши `0` завжди хорошим, а `1` завжди поганим. Якщо значення `cholesterol` або `gluc` дорівнює `1`, встановіть значення на `0`. Якщо значення більше ніж `1`, встановіть значення на `1`.
4. Draw the Categorical Plot in the `draw_cat_plot` function.
5. Створіть DataFrame для графіка категорій, використовуючи `pd.melt` зі значеннями з `cholesterol`, `gluc`, `smoke`, `alco`, `active` та `overweight` в змінній `df_cat`.
6. Згрупуйте та реформатуйте дані в `df_cat`, щоб розділити їх за допомогою `cardio`. Покажіть кількість усіх складових. Один зі стовпчиків потрібно перейменувати, щоб забезпечити правильну роботу `catplot`.
7. Convert the data into `long` format and create a chart that shows the value counts of the categorical features using the following method provided by the seaborn library import: `sns.catplot()`.
8. Get the figure for the output and store it in the `fig` variable.
9. Do not modify the next two lines.
10. Draw the Heat Map in the `draw_heat_map` function.
11. Очистіть дані в змінній `df_heat`, відфільтрувавши наступні сегменти пацієнтів, які представляють неправильні дані:
    - diastolic pressure is higher than systolic (Keep the correct data with `(df['ap_lo'] <= df['ap_hi'])`)
    - height is less than the 2.5th percentile (Keep the correct data with `(df['height'] >= df['height'].quantile(0.025))`)
    - height is more than the 97.5th percentile
    - weight is less than the 2.5th percentile
    - weight is more than the 97.5th percentile
12. Calculate the correlation matrix and store it in the `corr` variable.
13. Generate a mask for the upper triangle and store it in the `mask` variable.
14. Set up the `matplotlib` figure.
15. Plot the correlation matrix using the method provided by the `seaborn` library import: `sns.heatmap()`.
16. Do not modify the next two lines.

## Розробка

Write your code in `medical_data_visualizer.py`. Для розробки ви можете використати `main.py`, щоб протестувати свій код.

## Тестування

Модульні тести для цього проєкту знаходяться в `test_module.py`. Ми імпортували тести з `test_module.py` до `main.py` для вашої зручності.

## Надсилання

Скопіюйте URL-адресу свого проєкту та відправте її до freeCodeCamp.

# --hints--

Проєкт повинен пройти усі тести Python.

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
