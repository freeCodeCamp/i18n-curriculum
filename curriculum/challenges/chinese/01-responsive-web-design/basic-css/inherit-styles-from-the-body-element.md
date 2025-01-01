---
id: bad87fee1348bd9aedf08746
title: 从 body 元素继承样式
challengeType: 0
videoUrl: 'https://scrimba.com/c/c9bmdtR'
forumTopicId: 18204
dashedName: inherit-styles-from-the-body-element
---

# --description--

Now we've proven that every HTML page has a `body` element, and that its `body` element can also be styled with CSS.

设置 `body` 元素样式的方法跟设置其他 HTML 元素样式的方式一样，并且其他元素也会继承 `body` 中所设置的样式。

# --instructions--

First, create an `h1` element with the text `Hello World`.

接着，在 `body` 的 CSS 规则里面添加 `color: green;`，这会将页面内所有字体的颜色都设置为 `green`。

最后，在 `body` 的 CSS 规则里面添加 `font-family: monospace;`，这会将 `body` 内所有元素的字体都设置为 `monospace`。

# --hints--

应创建一个 `h1` 元素。

```js
assert.isNotEmpty(document.querySelectorAll('h1'));
```

`h1` 元素的内容文本应为 `Hello World`。

```js
assert.match(
  document.querySelector('h1').textContent,
  /hello world/i
);
```

确保 `h1` 元素具有结束标签。

```js
const commentlessCode = __helpers.removeHtmlComments(code);
assert.match(commentlessCode, /<\/h1>/g);
assert.match(commentlessCode, /<h1/g);
assert.lengthOf(commentlessCode.match(/<\/h1>/g), commentlessCode.match(/<h1/g).length);
```

`body` 元素的 `color` 属性值应为 `green`。

```js
const bodyElement = document.querySelector('body');
const color = window.getComputedStyle(bodyElement)['color']; 
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

`body` 元素的 `font-family` 属性值应为 `monospace`。

```js
const bodyElement = document.querySelector('body');
const fontFamily = window.getComputedStyle(bodyElement)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

`h1` 元素应该继承 `body` 的 `monospace` 字体属性。

```js
const h1Element = document.querySelector('h1');
const fontFamily = window.getComputedStyle(h1Element)['font-family'];
assert.include(fontFamily.toLowerCase(), "monospace");
```

`h1` 元素应该继承 `body` 的 `green` 颜色属性。

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
