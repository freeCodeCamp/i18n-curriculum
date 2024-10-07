---
id: bad87fee1248bd9aedf08824
title: إضافة هوامش مختلفة لكل جانب من العنصر (Add Different Margins to Each Side of an Element)
challengeType: 0
videoUrl: 'https://scrimba.com/c/cg4RWh4'
forumTopicId: 16633
dashedName: add-different-margins-to-each-side-of-an-element
---

# --description--

Sometimes you will want to customize an element so that it has a different `margin` on each of its sides.

تسمح لك لغة CSS بالتحكم في الـ `margin` من جميع الجوانب الأربعة للعنصر باستخدام خصائص الـ `margin-top` و `margin-right` و `margin-bottom` و `margin-left`.

# --instructions--

اعطي الصندوق الأزرق `margin` عبارة عن `40px` على جانبه العلوي والأيسر، و `20px` على الجانب السفلي والأيمن.

# --hints--

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `40px` من الـ `margin`.

```js
assert($('.blue-box').css('margin-top') === '40px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `20px` من الـ `margin`.

```js
assert($('.blue-box').css('margin-right') === '20px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `20px` من الـ `margin`.

```js
assert($('.blue-box').css('margin-bottom') === '20px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `40px` من الـ `margin`.

```js
assert($('.blue-box').css('margin-left') === '40px');
```

# --seed--

## --seed-contents--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 10px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```

# --solutions--

```html
<style>
  .injected-text {
    margin-bottom: -25px;
    text-align: center;
  }

  .box {
    border-style: solid;
    border-color: black;
    border-width: 5px;
    text-align: center;
  }

  .yellow-box {
    background-color: yellow;
    padding: 10px;
  }

  .red-box {
    background-color: crimson;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    margin-top: 40px;
    margin-right: 20px;
    margin-bottom: 20px;
    margin-left: 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
