---
id: bd7158d8c442eddfaeb5bd13
title: 创建一个随机引语生成器
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**注意：** **React 18 与此项目的测试存在已知不兼容问题（参见 [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)）**

**目标：** 构建一个功能上类似于此的应用程序：<a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>。

完成以下需求，并且通过所有测试。 如有必要，可以引入第三方库或使用第三方 API。 赋予它你的个人风格.

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意组合来完成此项目。 你应该使用一个前端框架（比如像是React）因为这个部分是有关于学习前端框架的。 不推荐使用以上没有列出的其他技术，不然风险自担。 我们正着手支持其他前端框架像是Angular和Vue，但是现在还不支持他们。 我们将会接受并且努力修复所有使用推荐的技术栈在这个项目中出现的问题。 祝你编程愉快！

**用户故事 #1：** 我可以看到一个带有对应 `id="quote-box"` 的包装元素。

**用户故事 #2：** 在 `#quote-box` 中，我可以看到一个具有对应 `id="text"` 的元素。

**用户故事 #3：** 在 `#quote-box` 中，我可以看到一个具有对应 `id="author"` 的元素。

**用户故事 #4：** 在 `#quote-box` 中，我可以看到一个可点击元素以及相应的 `id="new-quote"`。

**用户故事 #5：** 在 `#quote-box` 中，我可以看到可点击的 `a` 元素以及相应的 `id="tweet-quote"`。

**用户故事 #6：** 首次加载时，我的引用生成器在带有 `id="text"` 的元素中显示一个随机引用。

**用户故事 #7：** 首次加载时，我的引用生成器在带有 `id="author"` 的元素中显示随机引用的作者。

**用户故事 #8：**当单击 `#new-quote` 按钮时，我的引用生成器应该获取一个新的引用并将其显示在 `#text` 元素中。

**用户故事 #9：** 当点击 `#new-quote` 按钮时，我的引用生成器应该获取新引用的作者，并将其显示在 `#author` 元素中。

**用户故事 #10：** 我可以通过点击 `#tweet-quote``a` 元素来发布当前引用。 此 `a` 元素应在其 `href` 属性中包含 `"twitter.com/intent/tweet"` 路径，以发布当前引言。

**用户故事 #11：** `#quote-box` 包装元素应水平居中。 请在浏览器缩放级别为 100% 且页面最大化的情况下运行测试。

你可以通过<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow'>使用此 CodePen 模板</a>并点击 `Save` 来创建你自己的 pen。如果你更喜欢使用其他环境，那么请将此 `<script>` 标签放入你的 `index.html` 文件的体内：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

一旦你完成了，提交你通过所有测试的工作项目URL.

**注意：** Twitter 不允许在 iframe 中装载链接。如果你的推文无法装载，请尝试在 `#tweet-quote` 元素上使用 `target="_blank"` 或 `target="_top"` 属性。`target="_top"` 会替换当前标签（页），因此请确保你的工作已储存。

# --solutions--

```js
// solution required
```
