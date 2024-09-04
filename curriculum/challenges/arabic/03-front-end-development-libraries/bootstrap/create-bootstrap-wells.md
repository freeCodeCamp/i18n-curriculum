---
id: bad87fee1348bd9aec908848
title: إنشاء Wells بأسلوب Bootstrap
challengeType: 0
forumTopicId: 16825
dashedName: create-bootstrap-wells
---

# --description--

Bootstrap لديه فئة يسمى `well` يمكنه إنشاء إحساس بصري بالعمق للعمود.

أدخل عنصر `div` واحد مع فئة `well` داخل كل عنصر من عناصر `col-xs-6` في `div`.

# --hints--

يجب عليك إضافة عنصر `div` مع فئة `well` داخل كل عنصر من عناصر `div` مع فئة `col-xs-6`

```js
const wells = document.querySelectorAll('div.col-xs-6 > div.well');
assert.lengthOf( wells,2 ); 
```

يجب أن يتداخل عنصري `div` مع فئة `col-xs-6` داخل عنصر `div` مع فئة `row`.

```js
assert.lengthOf(document.querySelectorAll('div.row > div.col-xs-6'),2);
```

لا بد وجود وسم إغلاق لكل عناصر `div`.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g)?.length , code.match(/<div/g)?.length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">

    </div>
    <div class="col-xs-6">

    </div>
  </div>
</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row">
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
    <div class="col-xs-6">
      <div class="well"></div>
    </div>
  </div>
</div>
```
