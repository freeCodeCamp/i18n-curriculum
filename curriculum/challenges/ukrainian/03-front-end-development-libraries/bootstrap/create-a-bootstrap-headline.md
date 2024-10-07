---
id: bad87fee1348bd9aec908846
title: Створіть заголовок Bootstrap
challengeType: 0
forumTopicId: 16812
dashedName: create-a-bootstrap-headline
---

# --description--

Now let's build something from scratch to practice our HTML, CSS and Bootstrap skills.

Створимо ігровий майданчик jQuery, який згодом використовуватимемо в завданнях jQuery.

Спершу створіть елемент `h3` з текстом `jQuery Playground`.

Зафарбуйте елемент `h3` за допомогою класу `text-primary` та відцентруйте його за допомогою класу `text-center`.

# --hints--

Додайте елемент `h3` на сторінку.

```js
assert.lengthOf(document.querySelectorAll('h3'),1);
```

Елемент `h3` повинен мати кінцевий тег.

```js
assert.match(code,/<\/h3>/g);
assert.match(code,/<h3/g);
assert.equal( code.match(/<\/h3>/g).length , code.match(/<h3/g).length);
```

Елемент `h3` має бути зафарбованим за допомогою класу `text-primary`

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-primary'));
```

Елемент `h3` має бути відцентрованим за допомогою класу `text-center`

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-center'));
```

Елемент `h3` повинен мати текст `jQuery Playground`.

```js
assert.match(document.querySelector('h3')?.textContent, /jquery(\s)+playground/gi);
```

# --seed--

## --seed-contents--

```html

```

# --solutions--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```
