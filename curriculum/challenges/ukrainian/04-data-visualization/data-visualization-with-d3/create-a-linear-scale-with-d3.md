---
id: 587d7fab367417b2b2512bda
title: Створіть лінійний масштаб за допомогою D3
challengeType: 6
forumTopicId: 301483
dashedName: create-a-linear-scale-with-d3
---

# --description--

The bar and scatter plot charts both plotted data directly onto the SVG. However, if the height of a bar or one of the data points were larger than the SVG height or width values, it would go outside the SVG area.

У D3 існують шкали, які допомагають накреслити дані. Шкали (`scales`) — це функції, які вказують програмі, як саме потрібно зіставити пікселі SVG із набором необроблених точок даних.

Наприклад, скажімо, у вас є SVG розміром 100x500, і ви хочете накреслити валовий внутрішній продукт (ВВП) для декількох країн. Набір чисел буде в діапазоні мільярдів або трильйонів доларів. Ви надаєте D3 тип шкали, щоб повідомити, як розмістити великі значення ВВП на цій площині розміром 100x500.

Навряд чи ви б креслили необроблені дані так. Перш ніж створювати діаграму, ви встановлюєте шкалу для всього набору даних, щоб значення `x` та `y` відповідали ширині та висоті SVG.

D3 має кілька типів шкал. Для лінійного масштабу (зазвичай використовується з кількісними даними) використовують метод `scaleLinear()` від D3:

```js
const scale = d3.scaleLinear();
```

За замовчуванням шкала використовує зв’язок ідентичності. Значення вхідних даних таке ж, як і значення вихідних даних. Для цієї теми виокремлено окреме завдання.

# --instructions--

Щоб створити лінійний масштаб, потрібно змінити змінну `scale`. Потім встановіть змінну `output` на шкалу, яка викликається вхідним аргументом `50`.

# --hints--

Текстом елемента `h2` має бути `50`.

```js
assert.strictEqual(document.querySelector('h2')?.textContent, '50');
```

Код має використати метод `scaleLinear()`.

```js
assert.match(code, /\.scaleLinear/g);
```

Змінна `output` повинна викликати `scale` з аргументом `50`.

```js
assert.strictEqual(output, 50);
assert.match(code, /scale\(\s*50\s*\)/g);
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    // Add your code below this line

    const scale = undefined; // Create the scale here
    const output = scale(); // Call scale with an argument here

    // Add your code above this line

    d3.select('body').append('h2').text(output);
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const scale = d3.scaleLinear();
    const output = scale(50);

    d3.select('body').append('h2').text(output);
  </script>
</body>
```
