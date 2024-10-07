---
id: bad88fee1348bd9aedf08825
title: ضبط هامش العُنصر الداخلي
challengeType: 0
videoUrl: 'https://scrimba.com/c/cED8ZC2'
forumTopicId: 301083
dashedName: adjust-the-padding-of-an-element
---

# --description--

Now let's put our Cat Photo App away for a little while and learn more about styling HTML.

رُبما تكون قد لاحظت هذا، لكن كُل الـ HTML elements هي بالفعل مُستطيلات صغيرة.

ثلاثةُ خصائص هامة تتحكّم في المسافة حول كُل الـ HTML element: `padding`, `border`, and `margin`.

يتحكّم عُنصر الـ `padding` في المساحة بين مُحتوى العُنصر والـ `border`.

هُنا، نستطيع أن نرى أن الصندوق الأزرق والأحمر مُتداخلان داخل الصندوق الأصفر. لاحظ أن الصندوق الأحمر لديْه `padding` أكثر من الأزرق.

عندما تقوم بزيادة الـ `padding` الخاص بالصندوق الأزرق؛ فإن المسافة ستزداد (`padding`) بين النص وبين الـ border حوله.

# --instructions--

قُم بتغيير الـ `padding` الخاص بالصندوق الأزرق ليتطابق مع الأحمر.

# --hints--

الـ class `blue-box` يجب أن يأخذ قيمة `20px` من الـ `padding`.

```js
assert($('.blue-box').css('padding-top') === '20px');
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
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding: 10px;
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
    padding: 20px;
  }

  .blue-box {
    background-color: blue;
    color: #fff;
    padding: 20px;
  }
</style>
<h5 class="injected-text">margin</h5>

<div class="box yellow-box">
  <h5 class="box red-box">padding</h5>
  <h5 class="box blue-box">padding</h5>
</div>
```
