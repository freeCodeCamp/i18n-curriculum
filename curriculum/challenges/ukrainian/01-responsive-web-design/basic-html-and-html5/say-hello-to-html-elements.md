---
id: bd7123c8c441eddfaeb5bdef
title: Ознайомтесь з HTML елементами
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

Welcome to freeCodeCamp's HTML coding challenges. These will walk you through web development step-by-step.

Перше за все ви створите просту веб-сторінку за допомогою HTML. Ви можете редагувати код безпосередньо у редакторі коду, який вбудований у цю веб-сторінку.

Чи бачите ви код з написом `<h1>Hello</h1>` у вашому редакторі? Ось це і є HTML-елемент.

Більшість елементів HTML мають теги відкривання та закривання.

Так виглядають теги відривання:

```html
<h1>
```

Ось так виглядають теги закривання:

```html
</h1>
```

Єдина відмінність між тегами відкривання і закривання - скісна риска після відкриваючої квадратної дужки тега закривання.

У кожному завданні є тести, які можна виконувати в будь-який час, натиснувши на кнопку "Виконати тести". Коли ви пройдете всі тести, вам буде запропоновано надіслати ваш розв'язок та перейти до наступного завдання з кодування.

# --instructions--

Щоб пройти тест у цьому завданні, замініть текст у своєму елементі `h1` на `Hello World`.

# --hints--

Ваш `h1` елемент повинен містити текст `Hello World`.

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
