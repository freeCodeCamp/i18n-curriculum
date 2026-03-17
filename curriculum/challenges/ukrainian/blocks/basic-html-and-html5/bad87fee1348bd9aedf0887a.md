---
id: bad87fee1348bd9aedf0887a
title: Заголовок із елементом h2
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

У наступних кількох уроках ми поступово створимо HTML5 застосунок із фотографіями котів.

Елемент `h2`, який ви додасте на цьому кроці, додасть заголовок другого рівня на вебсторінку.

Цей елемент повідомляє браузеру про структуру вашого сайту. Елементи `h1` часто використовують для основних заголовків, тоді як елементи `h2` зазвичай призначені для підзаголовків. Існують також елементи `h3`, `h4`, `h5` і `h6`, які позначають різні рівні підзаголовків.

# --instructions--

Додайте тег `h2` із текстом "CatPhotoApp", щоб створити другий HTML-елемент під вашим елементом `h1` із текстом "Hello World".

# --hints--

Вам слід створити елемент `h2`.

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

Ваш елемент `h2` має мати кінцевий тег.

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

Ваш елемент `h2` має містити текст `CatPhotoApp`.

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

Ваш елемент `h1` має містити текст `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

Ваш елемент `h1` має бути перед вашим елементом `h2`.

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
