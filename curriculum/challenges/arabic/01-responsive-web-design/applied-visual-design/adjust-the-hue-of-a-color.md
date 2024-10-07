---
id: 587d78a4367417b2b2512ad4
title: ضبط درجة اللون (Adjust the Hue of a Color)
challengeType: 0
videoUrl: 'https://scrimba.com/c/cPp38TZ'
forumTopicId: 301036
dashedName: adjust-the-hue-of-a-color
---

# --description--

Colors have several characteristics including hue, saturation, and lightness. CSS3 introduced the `hsl()` function as an alternative way to pick a color by directly stating these characteristics.

**hue** هو ما قد يظنه الناس عموماً أنه أصل اللون. إذا تخيلت طيفاً من الألوان يبدأ بالأحمر من اليسار، ثمَّ يَعبُرْ للأخضر في المنتصف، ثم للأزرق على اليمين، فإنَّ درجة اللون (hue) هي نقطة توجد على هذا الخط من التدرج اللوني. في `hsl()`، يستخدم درجة اللون (hue) مفهوم عجلة اللون بدلا من الطيف ، حيث يتم إعطاء زاوية اللون في الدائرة كقيمة بين 0 و 360.

التشبع (**saturation**) هو كمية الرمادي بلون. اللون المشبع بالكامل ليس له رمادي فيه، اللون المشبع قليلاً هو يكاد أن يكون رمادي بالكامل. ويعطى هذا كنسبة مئوية ويكون قيمته 100% للتشبُع الكامل.

التشبع (**saturation**) هو كمية الابيض أو الاسود باللون. وتعطى نسبة مئوية تتراوح بين 0% (أسود) و 100% (أبيض)، حيث تكون نسبة 50 في المائة هي اللون العادي.

فيما يلي بعض الأمثلة على استخدام `hsl()` بألوان مشبعة بالكامل و إنارة عادية:

<table><thead><tr><th>Color</th><th>HSL</th></tr></thead><tbody><tr><td>red</td><td>hsl(0, 100%, 50%)</td></tr><tr><td>yellow</td><td>hsl(60, 100%, 50%)</td></tr><tr><td>green</td><td>hsl(120, 100%, 50%)</td></tr><tr><td>cyan</td><td>hsl(180, 100%, 50%)</td></tr><tr><td>blue</td><td>hsl(240, 100%, 50%)</td></tr><tr><td>magenta</td><td>hsl(300, 100%, 50%)</td></tr></tbody></table>

# --instructions--

قم بتغيير خاصية `background-color` لكل `div` استناداً إلى أسماء الفئات (`green` أو `cyan` أو `blue` باستخدام `hsl()`. الثلاثة يجب أن يكون لديهم تشبّع لون كامل و إضاءة عادية.

# --hints--

يجب أن يحتوي الكود على function (دالة) `hsl()` لإعلان اللون الأخضر (green).

```js
assert.match(code,/\.green\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

يجب أن يحتوي الكود على function (دالة) `hsl()` لإعلان اللون الأخضر (green).

```js
assert.match(code,/\.cyan\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

على الكود أن يحوي function (دالة) `hsl()` لإعلان اللون الأزرق (blue).

```js
assert.match(code,/\.blue\s*?{\s*?background-color\s*:\s*?hsl/gi);
```

يجب أن يحتوي عنصر `div` الذي له فئة `green` على `background-color` أخضر.

```js
const greenElement = document.querySelector(".green");
const greenStyle = window.getComputedStyle(greenElement); 
assert.equal(greenStyle?.backgroundColor, 'rgb(0, 255, 0)');
```

يجب أن يحتوي عنصر `div` الذي له فئة `cyan` على `background-color` باللون الأزرق السماوي (cyan).

```js
const cyanElement = document.querySelector(".cyan");
const cyanStyle = window.getComputedStyle(cyanElement); 
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

يجب أن يحتوي عنصر `div` الذي له فئة `blue` على `background-color` أزرق.

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
