---
id: 587d78ad367417b2b2512afb
title: استعمال خاصية flex-shrink لتقليص الأصناف
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVaDAv/cd3PBfr'
forumTopicId: 301113
dashedName: use-the-flex-shrink-property-to-shrink-items
---

# --description--

So far, all the properties in the challenges apply to the flex container (the parent of the flex items). However, there are several useful properties for the flex items.

الأول هو الخاصية `flex-shrink`. عندما يتم استخدامه، فإنه يسمح لعنصر بأن يتقلص إذا كانت الحاوية المرنة صغيرة جداً. تنكمش العناصر عندما يكون عرض الحاوية الأصلية أصغر من العرض المجمع لجميع العناصر المرنة داخلها.

الخاصية `flex-shrink` تأخذ الأرقام كقيم. وكلما ارتفع العدد، سيتقلص العدد مقارنة بالاصناف الأخرى في الحاوية. على سبيل المثال، إذا كانت قيمة `flex-shrink` لأحد العناصر `1` وقيمة `flex-shrink` لعنصر آخر `3`، فإن العنصر الذي لديه قيمة `3` سيتقلص ثلاث أضعاف ما سيتقلصه العنصر الآخر.

# --instructions--

أضف خاصية CSS `flex-shrink` لكل من `#box-1` و `#box-2`. أعط `#box-1` قيمة `1` و أعط `#box-2` قيمة `2`.

# --hints--

في العنصر `#box-1` يجب أن تحصل خاصية `flex-shrink` على قيمة `1`.

```js
assert($('#box-1').css('flex-shrink') == '1');
```

في العنصر `#box-2` يجب أن تحصل خاصية `flex-shrink` على قيمة `2`.

```js
assert($('#box-2').css('flex-shrink') == '2');
```

# --seed--

## --seed-contents--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 100%;
    height: 200px;

  }

  #box-2 {
    background-color: orangered;
    width: 100%;
    height: 200px;

  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```

# --solutions--

```html
<style>
  #box-container {
    display: flex;
    height: 500px;
  }
  #box-1 {
    background-color: dodgerblue;
    width: 100%;
    height: 200px;
    flex-shrink: 1;
  }

  #box-2 {
    background-color: orangered;
    width: 100%;
    height: 200px;
    flex-shrink: 2;
  }
</style>

<div id="box-container">
  <div id="box-1"></div>
  <div id="box-2"></div>
</div>
```
