---
id: bad87fee1348bd9aec908746
title: Розмістіть нашу сторінку всередині container-fluid div
challengeType: 0
forumTopicId: 18198
dashedName: house-our-page-within-a-bootstrap-container-fluid-div
---

# --description--

Now let's make sure all the content on your page is mobile-responsive.

Вкладіть елемент `h3` в межах елемента `div` з класом `container-fluid`.

# --hints--

Елемент `div` повинен мати клас `container-fluid`.

```js
assert.isTrue(document.querySelector('div')?.classList?.contains('container-fluid'));
```

Кожен елемент `div` повинен мати кінцевий тег.

```js
assert.match(code,/<\/div>/g);
assert.match(code,/<div/g);

assert.equal(code.match(/<\/div>/g).length ,code.match(/<div/g).length);
```

Елемент `h3` має бути вкладеним в елементі `div`.

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
