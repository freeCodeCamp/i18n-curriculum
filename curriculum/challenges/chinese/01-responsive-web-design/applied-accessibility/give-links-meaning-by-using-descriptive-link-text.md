---
id: 587d778f367417b2b2512aae
title: 为链接添加描述性的文本
challengeType: 0
videoUrl: 'https://scrimba.com/c/c437DcV'
forumTopicId: 301013
dashedName: give-links-meaning-by-using-descriptive-link-text
---

# --description--

Screen reader users have various options for what type of content their device reads. These options include skipping to (or over) landmark elements, jumping to the main content, or getting a page summary from the headings. Another option is to only hear the links available on a page.

屏幕阅读器通过阅读链接文本（即 `a` 标签的内容文本）来完成这个操作。 如果我们只在链接中写上 "click here"（点击这里）或者 "read more"（阅读更多），显然帮助有限。 相反地，应该在 `a` 标签中使用简洁的描述性语言来为用户提供更多的信息。

# --instructions--

Camper Cat 在链接中使用的文本在脱离上下文的情况下，描述性不是很好。 请修改锚标签（`a`），将其包含的文本从 `Click here` 改为 `information about batteries`。

# --hints--

应修改 `a` 标签，将其包含的文本从 `Click here` 改为 `information about batteries`。

```js
assert.match(document.querySelector('a')?.textContent, /^(information about batteries)$/g);
```

`a` 元素应该有一个 `href` 属性，且其属性值为空字符串 `""`。

```js
assert.isEmpty(document.querySelector('a')?.getAttribute('href'));
```

`a` 元素应该有一个结束标签。

```js
assert.isTrue(code.match(/<\/a>/g)?.length === code.match(/<a href=(''|"")>/g)?.length);
```

# --seed--

## --seed-contents--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. <a href="">Click here</a> for information about batteries</p>
  </article>
</body>
```

# --solutions--

```html
<body>
  <header>
    <h1>Deep Thoughts with Master Camper Cat</h1>
  </header>
  <article>
    <h2>Defeating your Foe: the Red Dot is Ours!</h2>
    <p>Felines the world over have been waging war on the most persistent of foes. This red nemesis combines both cunning stealth and lightning speed. But chin up, fellow fighters, our time for victory may soon be near. Click here for <a href="">information about batteries</a></p>
  </article>
</body>
```
