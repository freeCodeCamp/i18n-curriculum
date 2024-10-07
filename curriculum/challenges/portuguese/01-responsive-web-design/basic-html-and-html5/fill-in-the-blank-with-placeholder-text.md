---
id: bad87fee1348bd9aedf08833
title: Preencher um espaço vazio com um texto placeholder
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cgR7Dc7'
forumTopicId: 18178
dashedName: fill-in-the-blank-with-placeholder-text
---

# --description--

Web developers traditionally use <dfn>lorem ipsum text</dfn> as placeholder text. The lorem ipsum text is randomly scraped from a famous passage by Cicero of Ancient Rome.

O texto lorem ipsum vem sendo usado como texto placeholder por tipógrafos desde o século XVI. Essa é uma tradição que continua a ser utilizada na web.

Quem somos nós para discutir com cinco séculos de tradição? Como estamos construindo um aplicativo de fotos de gatos (CatPhotoApp), vamos usar um texto chamado "kitty ipsum".

# --instructions--

Substitua o texto dentro do elemento `p` pelas primeiras palavras desse texto: `Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.`

# --hints--

O elemento `p` deve conter as primeiras palavras do texto "kitty ipsum" fornecido.

```js
assert.isTrue(/Kitty(\s)+ipsum/gi.test($('p').text()));
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
