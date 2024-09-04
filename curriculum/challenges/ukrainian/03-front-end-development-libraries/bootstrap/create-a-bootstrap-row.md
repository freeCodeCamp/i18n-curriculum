---
id: bad87fee1348bd9bec908846
title: Створіть ряд Bootstrap
challengeType: 0
forumTopicId: 16813
dashedName: create-a-bootstrap-row
---

# --description--

Тепер створимо ряд Bootstrap для вбудованих елементів.

Створіть елемент `div` з класом `row` під тегом `h3`.

# --hints--

Додайте елемент `div` під елементом `h3`.

```js
assert.lengthOf(document.querySelectorAll('div'),2);
assert.lengthOf(document.querySelectorAll('div.row h3.text-primary'),0);
assert.lengthOf(document.querySelectorAll('div.row + h3.text-primary'),0)
assert.lengthOf(document.querySelectorAll('h3.text-primary + div.row'),1);
```

Елемент `div` повинен мати клас `row`

```js
const newDiv = document.querySelectorAll('div')?.[1]; 
assert.isTrue(newDiv?.classList?.contains('row'));
```

`row div` має бути вкладеним всередині `container-fluid div`

```js
assert.lengthOf(document.querySelectorAll('div.container-fluid div.row'),1);
```

Елемент `div` повинен мати кінцевий тег.

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
