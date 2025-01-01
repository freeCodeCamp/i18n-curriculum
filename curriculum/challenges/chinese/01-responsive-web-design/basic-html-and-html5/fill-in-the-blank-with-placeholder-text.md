---
id: bad87fee1348bd9aedf08833
title: 用占位符文本填充空白
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cgR7Dc7'
forumTopicId: 18178
dashedName: fill-in-the-blank-with-placeholder-text
---

# --description--

Web developers traditionally use <dfn>lorem ipsum text</dfn> as placeholder text. The lorem ipsum text is randomly scraped from a famous passage by Cicero of Ancient Rome.

Lorem ipsum text 自 16 世纪以来就在排版中被用作占位符，这一习惯也在 Web 开发中得以延续。

五个世纪已经很久远了。 因为我们正在构建一个 CatPhotoApp，所以我们使用 “kitty ipsum” 文本。

# --instructions--

`p` 元素的内容文本应包含 `Kitty ipsum`。

# --hints--

你的 `p` 元素应包含 “kitty ipsum” 文本的前面几个词。

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
