---
id: 587d78a4367417b2b2512ad2
title: 瞭解三次色
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

三次色是由原色和二次色相加產生的顏色， 例如，在 RGB 顏色模型中，紅色（原色）和黃色（二次色）相加產生橙色（三次色）。 將這六種顏色中相鄰的顏色相加，便產生了十二色色環。

設計裏面有很多種顏色搭配方法。 涉及到三次色的一種配色方法是分裂補色搭配法。 選定主色之後，在色環上選擇與它的補色相鄰的兩種顏色與之搭配。 此種搭配既有對比，又不失和諧。

下面是使用分裂補色搭配法創建的三個顏色：

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

把 class 爲 `orange`、`cyan` 和 `raspberry` 的 `background-color` 改成其對應的顏色。 在這個挑戰中，請使用顏色的十六進制符號（即 hex code）來表示。

# --hints--

class 爲 `orange` 的 `div` 的 `background-color` 屬性值應爲橙色。

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

class 爲 `cyan` 的 `div` 的 `background-color` 屬性值應爲藍綠色。

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

class 爲 `raspberry` 的 `div` 的 `background-color` 屬性值應爲樹莓紅色。

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

所有的 `background-color` 應使用十六進制顏色碼，而不應使用顏色名稱。

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
