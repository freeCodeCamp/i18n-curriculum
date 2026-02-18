---
id: 6823c1a0bcada44f32bf0bdc
title: 步骤4
challengeType: 0
dashedName: step-4
---

# --description--

`h1` 元素是网页的主标题，每个页面你应该只使用一个。`h2` 元素表现子标题。每个页面可以有多个，它们看起来像这样：

```html
<h2>This is a subheading.</h2>
```

将 `Full-Stack Curriculum` 文本用开闭 `h2` 标签包围，转换为 `h2` 元素。

# --hints--

你的 `h2` 元素应有一个开启的 `<h2>` 标签。

```js
assert.exists(document.querySelector("h2"));
```

你的 `h2` 元素应有一个闭合的 `</h2>` 标签。

```js
assert.match(code, /<\/h2\s*\>/);
```

你的 `h2` 元素应如下所示：`<h2>Full-Stack Curriculum</h2>`。

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
