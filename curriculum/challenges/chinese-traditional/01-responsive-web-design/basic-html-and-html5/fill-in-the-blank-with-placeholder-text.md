---
id: bad87fee1348bd9aedf08833
title: 用佔位符文本填充空白
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cgR7Dc7'
forumTopicId: 18178
dashedName: fill-in-the-blank-with-placeholder-text
---

# --description--

Web developers traditionally use <dfn>lorem ipsum text</dfn> as placeholder text. The lorem ipsum text is randomly scraped from a famous passage by Cicero of Ancient Rome.

Lorem ipsum text 自 16 世紀以來就在排版中被用作佔位符，這一習慣也在 Web 開發中得以延續。

五個世紀已經很久遠了。 因爲我們正在構建一個 CatPhotoApp，所以我們使用 “kitty ipsum” 文本。

# --instructions--

`p` 元素的內容文本應包含 `Kitty ipsum`。

# --hints--

你的 `p` 元素應包含 “kitty ipsum” 文本的前面幾個詞。

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
