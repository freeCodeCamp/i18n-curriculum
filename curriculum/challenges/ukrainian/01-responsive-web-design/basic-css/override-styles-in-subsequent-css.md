---
id: bad87fee1348bd9aedf04756
title: Заміна стилів в послідовних CSS
challengeType: 0
videoUrl: 'https://scrimba.com/c/cGJDQug'
forumTopicId: 18253
dashedName: override-styles-in-subsequent-css
---

# --description--

Our `pink-text` class overrode our `body` element's CSS declaration!

Ми щойно довели, що наші класи замінятимуть CSS елемента `body`. Тому, наступне логічне питання: що можна зробити, аби замінити клас `pink-text`?

# --instructions--

Створіть додатковий клас CSS під назвою `blue-text`, який надасть елементу синього кольору. Упевніться, що він знаходиться нижче об'яви класу `pink-text`.

Застосуйте клас `blue-text` до елемента `h1` на додачу до класу `pink-text` і погляньмо хто ж з них переможе.

Застосувати декілька атрибутів класу до елемента HTML можна за допомогою пробілу між ними таким чином:

```html
class="class1 class2"
```

**Примітка:** Порядок, в якому перераховані класи в HTML елементі не має значення.

Натомість, порядок об'яв `class` у розділі `<style>` має велике значення. Друга об'ява завжди буде мати пріоритет над першою. Оскільки`.blue-text` декларовано другим, він зміщує атрибути `.pink-text`.

# --hints--

Елемент `h1` повинен мати клас `pink-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('pink-text'));
```

Елемент `h1` повинен мати клас `blue-text`.

```js
assert.isTrue(document.querySelector('h1').classList.contains('blue-text'));
```

Обидва класи `blue-text` та `pink-text` повинні належати одному елементу `h1`.

```js
assert.isTrue(document.querySelector('.pink-text').classList.contains('blue-text'));
```

Елемент `h1` повинен бути синім.

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color']; 
assert.strictEqual(color, 'rgb(0, 0, 255)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }
</style>
<h1 class="pink-text">Hello World!</h1>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }
  .pink-text {
    color: pink;
  }

  .blue-text {
    color: blue;
  }  
</style>
<h1 class="pink-text blue-text">Hello World!</h1>
```
