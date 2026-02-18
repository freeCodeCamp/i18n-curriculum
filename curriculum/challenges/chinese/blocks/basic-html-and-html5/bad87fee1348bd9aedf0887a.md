---
id: bad87fee1348bd9aedf0887a
title: 用 h2 元素代表副标题
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

在接下来的几节课里，我们将会一步一步地制作一个展示猫咪图片的 HTML5 app。

这节课中，我们将会为页面引入作为第二级标题的 `h2` 元素。

该元素告诉浏览器你网站的结构。`h1` 元素通常用于主标题，而 `h2` 元素通常用于副标题。还有 `h3`、`h4`、`h5` 和 `h6` 元素用于表示不同级别的副标题。

# --instructions--

在内容为 "Hello World" 的 `h1` 元素下面创建一个 `h2` 元素，其内容为 “CatPhotoApp”。

# --hints--

应创建一个 `h2` 元素。

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

你的 `h2` 元素应该有一个结束标签。

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

`h2` 元素的内容应为：`CatPhotoApp`。

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

`h1` 元素的内容文本应为 `Hello World`。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

`h1` 元素应出现在 `h2` 元素之前。

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
