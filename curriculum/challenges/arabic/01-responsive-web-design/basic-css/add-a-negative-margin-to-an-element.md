---
id: bad87fee1348bd9aedf08823
title: إضافة هامش بالسالب إلى عنصر
challengeType: 0
videoUrl: 'https://scrimba.com/c/cnpyGs3'
forumTopicId: 16166
dashedName: add-a-negative-margin-to-an-element
---

# --description--

An element's `margin` controls the amount of space between an element's `border` and surrounding elements.

إذا قمت بوضع الـ `margin` لعُنصر ما إلى قيمة سالبة؛ فإن هذا العنصر سيكون أكبر حجمًا.

# --instructions--

حاول وضع قيمة سالبة إلى الـ `margin` مثل كالتي بالمربع الأحمر.

قُم بتغيير الـ `margin` الخاص بالمربع الأزرق إلى 15px، ومن ثَم سيملأ العرض الخاص بالصندوق الأصفر حوله.

# --hints--

الـ class الذي اسمه `blue-box` الخاص بالصندوق الأزرق يجب أن يأخذ قيمة `-15px` من الـ `margin`.

```js
assert($('.blue-box').css('margin-top') === '-15px');
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
    padding: 20px;
    margin: -15px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding: 20px;
    margin: 20px;
  }
</style>

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
    padding: 20px;
    margin: -15px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding: 20px;
    margin: 20px;
    margin-top: -15px;
  }
</style>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
