---
id: 587d78a6367417b2b2512add
title: إنشاء رسومات باستخدام CSS
challengeType: 0
videoUrl: 'https://scrimba.com/c/cEDWPs6'
forumTopicId: 301048
dashedName: create-a-graphic-using-css
---

# --description--

By manipulating different selectors and properties, you can make interesting shapes. One of the easier ones to try is a crescent moon shape. For this challenge you need to work with the `box-shadow` property that sets the shadow of an element, along with the `border-radius` property that controls the roundness of the element's corners.

سوف تقوم بإنشاء شكل مستدير شفاف له ظل حاد مع مسافة بسيطة بين الظل والحد الخارجي للشكل - الظل في الواقع سيمثل شكل القمر الذي نراه.

لإنشاء شكل مستدير، يجب ضبط خاصية `border-radius` إلى نسبة 50٪.

قد تتذكر من تحدي سابق أن خاصية `box-shadow` تأخذ قيم لـ `offset-x`, `offset-y`, `blur-radius`, `spread-radius`و `color` بهذا الترتيب. قيم `blur-radius` و `spread-radius` اختيارية.

# --instructions--

قم بمعالجة الشكل المربع في المحرر لإنشاء شكل القمر. أولاً، قم بتغيير `background-color` إلى `transparent`، ثم قم بضبط خاصية `border-radius` إلى 50٪ لتجعل الشكل دائريا. وأخيرا، قم بتغيير خاصية `box-shadow` لتعيين `offset-x` إلى25px, `offset-y` إلى 10px, `blur-radius` إلى 0px, `spread-radius` إلى 0px, و `color` إلى `blue`.

# --hints--

يجب تعيين قيمة خاصية `background-color` إلى `transparent`.

```js
assert.match(code,/background-color:\s*?transparent;/gi);
```

قيمة خاصية `border-radius` يجب تعيينها إلى `50%`.

```js
assert.match(code,/border-radius:\s*?50%;/gi);
```

The value of the `box-shadow` property should be set to 25px for `offset-x`, 10px for `offset-y`, 0 for `blur-radius`, 0 for `spread-radius`, and finally `blue` for the `color`.

```js
assert.match(code,/box-shadow:\s*?25px\s+?10px\s+?0(px)?\s+?0(px)?\s+?blue\s*?;/gi);
```

# --seed--

## --seed-contents--

```html
<style>
  .center {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100px;
    height: 100px;
    background-color: blue;
    border-radius: 0px;
    box-shadow: 25px 10px 10px 10px green;
  }

</style>
<div class="center"></div>
```

# --solutions--

```html
<style>
  .center {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 100px;
    height: 100px;
    background-color: transparent;
    border-radius: 50%;
    box-shadow: 25px 10px 0 0 blue;
  }
</style>
<div class="center"></div>
```
