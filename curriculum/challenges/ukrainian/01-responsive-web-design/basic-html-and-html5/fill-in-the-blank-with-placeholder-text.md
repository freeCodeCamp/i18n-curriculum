---
id: bad87fee1348bd9aedf08833
title: Заповніть пробіл текстом-заповнювачем
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cgR7Dc7'
forumTopicId: 18178
dashedName: fill-in-the-blank-with-placeholder-text
---

# --description--

Web developers traditionally use <dfn>lorem ipsum text</dfn> as placeholder text. The lorem ipsum text is randomly scraped from a famous passage by Cicero of Ancient Rome.

Текст Lorem ipsum використовується як текст заміщення типографами з 16 століття і ця традиція триває в інтернеті.

Що ж, 5 століть досить довгий час. Оскільки ми створюємо CatPhotoApp, використаємо те, що називається текстом "kitty ipsum".

# --instructions--

Замініть текст всередині елементу `p` першими декількома словами цього тексту kitty ipsum: `Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.`

# --hints--

Ваш елемент `p` повинен містити перші декілька слів представленого тексту "kitty ipsum".

```js
assert.match(document.querySelector('p').textContent,/Kitty(\s)+ipsum/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Hello Paragraph</p>
```

# --solutions--

```html
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff</p>
```
