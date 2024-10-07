---
id: 5a858944d96184f06fd60d61
title: إنشاء شبكة CSS الأولى الخاصة بك
challengeType: 0
videoUrl: 'https://scrimba.com/p/pByETK/cqwREC4'
forumTopicId: 301129
dashedName: create-your-first-css-grid
---

# --description--

Turn any HTML element into a grid container by setting its `display` property to `grid`. This gives you the ability to use all the other properties associated with CSS Grid.

**ملاحظة:** في CSS Grid، ويشار إلى العنصر الأصلي باسم <dfn>حاوية</dfn> ويدعى أطفاله <dfn>البنود</dfn>.

# --instructions--

تغيير عرض مع فئة `الحاوية` إلى `شبكة`.

# --hints--

`الحاوية` الفئة يجب أن تحتوي على `خاصية عرض` بقيمة `شبكة`.

```js
assert(code.match(/.container\s*?{[\s\S]*display\s*?:\s*?grid\s*?;[\s\S]*}/gi));
```

# --seed--

## --seed-contents--

```html
<style>
  .d1{background:LightSkyBlue;}
  .d2{background:LightSalmon;}
  .d3{background:PaleTurquoise;}
  .d4{background:LightPink;}
  .d5{background:PaleGreen;}

  .container {
    font-size: 40px;
    width: 100%;
    background: LightGray;
    /* Only change code below this line */


    /* Only change code above this line */
  }
</style>

<div class="container">
  <div class="d1">1</div>
  <div class="d2">2</div>
  <div class="d3">3</div>
  <div class="d4">4</div>
  <div class="d5">5</div>
</div>
```

# --solutions--

```html
<style>.container {display: grid;}</style>
```
