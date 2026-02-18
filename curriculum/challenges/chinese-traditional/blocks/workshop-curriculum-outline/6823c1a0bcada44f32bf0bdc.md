---
id: 6823c1a0bcada44f32bf0bdc
title: 步驟 4
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 元素是網頁的主要標題，你每頁應該只使用一個。`h2` 元素表述子標題。你每頁可以有多個，它們看起來像這樣：

```html
<h2>This is a subheading.</h2>
```

將 `Full-Stack Curriculum` 文字轉成 `h2` 元素，方法是用開啟和關閉的 `h2` 標籤將它包起來。

# --hints--

你的 `h2` 元素應該有一個開啟的 `<h2>` 頁籤。

```js
assert.exists(document.querySelector("h2"));
```

你的 `h2` 元素應該有一個結束的 `</h2>` 頁籤。

```js
assert.match(code, /<\/h2\s*\>/);
```

你的 `h2` 元素應該看起來像這樣：`<h2>Full-Stack Curriculum</h2>`。

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full-Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full-Stack Curriculum
--fcc-editable-region--
```
