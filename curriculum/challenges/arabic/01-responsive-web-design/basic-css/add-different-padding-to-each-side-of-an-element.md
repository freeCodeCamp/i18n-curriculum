---
id: bad87fee1348bd9aedf08824
title: إضافة هوامش مختلفة لكل جانب من العنصر
challengeType: 0
videoUrl: 'https://scrimba.com/c/cB7mwUw'
forumTopicId: 16634
dashedName: add-different-padding-to-each-side-of-an-element
---

# --description--

Sometimes you will want to customize an element so that it has different amounts of `padding` on each of its sides.

تسمح لك لغة CSS بالتحكم في الـ `padding` من جميع الجوانب الأربعة للعنصر باستخدام خصائص الـ `padding-top` و `padding-right` و `padding-bottom` و `padding-left`.

# --instructions--

اعطي الصندوق الأزرق `padding` عبارة عن `40px` على جانبه العلوي والأيسر، و `20px` على الجانب السفلي والأيمن.

# --hints--

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `40px` من الـ `padding`.

```js
assert($('.blue-box').css('padding-top') === '40px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `20px` من الـ `padding`.

```js
assert($('.blue-box').css('padding-right') === '20px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة من الجانب السفلي `20px` من الـ `padding`.

```js
assert($('.blue-box').css('padding-bottom') === '20px');
```

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة من الجانب الأيسر `40px` من الـ `padding`.

```js
assert($('.blue-box').css('padding-left') === '40px');
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
    padding-top: 40px;
    padding-right: 20px;
    padding-bottom: 20px;
    padding-left: 40px;
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
    padding-top: 40px;
    padding-right: 20px;
    padding-bottom: 20px;
    padding-left: 40px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding-top: 40px;
    padding-right: 20px;
    padding-bottom: 20px;
    padding-left: 40px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
