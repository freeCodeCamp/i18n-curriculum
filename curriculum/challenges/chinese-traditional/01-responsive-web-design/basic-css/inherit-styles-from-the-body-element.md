---
id: bad87fee1348bd9aedf08746
title: 從 body 元素繼承樣式
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bmdtR'
forumTopicId: 18204
dashedName: inherit-styles-from-the-body-element
---

# --description--

Now we've proven that every HTML page has a `body` element, and that its `body` element can also be styled with CSS.

設置 `body` 元素樣式的方法跟設置其他 HTML 元素樣式的方式一樣，並且其他元素也會繼承 `body` 中所設置的樣式。

# --instructions--

First, create an `h1` element with the text `Hello World`.

接着，在 `body` 的 CSS 規則裏面添加 `color: green;`，這會將頁面內所有字體的顏色都設置爲 `green`。

最後，在 `body` 的 CSS 規則裏面添加 `font-family: monospace;`，這會將 `body` 內所有元素的字體都設置爲 `monospace`。

# --hints--

應創建一個 `h1` 元素。

```js
assert.isNotEmpty(document.querySelectorAll('h1'));
```

`h1` 元素的內容文本應爲 `Hello World`。

```js
assert.match(
  document.querySelector('h1').textContent,
  /hello world/i
);
```

確保 `h1` 元素具有結束標籤。

```js
const commentlessCode = __helpers.removeHtmlComments(code);
assert.match(commentlessCode, /<\/h1>/g);
assert.match(commentlessCode, /<h1/g);
assert.lengthOf(commentlessCode.match(/<\/h1>/g), commentlessCode.match(/<h1/g).length);
```

`body` 元素的 `color` 屬性值應爲 `green`。

```js
const bodyElement = document.querySelector('body');
const color = window.getComputedStyle(bodyElement)['color']; 
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

`body` 元素的 `font-family` 屬性值應爲 `monospace`。

```js
const bodyElement = document.querySelector('body');
const fontFamily = window.getComputedStyle(bodyElement)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

`h1` 元素應該繼承 `body` 的 `monospace` 字體屬性。

```js
const h1Element = document.querySelector('h1');
const fontFamily = window.getComputedStyle(h1Element)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

`h1` 元素應該繼承 `body` 的 `green` 顏色屬性。

```js
const h1Element = document.querySelector('h1');
const color = window.getComputedStyle(h1Element)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

# --seed--

## --seed-contents--

```html
<style>
  body {
    background-color: black;
  }

</style>
```

# --solutions--

```html
<style>
  body {
    background-color: black;
    font-family: monospace;
    color: green;
  }

</style>
<h1>Hello World!</h1>
```
