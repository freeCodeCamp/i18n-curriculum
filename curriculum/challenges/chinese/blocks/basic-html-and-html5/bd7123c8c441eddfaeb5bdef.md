---
id: bd7123c8c441eddfaeb5bdef
title: 向 HTML 元素问好
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

欢迎访问 freeCodeCamp 的 HTML 编程挑战。 这些挑战将会帮助你逐步掌握 Web 开发。

首先，我们来用 HTML 制作一个简单的网页。 你可以直接在网页内置的代码编辑器中编辑代码。

你在代码编辑器中看到写着 `<h1>Hello</h1>` 的代码了吗？那是一个超文本标记语言元素。

大部分 HTML 元素都有一个开始标签和一个结束标签。

开始标签像这样：

```html
<h1>
```

结束标签像这样：

```html
</h1>
```

开始标签和结束标签的唯一区别就是结束标签多了一个斜杠。

每个挑战都有测试，任何时候你点击“运行测试”按钮，就可以运行测试。 如果代码通过测试，将会弹出一个窗口，你就可以进入下一个挑战。

# --instructions--

要通过这个挑战的测试，需要修改 `h1` 元素的文本为 `Hello World`。

# --hints--

`h1` 元素的内容文本应为 `Hello World`。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
