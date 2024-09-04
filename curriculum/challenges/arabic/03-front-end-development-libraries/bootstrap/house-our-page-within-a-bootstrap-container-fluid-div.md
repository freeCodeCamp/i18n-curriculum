---
id: bad87fee1348bd9aec908746
title: أسكن صفحك في عنصر container-fluid باستخدام Bootstrap
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

الآن تحقق أن كل المحتويات الموجودة في صفحتك مستجيبة للجوال (mobile-responsive).

أدخل عنصر `h3` الخاص بك داخل عنصر `div` مع الفئة `container-fluid`.

# --hints--

يجب أن يمتلك عنصر `div` الخاص بك فئة `container-fluid`.

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

لا بد أن يوجد وسم إغلاق لكل عناصر `div`.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

عنصر `h3` الخاص بك يجب أن يكون متداخلا داخل عنصر `div`.

```js
const divElement = document.querySelector('div');
const divChildren = divElement?.querySelectorAll(`:scope ${'h3'}`)
assert.lengthOf(divChildren,1);
```

# --seed--

## --seed-contents--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```

# --solutions--

```html
<div class="container-fluid">
    <h3 class="text-primary text-center">jQuery Playground</h3>
</div>
```
