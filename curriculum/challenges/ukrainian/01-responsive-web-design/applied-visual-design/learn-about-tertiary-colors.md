---
id: 587d78a4367417b2b2512ad2
title: Дізнайтеся більше про третинні кольори (Tertiary)
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). Ви бачили ці кольори у завданні про доповнюючі кольори. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

Третинні кольори є результатом поєднання основного кольору з одним із вторинним сусіднім кольором. Наприклад, у колірній моделі RGB червоний (первинний колір) та жовтий (вторинний колір) утворюють оранжевий (третинний колір). Це додасть ще шість кольорів до простого колірного кола загалом їх дванадцять.

Існують різні методи вибору різних кольорів, що в результаті стають гармонійним поєднанням дизайну. Наприклад, використання третинних кольорів можливе у спліт-додатковій колірній схемі. Ця схема починається з базового кольору, а потім поєднується з двома кольорами, які є сусідніми до його протилежного кольору. Ці три кольори утворюють сильний візуальний контраст у дизайні, але є менш вираженими, ніж використання двох доповнюючих кольорів.

Три кольори утворені за допомогою комплементарної схеми:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

Змініть характеристики класів `background-color`, `orange`, `cyan` і `raspberry` на відповідні кольори. Переконайтеся, що ви використовуєте шістнадцяткові коди, а не назви кольорів.

# --hints--

У `div` елементу класу `orange` повинен бути оранжевий `background-color`.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

У `div` елементу класу `cyan` фоновий колір має бути бірюзовий `background-color`.

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

У `div` елементу класу `raspberry` повинен бути малиновий `background-color`.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

Усі значення `background-color` для класів кольорів мають бути шістнадцятковими кодами, а не назвами кольорів.

```js
assert.notMatch(code, /background-color:\s(orange|cyan|raspberry)/);
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .raspberry {
    background-color: #000000;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>

<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .orange {
    background-color: #FF7F00;
  }

  .cyan {
    background-color: #00FFFF;
  }

  .raspberry {
    background-color: #FF007F;
  }

  div {
    height: 100px;
    width: 100px;
    margin-bottom: 5px;
  }
</style>
<div class="orange"></div>
<div class="cyan"></div>
<div class="raspberry"></div>
```
