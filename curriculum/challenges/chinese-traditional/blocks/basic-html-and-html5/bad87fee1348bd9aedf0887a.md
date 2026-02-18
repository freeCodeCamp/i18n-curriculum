---
id: bad87fee1348bd9aedf0887a
title: 使用 h2 元素的標題
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

在接下來的幾堂課中，我們將逐步建置一個 HTML5 貓咪照片網頁應用程式。

你在此步驟中將添加的 `h2` 元素會為網頁新增一個層次二的標題。

此元素告訴瀏覽器你網站的結構。`h1` 元素通常用於主要標題，而 `h2` 元素一般用於副標題。還有 `h3`、`h4`、`h5` 和 `h6` 元素用來顯示不同層級的副標題。

# --instructions--

為你的 `h1` 元素「Hello World` 下方創建第二個 HTML 元素，並添加一個顯示「CatPhotoApp」的 `h2` 頁籤。

# --hints--

你應該創建一個 `h2` 元素。

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

你的 `h2` 元素應該有一個結束標籤。

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

你的 `h2` 元素應該有文字 `CatPhotoApp`。

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

你的 `h1` 元素應該有文字 `Hello World`。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

你的 `h1` 元素應該在你的 `h2` 元素之前。

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
