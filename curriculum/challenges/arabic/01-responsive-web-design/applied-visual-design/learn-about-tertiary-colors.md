---
id: 587d78a4367417b2b2512ad2
title: تعرّف على الألوان الثلاثية
challengeType: 0
forumTopicId: 301057
dashedName: learn-about-tertiary-colors
---

# --description--

Computer monitors and device screens create different colors by combining amounts of red, green, and blue light. This is known as the RGB additive color model in modern color theory. Red (R), green (G), and blue (B) are called primary colors. Mixing two primary colors creates the secondary colors cyan (G + B), magenta (R + B) and yellow (R + G). You saw these colors in the Complementary Colors challenge. These secondary colors happen to be the complement to the primary color not used in their creation, and are opposite to that primary color on the color wheel. For example, magenta is made with red and blue, and is the complement to green.

الألوان الثلاثية هي نتاج مزج لون أساسي مع لون ثانوي قريب. على سبيل المثال، في نموذج الألوان المضافة RGB، الأحمر (أساسي) والأصفر (ثانوي) ينتجون البرتقالي (ثلاثي). هذا يصيف ستة ألوان أخرى إلى عجلة ألوان بسيطة ليصبح المجموع اثنا عشر.

هناك عدة طرق لانتقاء ألوان مختلفة ينتج عنها مزيج متناسق في التصميم. أحد الأمثلة التي يمكن أن تستخدم الألوان الثلاثية تعرف بمخطط الألوان المكمّلة المنقسمة. يبدأ هذا المخطط بلون قاعدة، ثم تربطه باللونين المجاورين للون المكمل له. توفر الألوان الثلاثة تبايناً بصرياً في التصميم، لكنها أخف من استخدام لونين مكمّلين.

هذه ثلاثة ألوان تم صنعها بواسطة مخطط الألوان المكمّّلة المنقسمة:

<table><thead><tr><th>Color</th><th>Hex Code</th></tr></thead><thead></thead><tbody><tr><td>orange</td><td>#FF7F00</td></tr><tr><td>cyan</td><td>#00FFFF</td></tr><tr><td>raspberry</td><td>#FF007F</td></tr></tbody></table>

# --instructions--

قم بتغيير خاصية `background-color` التابعة لكلاس `orange`, `cyan`, و `raspberry` إلى ألوانهم الخاصة بهم. تأكد من استخدام رموز hex وليس أسماء الألوان.

# --hints--

يجب أن يحتوي عنصر `div` مع الكلاس `orange` على `background-color` باللون البرتقالي.

```js
const orangeElement = document.querySelector('.orange');
const orangeStyle = window.getComputedStyle(orangeElement);
assert.equal(orangeStyle?.backgroundColor, 'rgb(255, 127, 0)');
```

يجب أن يحتوي عنصر `div` مع الكلاس `cyan` على `background-color` باللون الأزرق السماوي.

```js
const cyanElement = document.querySelector('.cyan');
const cyanStyle = window.getComputedStyle(cyanElement);
assert.equal(cyanStyle?.backgroundColor, 'rgb(0, 255, 255)');
```

يجب أن يحتوي عنصر `div` مع الكلاس `raspberry` على `background-color` بلون توت العليق.

```js
const raspberryElement = document.querySelector('.raspberry');
const raspberryStyle = window.getComputedStyle(raspberryElement);
assert.equal(raspberryStyle?.backgroundColor, 'rgb(255, 0, 127)');
```

يجب أن تكون كل قيم `background-color` لكلاس الألوان برموز hex وليس بأسماء الألوان.

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
