---
id: 587d78a4367417b2b2512ad4
title: Регулювання відтінку кольору
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp38TZ'
forumTopicId: 301036
dashedName: adjust-the-hue-of-a-color
---

# --description--

Colors have several characteristics including hue, saturation, and lightness. CSS3 introduced the `hsl()` function as an alternative way to pick a color by directly stating these characteristics.

Під**відтінком** люди часто розуміють колір. Якщо уявити спектр кольорів, починаючи з червоного зліва, через зелений посередині, і закінчуючи синім справа, то відтінок - це місце на цій лінії, де знаходиться колір. У `hsl()`, для визначення відтінку замість спектру використовується концепція колірного кола, де кут кольору на окружності задається значенням від 0 до 360.

**Насиченість** це кількість сірого в кольорі. Чим менше сірого, тим насиченішим є колір, тоді як мінімально насичений колір майже повністю сірий. Це задається відсотками, де 100% означає максимально насичений колір.

**Яскравість** це вміст білого або чорного в кольорі. Відсоток задається значенням від 0% (чорний) до 100% (білий), де 50% це стандартний колір.

Ось кілька прикладів використання `hsl()` з максимально насиченими кольорами зі стандартною яскравістю:

<table><thead><tr><th>Color</th><th>HSL</th></tr></thead><tbody><tr><td>red</td><td>hsl(0, 100%, 50%)</td></tr><tr><td>yellow</td><td>hsl(60, 100%, 50%)</td></tr><tr><td>green</td><td>hsl(120, 100%, 50%)</td></tr><tr><td>cyan</td><td>hsl(180, 100%, 50%)</td></tr><tr><td>blue</td><td>hsl(240, 100%, 50%)</td></tr><tr><td>magenta</td><td>hsl(300, 100%, 50%)</td></tr></tbody></table>

# --instructions--

Змініть колір фону `background-color` кожного `div` елемента, відповідно до імен класу (зелений `green`, блакитний `cyan`, або синій `blue`), використовуючи колірну модель `hsl()`. Усі три повинні мати максимальну насиченість і стандартну яскравість.

# --hints--

Ваш код повинен використовувати функцію `hsl()`, щоб декларувати зелений колір.

```js
assert.match(code,/\.green\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

Ваш код повинен використовувати функцію `hsl()`, щоб декларувати блакитний колір.

```js
assert.match(code,/\.cyan\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

Ваш код повинен використовувати функцію `hsl()`, щоб декларувати синій колір.

```js
assert.match(code,/\.blue\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

У `div` елементу класу `green` колір фону `background-color` має бути зеленим.

```js
const greenElement = document.querySelector(".green");
const greenStyle = window.getComputedStyle(greenElement); 
assert.equal(greenStyle?.backgroundColor, 'rgb(0, 255, 0)');
```

У `div` елементу класу `cyan` колір фону `background-color` має бути блакитним.

```js
const cyanElement = document.querySelector(".cyan");
const cyanStyle = window.getComputedStyle(cyanElement); 
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

У `div` елементу класу `blue` колір фону `background-color` має бути синім.

```js
const blueElement = document.querySelector(".blue");
const blueStyle = window.getComputedStyle(blueElement); 
assert.equal(blueStyle?.backgroundColor, 'rgb(0, 0, 255)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .green {
    background-color: #000000;
  }

  .cyan {
    background-color: #000000;
  }

  .blue {
    background-color: #000000;
  }

  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>

<div class="green"></div>
<div class="cyan"></div>
<div class="blue"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }

  .green {
    background-color: hsl(120, 100%, 50%);
  }

  .cyan {
    background-color:   hsl(180, 100%, 50%);
  }

  .blue {
    background-color: hsl(240, 100%, 50%);
  }

  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="green"></div>
<div class="cyan"></div>
<div class="blue"></div>
```
