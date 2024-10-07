---
id: 5e46f802ac417301a38fb92b
title: Візуалізатор часового ряду перегляду сторінки
challengeType: 10
forumTopicId: 462369
dashedName: page-view-time-series-visualizer
---

# --description--

You will be <a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-page-view-time-series-visualizer" target="_blank" rel="noopener noreferrer nofollow">working on this project with our Gitpod starter code</a>.

Ми все ще розробляємо інтерактивну частину навчального курсу Python. Наразі є декілька відео на ютуб-каналі freeCodeCamp.org, які навчать всього необхідного для виконання цього проєкту:

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">Python for Everybody Video Course</a> (14 hours)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">How to Analyze Data with Python Pandas</a> (10 hours)

# --instructions--

У цьому проєкті ви візуалізуєте дані часових рядів, використовуючи лінійний графік, стовпчикову діаграму та коробковий графік. Ви будете використовувати Pandas, Matplotlib та Seaborn для візуалізації даних, які містять кількість щоденних переглядів на форумі freeCodeCamp.org з 09.05.2016 по 03.12.2019. Візуалізація даних допоможе вам зрозуміти тенденції відвідування та визначити річний і місячний приріст.

Використайте дані для виконання наступних завдань:

- Use Pandas to import the data from "fcc-forum-pageviews.csv". Set the index to the `date` column.
- Очистить дані, відфільтрувавши дні, коли перегляди сторінок належали до верхніх 2,5% набору даних або нижніх 2,5% набору даних.
- Створіть функцію `draw_line_plot`, яка використовує Matplotlib для створення лінійної діаграми, подібної до «examples/Figure_1.png». Заголовок повинен бути `Daily freeCodeCamp Forum Page Views 5/2016-12/2019`. Мітка на осі X повинна бути `Date`, а мітка на осі Y повинна бути `Page Views`.
- Створіть функцію `draw_bar_plot`, яка малює стовпчикову діаграму, подібну до «examples/Figure_2.png». Вона повинна відображати середню кількість щоденних переглядів для кожного місяця, згрупованих за роками. Легенда повинна відображати мітки місяців та мати назву `Months`. На діаграмі мітка на осі X повинна бути `Years`, а мітка на осі Y повинна бути `Average Page Views`.
- Створіть функцію `draw_box_plot`, яка використовує Seaborn, щоб намалювати два суміжні коробкові графіки, подібні до «examples/Figure_3.png». Ці коробкові графіки повинні показувати, як значення розподіляються протягом певного року чи місяця та як вони порівнюються з часом. Заголовок першої діаграми повинен бути `Year-wise Box Plot (Trend)`, а заголовок другої діаграми повинен бути `Month-wise Box Plot (Seasonality)`. Переконайтеся, що мітки місяця внизу починаються з `Jan`, а вісь x та y позначені правильно. Шаблонний код містить команди для підготовки даних.

For each chart, make sure to use a copy of the data frame.

Шаблон також містить команди для збереження та повернення зображення.

## Development

Напишіть свій код в `time_series_visualizer.py`. Для розробки ви можете використати `main.py`, щоб протестувати свій код.

## Тестування

Модульні тести для цього проєкту знаходяться в `test_module.py`. Ми імпортували тести з `test_module.py` до `main.py` для вашої зручності.

## Відправка

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
