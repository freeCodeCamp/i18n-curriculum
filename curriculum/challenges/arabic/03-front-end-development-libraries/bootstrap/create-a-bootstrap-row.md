---
id: bad87fee1348bd9bec908846
title: إنشاء Row بأسلوب Bootstrap
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

الآن ستنشئ صف Bootstrap لعناصرك المضمنة (inline).

إنشاء عنصر `div` أسفل العلامة `h3` مع فئة `row`.

# --hints--

يجب عليك إضافة عنصر `div` تحت عنصر `h3` الخاص بك.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

يجب يحتوي عنصر `div` على فئة `row`

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

يجب أدخال `row div` في `container-fluid div`

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

يجب أن يحتوى عنصر `div` على علامة إغلاق.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);
assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

# --seed--

## --seed-contents--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>

</div>
```

# --solutions--

```html
<div class="container-fluid">
  <h3 class="text-primary text-center">jQuery Playground</h3>
  <div class="row"></div>
</div>
```
