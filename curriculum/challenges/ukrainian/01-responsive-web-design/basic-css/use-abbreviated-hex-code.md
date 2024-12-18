---
id: bad87fee1348bd9aedf08719
title: Використання скороченого hex-коду
challengeType: 0
videoUrl: 'https://scrimba.com/c/cRkpKAm'
forumTopicId: 18338
dashedName: use-abbreviated-hex-code
---

# --description--

Many people feel overwhelmed by the possibilities of more than 16 million colors. And it's difficult to remember hex code. Fortunately, you can shorten it.

Наприклад, шістнадцятковий код червоного кольору `#FF0000` можна скоротити до `#F00`. Ця скорочена форма дає одну цифру для червоного, одну цифру для зеленого і одну цифру для синього кольору.

Це зменшує загальну кількість можливих кольорів приблизно до 4000. Але браузери будуть інтерпретувати `#FF0000` і `#F00` як один і той же колір.

# --instructions--

Спробуйте використовувати скорочені шіснадцяткові коди, що зафарбувати потрібні елементи.

<table><tbody><tr><th>Color</th><th>Short Hex Code</th></tr><tr><td>Cyan</td><td><code>#0FF</code></td></tr><tr><td>Green</td><td><code>#0F0</code></td></tr><tr><td>Red</td><td><code>#F00</code></td></tr><tr><td>Fuchsia</td><td><code>#F0F</code></td></tr></tbody></table>

# --hints--

Ваш `h1` елемент з текстом `I am red!` має демонструватися `color` червоним кольором.

```js
const redText = document.querySelector('.red-text');
const color = window.getComputedStyle(redText)['color']; 
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

Замість повного шістнадцяткового коду `#FF0000` для червоного кольору потрібно використати абревіатуру.

```js
assert.match(code,/\.red-text\s*?{\s*?color\s*:\s*?#F00\s*?;?\s*?}/gi);
```

Ваш `h1` елемент з текстом `I am green!` має демонструватися `color` зеленим кольором.

```js
const greenText = document.querySelector('.green-text');
const color = window.getComputedStyle(greenText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 0)');
```

Замість повного шістнадцяткового коду `#00FF00` для зеленого кольору потрібно використати абревіатуру.

```js
assert.match(__helpers.removeCssComments(code), /\.green-text\s*?{\s*?color\s*:\s*?#0F0\s*?;?\s*?}/gi);
```

Ваш `h1` елемент з текстом `I am cyan!` має демонструватися `color` блакитним кольором.

```js
const cyanText = document.querySelector('.cyan-text');
const color = window.getComputedStyle(cyanText)['color']; 
assert.strictEqual(color, 'rgb(0, 255, 255)');
```

Замість повного шістнадцяткового коду `#00FFFF` для блакитного кольору потрібно використати абревіатуру.

```js
assert.match(__helpers.removeCssComments(code), /\.cyan-text\s*?{\s*?color\s*:\s*?#0FF\s*?;?\s*?}/gi);
```

Ваш `h1` елемент з текстом `I am fuchsia!` має демонструватися `color` кольором фуксія.

```js
const fuchsiaText = document.querySelector('.fuchsia-text');
const color = window.getComputedStyle(fuchsiaText)['color']; 
assert.strictEqual(color,'rgb(255, 0, 255)');
```

Замість повного шістнадцяткового коду `#FF00FF` для кольору фуксія потрібно використати абревіатуру.

```js
assert.match(__helpers.removeCssComments(code), /\.fuchsia-text\s*?{\s*?color\s*:\s*?#F0F\s*?;?\s*?}/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .red-text {
    color: #000000;
  }
  .fuchsia-text {
    color: #000000;
  }
  .cyan-text {
    color: #000000;
  }
  .green-text {
    color: #000000;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="fuchsia-text">I am fuchsia!</h1>

<h1 class="cyan-text">I am cyan!</h1>

<h1 class="green-text">I am green!</h1>
```

# --solutions--

```html
<style>
  .red-text {
    color: #F00;
  }
  .fuchsia-text {
    color: #F0F;
  }
  .cyan-text {
    color: #0FF;
  }
  .green-text {
    color: #0F0;
  }
</style>

<h1 class="red-text">I am red!</h1>

<h1 class="fuchsia-text">I am fuchsia!</h1>

<h1 class="cyan-text">I am cyan!</h1>

<h1 class="green-text">I am green!</h1>
```
