---
id: 587d78a4367417b2b2512ad2
title: 了解三次色
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

三次色是由原色和二次色相加产生的颜色， 例如，在 RGB 颜色模型中，红色（原色）和黄色（二次色）相加产生橙色（三次色）。 将这六种颜色中相邻的颜色相加，便产生了十二色色环。

设计里面有很多种颜色搭配方法。 涉及到三次色的一种配色方法是分裂补色搭配法。 选定主色之后，在色环上选择与它的补色相邻的两种颜色与之搭配。 此种搭配既有对比，又不失和谐。

下面是使用分裂补色搭配法创建的三个颜色：

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

把 class 为 `orange`、`cyan` 和 `raspberry` 的 `background-color` 改成其对应的颜色。 在这个挑战中，请使用颜色的十六进制符号（即 hex code）来表示。

# --hints--

class 为 `orange` 的 `div` 的 `background-color` 属性值应为橙色。

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

class 为 `cyan` 的 `div` 的 `background-color` 属性值应为蓝绿色。

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

class 为 `raspberry` 的 `div` 的 `background-color` 属性值应为树莓红色。

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

所有的 `background-color` 应使用十六进制颜色码，而不应使用颜色名称。

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
