---
id: 6823c1a0bcada44f32bf0bdc
title: 步骤 4
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 元素是网页的主标题，每个页面只能有一个。 `h2` 元素代表子标题。 每个页面可以有多个，它们看起来就像这样：

```html
<h2>This is a subheading.</h2>
```

用 `h2` 开始标签和结束标签把 `Full Stack Curriculum` 括起来，将其转化为一个 `h2` 元素。

# --hints--

你的 `h2` 元素应该有一个开始标签 `<h2>`。

```js
assert.exists(document.querySelector("h2"));
```

你的 `h2` 元素应该有一个结束标签 `</h2>`。

```js
assert.match(code, /<\/h2\s*\>/);
```

你的 `h2` 元素看起来应该像这样：`<h2>Full Stack Curriculum</h2>`。

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
