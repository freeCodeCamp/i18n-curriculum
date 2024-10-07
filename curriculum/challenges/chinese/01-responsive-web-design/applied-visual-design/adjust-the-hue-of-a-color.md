---
id: 587d78a4367417b2b2512ad4
title: 调整颜色的色相
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp38TZ'
forumTopicId: 301036
dashedName: adjust-the-hue-of-a-color
---

# --description--

Colors have several characteristics including hue, saturation, and lightness. CSS3 introduced the `hsl()` function as an alternative way to pick a color by directly stating these characteristics.

**色相** 是色彩的基本属性，就是平常所说的颜色名称，如红色、黄色等。 以颜色光谱为例，光谱左边从红色开始，移动到中间的绿色，一直到右边的蓝色，色相值就是沿着这条线的取值。 在 `hsl()` 里面，色相用色环来代替光谱，色相值就是色环里面的颜色对应的从 0 到 360 度的角度值。

**饱和度** 是指色彩的纯度，也就是颜色里灰色的占比。 饱和度越高则灰色占比越少，色彩也就越纯；反之则完全是灰色。 饱和度的取值范围是表示灰色所占百分比的 0 至 100。

**亮度** 决定颜色的明暗程度，也就是颜色里白色或者黑色的占比。 其中，100% 的亮度表示纯白色， 0% 的亮度则表示纯黑色；而 50% 的亮度就表示在色相中选取的颜色。

下面是一些使用 `hsl()` 描述颜色的例子，颜色都为满饱和度，中等亮度:

<table><thead><tr><th>Color</th><th>HSL</th></tr></thead><tbody><tr><td>red</td><td>hsl(0, 100%, 50%)</td></tr><tr><td>yellow</td><td>hsl(60, 100%, 50%)</td></tr><tr><td>green</td><td>hsl(120, 100%, 50%)</td></tr><tr><td>cyan</td><td>hsl(180, 100%, 50%)</td></tr><tr><td>blue</td><td>hsl(240, 100%, 50%)</td></tr><tr><td>magenta</td><td>hsl(300, 100%, 50%)</td></tr></tbody></table>

# --instructions--

将 class 为 `green`、`cyan` 和 `blue` 的 `div` 的 `background-color` 属性值设置为使用 `hsl()` 表示的颜色。 颜色都为满饱和度，亮度中等。

# --hints--

你的代码应该使用 `hsl()` 函数来声明绿色。

```js
assert.match(code,/\.green\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

你的代码应该使用 `hsl()` 函数来声明蓝绿色。

```js
assert.match(code,/\.cyan\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

你的代码应该使用 `hsl()` 函数来声明蓝色。

```js
assert.match(code,/\.blue\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

class 为 `green` 的 `div` 元素的 `background-color` 属性值应为绿色。

```js
const greenElement = document.querySelector(".green");
const greenStyle = window.getComputedStyle(greenElement); 
assert.equal(greenStyle?.backgroundColor, 'rgb(0, 255, 0)');
```

class 为 `cyan` 的 `div` 元素的 `background-color` 属性值应为蓝绿色。

```js
const cyanElement = document.querySelector(".cyan");
const cyanStyle = window.getComputedStyle(cyanElement); 
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

class 为 `blue` 的 `div` 元素的 `background-color` 属性值应为蓝色。

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
