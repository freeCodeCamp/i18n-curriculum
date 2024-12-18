---
id: bad87fee1348bd9aedf0887a
title: Заголовок з елементом h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

Over the next few lessons, we'll build an HTML5 cat photo web app piece-by-piece.

Елемент `h2`, з яким будете працювати на цьому етапі, додасть заголовок другого рівня на вашу сторінку.

Цей елемент відображає структуру вашого сайту у браузері. Елементи `h1` часто використовують для основних заголовків, а елементи `h2`, як правило, використовують для підзаголовків. Існують також елементи `h3`, `h4`, `h5` і `h6` на позначення різних рівнів підзаголовків.

# --instructions--

Додайте теґ `h2`, який містить фразу "CatPhotoApp" для того, щоб створити другий HTML-елемент під написом "Hello World" з елементом `h1`.

# --hints--

Створіть елемент `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Елемент `h2` повинен мати кінцевий тег.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Елемент `h2` повинен містити текст `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Елемент `h1` повинен містити текст `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Елемент `h1` має бути перед елементом `h2`.

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
