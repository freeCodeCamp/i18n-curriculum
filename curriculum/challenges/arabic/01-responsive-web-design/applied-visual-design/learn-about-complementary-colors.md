---
id: 587d78a3367417b2b2512ad1
title: تعرف على الألوان المكمّلة
challengeType: 0
videoUrl: 'https://scrimba.com/c/c2MD3Tr'
forumTopicId: 301056
dashedName: learn-about-complementary-colors
---

# --description--

Color theory and its impact on design is a deep topic and only the basics are covered in the following challenges. On a website, color can draw attention to content, evoke emotions, or create visual harmony. Using different combinations of colors can really change the look of a website, and a lot of thought can go into picking a color palette that works with your content.

عجلة الألوان هي أداة مفيدة لتصور ارتباط الألوان ببعضها - هي عبارة عن دائرة بحيث أن الألوان المتشابهة تكون قريبة على بعضها والألوان المختلفة تكون أبعد عن بعضها البعض. عندما يكون لونين متقابلين على العجلة، يُطلق عليهم اسم الألوان المكملة. إذا تم الجمع بين هذين اللونين، لديهم خاصية إلغاء بعضهم البعض وخلق لون رمادي. غير أنه إذا تم وضعهم جنباً إلى جنب، تبدو هذه الألوان أكثر حيوية، وتنتج لنا تبايناً بصرياً قوياً.

بعض الأمثلة من الألوان المكمّلة مع رمزها اللوني hex:

<blockquote>الأحمر (#FF0000) والسماوي (#00FFFF) <br> الأخضر (#00FF00) والأحمر الأرجواني (#FF00FF)<br> الأزرق (#0000FF) و الأصفر (#FFFF00)</blockquote>

هذا يختلف عن نموذج الألوان المتقادم RGB الذي درسه معضمنا في المدرسة، والذي له ألوان أساسية ومكمّلة مختلفة. تستخدم نظرية الألوان الحديثة النموذج اللوني المضاف RGB (مثل شاشة الكمبيوتر) والنموذج اللوني المطروح CMYK (في الطباعة).

هناك العديد من أدوات اختيار الألوان المتوفرة اونلاين التي لديها خيار ايجاد اللون المكمّل للون معين.

**ملاحظة:** استخدام الألوان يمكن أن يكون وسيلة فعالة لإضافة عنصر بصري مثير للاهتمام إلى الصفحة. غير أنه لا يجب استخدام الألوان وحدها كوسيلة لإيصال المعلومات، لأن المستخدمين الذين يعانون من ضعف بصري قد لا يفهمون هذا المحتوى. سيتم تناول هذه المسألة بمزيد من التفصيل في تحديات إمكانية الوصول المطبقة

# --instructions--

قم بتغيير خاصية `background-color` للكلاس `blue` و `yellow` إلى الألوان الخاصة بهم. لاحظ كيف أن الألوان تظهر مختلفة بجانب بعضها مقارنة بوجودها على خلفية بيضاء.

# --hints--

يجب أن يحتوي عنصر `div` مع كلاس `blue` على `background-color` أزرق.

```js
const blueElement = document.querySelector('.blue');
const blueStyle = window.getComputedStyle(blueElement); 
assert.equal(blueStyle?.backgroundColor, 'rgb(0, 0, 255)');
```

يجب أن يحتوي عنصر `div` مع كلاس `yellow` على `background-color` أصفر.

```js
const yellowElement = document.querySelector('.yellow');
const yellowStyle = window.getComputedStyle(yellowElement);
assert.equal(yellowStyle?.backgroundColor, 'rgb(255, 255, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: #000000;
  }
  .yellow {
    background-color: #000000;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```

# --solutions--

```html
<style>
  body {
    background-color: #FFFFFF;
  }
  .blue {
    background-color: blue;
  }
  .yellow {
    background-color: yellow;
  }
  div {
    display: inline-block;
    height: 100px;
    width: 100px;
  }
</style>
<div class="blue"></div>
<div class="yellow"></div>
```
