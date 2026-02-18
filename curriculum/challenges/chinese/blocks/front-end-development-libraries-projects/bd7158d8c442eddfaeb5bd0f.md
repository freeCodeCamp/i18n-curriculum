---
id: bd7158d8c442eddfaeb5bd0f
title: 创建一个番茄时钟
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**注意：** **React 18 与此项目的测试存在已知不兼容问题（参见 [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)）**

**目标：** 构建一个功能上类似于此的应用程序：<a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>。

完成以下需求，并且通过所有测试。 如有必要，可以引入第三方库或使用第三方 API。 赋予它你的个人风格.

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意组合来完成此项目。 你应该使用一个前端框架（比如像是React）因为这个部分是有关于学习前端框架的。 不推荐使用以上没有列出的其他技术，不然风险自担。 我们正着手支持其他前端框架像是Angular和Vue，但是现在还不支持他们。 我们将会接受并且努力修复所有使用推荐的技术栈在这个项目中出现的问题。 祝你编程愉快！

**用户故事 #1:** 我可以看到一个元素带有 `id="break-label"` 并且包含一个字符串 (例如 "Break Length").

**用户故事 #2:** 我可以看到一个元素带有 `id="session-label"` 并且包含一个字符串(例如 "Session Length").

**用户故事 #3:** 我可以看见两个可点击的元素分别带有ID如下: `id="break-decrement"` 和 `id="session-decrement"`.

**用户故事 #4:** 我可以看见两个可点击的元素分别带有如下的ID: `id="break-increment"` 和 `id="session-increment"`.

**用户故事 #5:**我可以看见一个元素具有 `id="break-length"`, 默认显示一个数值5（在加载后）.

**用户故事 #6:**我可以看见一个元素具有`id="session-length"`, 默认显示一个数值25.

**用户故事 #7:** 我可以看见一个元素具有 `id="timer-label"`, 并且包含一个字符串表示一个时间周期 (例如 "Session").

**用户故事 #8:** 我可以看到一个元素带有 `id="time-left"`. 注意：暂停或者运行时，这个区域的数值格式应该总是展示为`mm:ss`。

**用户故事 #9:** 我可以看到一个可点击的元素具有 `id="start_stop"`.

**用户故事 #10:** 我可以看到一个可点击的元素带有 `id="reset"`.

**用户故事 #11:** 当我点击id是 `reset`的元素时, 任何运行中的时钟应该暂停, 在 `id="break-length"`中的值应该返回 `5`, 在`id="session-length"`中的值应该返回25, 并且带有`id="time-left"`的元素应该返回它的默认状态.

**用户故事 #12:** 当我点击带有id为 `break-decrement`的元素时, 在 `id="break-length"` 中的值减1, 并且我可以看到更新后的数值.

**用户故事 #13:** 当我点击带有id为`break-increment`的元素时, 在 `id="break-length"`中的数值加1, 并且我可以看到更新后的数值.

**用户故事 #14:** 当我点击带有id为 `session-decrement`的元素时, 在 `id="session-length"`中的值减1, 并且我可以看到更新后的数值.

**用户故事 #15:** 当我点击带有id为 `session-increment`的元素时, 在`id="session-length"` 中的值加1, 并且我可以看到更新后的值.

**用户故事 #16:** 我不能设置时间周期的值或者休息时间的长度&lt;= 0.

**用户故事 #17：** 我不应该能够将 `session` 或休息时间设置为大于 60。

**用户故事 #18:** 当我第一次点击带有 `id="start_stop"`的元素时, 计时器应该开始运行从当前 `id="session-length"`中的数值开始, 及时数值和原始的25相比增加或减少了.

**用户故事 #19:** 如果计时器在运行, 带有id为 `time-left` 的元素应该以 `mm:ss` 的格式展示剩余时间 (按1递减并在每1000毫秒更新一次展示的值).

**用户故事 #20:** 如果计时器在运行并且我点击了带有 `id="start_stop"`的元素, 倒计时应该停止.

**用户故事 #21:** 如果计时器暂停并且我点击了带有 `id="start_stop"`的元素, 倒计时应该从暂停的值开始恢复运行.

**用户故事 #22:** 当一个时间周期倒计时到达零的时候 (注意: 计时器必须到达 00:00), 一个新倒计时开始, 带有id为 `timer-label`的元素应该展示字符串表示休息时间已经开始.

**用户故事 #23:** 当一个时间周期倒计时到达零的时候 (注意: 计时器必须到达 00:00), 一个新倒计时开始, 倒计时的数值现在在 `id="break-length"`元素中展示.

**用户故事 #24:** 当休息时间倒计时到达零的时候 (注意: 计时器必须到达 00:00), 一个新倒计时开始, 带有id为`timer-label` 的元素应该展示一个字符串表示一个时间周期已经开始.

**用户故事 #25:**当休息时间倒计时到达零的时候 (注意: 计时器必须到达 00:00), 一个新的时间周期倒计时应该开始，倒计时从当前在 `id="session-length"` 元素中展示的数值开始.

**用户故事 #26:** 当一个倒计时到达零的时候 (注意: 计时器必须到达00:00), 一个提示计时结束的铃声应该播放. 这应该使用一个HTML5`audio`标签并且带有 `id="beep"`.

**用户故事 #27:** 带有 `id="beep"`的音频元素必须持续响1秒或更长.

**用户故事 #28:** 音频元素带有id为 `beep` 必须停止播放并且倒退回开头，当id为 `reset` 的元素被点击时.

你可以通过<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow'>使用此 CodePen 模板</a>并点击 `Save` 来创建你自己的 pen。如果你更喜欢使用其他环境，那么请将此 `<script>` 标签放入你的 `index.html` 文件的体内：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

一旦你完成了，提交你通过所有测试的工作项目URL.

# --solutions--

```js
// solution required
```
