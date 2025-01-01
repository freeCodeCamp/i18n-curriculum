---
id: 587d7dbc367417b2b2512bae
title: 构建一台鼓式机器
challengeType: 3
forumTopicId: 301370
dashedName: build-a-drum-machine
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目的:** 构建一个和下面网址功能类似的应用程序: <a href="https://drum-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://drum-machine.freecodecamp.rocks/</a>.

实现以下的用户故事并且通过所有的测试用例。 使用你需要的任何库和第三方API。 使用你自己的个人风格样式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意组合来完成此项目。 你应该使用一个前端框架（比如像是React）因为这个部分是有关于学习前端框架的。 不推荐使用以上没有列出的其他技术，不然风险自担。 我们正着手支持其他前端框架像是Angular和Vue，但是现在还不支持他们。 我们将会接受并且努力修复所有使用推荐的技术栈在这个项目中出现的问题。 编程愉快！

**用户需求 #1:** 应该创建一个包含所有元素的外部容器，并且这个容器的`id="drum-machine"`

**用户需求 #2:** 在 `#drum-machine` 内，我能看到一个 `id="display"`的元素

**用户故事 #3：** 在 `#drum-machine` 中，我可以看到 9 个可点击的鼓垫元素，每个元素都有一个类名 `drum-pad`、一个描述鼓垫将设置为触发的音频剪辑的唯一 Id，以及一个对应于键盘上以下键之一的内部文本：`Q`、`W`、`E`、`A`、`S`、`D`、`Z`、`X`、`C`。 鼓垫必须按照此顺序排列。

**需求 4：** 在每一个具有 `.drum-pad` 属性的元素内，应该有一个具有指向音频片段地址的 `src` 属性的 HTML5 `audio` 元素，一个值为 `clip` 的 class 属性，以及一个 id 属性，它的值应该是其父元素 `.drum-pad` 的文本内容（例如 `id="Q"`、`id="W"`、`id="E"` 等等）。

**用户故事 #5：** 当我单击 `.drum-pad` 元素时，其子 `audio` 元素中包含的音频剪辑应该被触发。

**用户故事 #6：** 当我按下与每个 `.drum-pad` 关联的触发键时，其子 `audio` 元素中包含的音频剪辑应该被触发（例如，按下 `Q` 键应该触发包含字符串 `Q` 的鼓垫，按下 `W` 键应该触发包含字符串 `W` 的鼓垫，等等）。

**用户故事 #7：** 当触发 `.drum-pad` 时，描述相关音频剪辑的字符串将显示为 `#display` 元素的内部文本（每个字符串必须是唯一的）。

以下是一些可用于鼓机的音频样本：

- [Heater 1](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-1.mp3)
- [Heater 2](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-2.mp3)
- [Heater 3](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-3.mp3)
- [Heater 4](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-4_1.mp3)
- [Clap](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-6.mp3)
- [Open-HH](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Dsc_Oh.mp3)
- [Kick-n'-Hat](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Kick_n_Hat.mp3)
- [Kick](https://cdn.freecodecamp.org/testable-projects-fcc/audio/RP4_KICK_1.mp3)
- [Closed-HH](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Cev_H2.mp3)

你可以通过 <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">使用此 CodePen 模板</a> 并单击 `Save` 来创建你自己的笔，从而构建你的项目。 If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成项目并通过所有测试后，请输入你的项目在 CodePen 上的链接并提交。

# --solutions--

```js
// solution required
```
