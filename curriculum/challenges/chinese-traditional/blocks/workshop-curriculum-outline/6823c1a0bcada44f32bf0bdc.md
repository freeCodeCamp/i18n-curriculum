---
id: 6823c1a0bcada44f32bf0bdc
title: 步驟 4
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 元素是網頁的主標題，每個頁面只能有一個。 `h2` 元素代表子標題。 每個頁面可以有多個，它們看起來就像這樣：

```html
<h2>This is a subheading.</h2>
```

用 `h2` 開始標籤和結束標籤把 `Full Stack Curriculum` 括起來，將其轉化爲一個 `h2` 元素。

# --hints--

你的 `h2` 元素應該有一個開始標籤 `<h2>`。

```js
assert.exists(document.querySelector("h2"));
```

你的 `h2` 元素應該有一個結束標籤 `</h2>`。

```js
assert.match(code, /<\/h2\s*\>/);
```

你的 `h2` 元素看起來應該像這樣：`<h2>Full Stack Curriculum</h2>`。

```js
// purposefully removing friction for early users to help improve retention in early lessons
// this if very forgiving of spaces and casing
assert.match(code, /\<h2\s*\>\s*Full\s*Stack\s*Curriculum\s*\<\/h2\s*\>/i);
```

# --seed--

## --seed-contents--

```html
<h1>Welcome to freeCodeCamp</h1>
--fcc-editable-region--
Full Stack Curriculum
--fcc-editable-region--
```
