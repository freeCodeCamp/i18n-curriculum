---
id: bad87fee1348bd9aedf08833
title: Leere Stellen mit Platzhaltertext füllen
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cgR7Dc7'
forumTopicId: 18178
dashedName: fill-in-the-blank-with-placeholder-text
---

# --description--

Web developers traditionally use <dfn>lorem ipsum text</dfn> as placeholder text. The lorem ipsum text is randomly scraped from a famous passage by Cicero of Ancient Rome.

Lorem ipsum Text wird von Schriftsetzern seit dem 16. Jahrhundert als Platzhaltertext verwendet, und diese Tradition setzt sich im Web fort.

Nun, fünf Jahrhunderte sind lang genug. Da wir eine CatPhotoApp erstellen, wollen wir einen Text namens "kitty ipsum" verwenden.

# --instructions--

Ersetze den Text innerhalb deines `p`-Elements durch die ersten paar Worte dieses Kitty ipsum Textes: `Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.`

# --hints--

Dein `p`-Element sollte die ersten paar Wörter des mitgelieferten "kitty ipsum"-Textes enthalten.

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
