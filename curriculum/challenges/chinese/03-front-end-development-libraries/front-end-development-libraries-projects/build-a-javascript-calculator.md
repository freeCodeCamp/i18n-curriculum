---
id: bd7158d8c442eddfaeb5bd17
title: 构建一个 JavaScript 计算器
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目标：** 构建一个应用，它在功能上类似于 <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks</a>。

实现以下的用户故事并且通过所有的测试用例。 使用你需要的任何库和第三方API。 使用你自己的个人风格样式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意组合来完成此项目。 你应该使用一个前端框架（比如像是React）因为这个部分是有关于学习前端框架的。 不推荐使用以上没有列出的其他技术，不然风险自担。 我们正着手支持其他前端框架像是Angular和Vue，但是现在还不支持他们。 我们将会接受并且努力修复所有使用推荐的技术栈在这个项目中出现的问题。 编程愉快！

**用户故事 #1：** 我的计算器应该包含一个可点击元素，其中包含一个 `=`（等号）和相应的 `id="equals"`。

**用户故事 #2：** 我的计算器应包含 10 个可点击元素，每个元素包含一个 0-9 之间的数字，其对应 ID 如下：`id="zero"`、`id="one"`、`id="two"`、`id="three"`、`id="four"`、`id="five"`、`id="six"`、`id="seven"`、`id="eight"` 和 `id="nine"`。

**用户故事 #3：** 我的计算器应包含 4 个可点击元素，每个元素包含 4 个主要数学运算符之一，其对应 ID 如下：`id="add"`、`id="subtract"`、`id="multiply"`、`id="divide"`。

**用户故事 #4：** 我的计算器应该包含一个可点击元素，其中包含一个 `.`（小数点）符号和相应的 `id="decimal"`。

**用户故事 #5：** 我的计算器应该包含一个带有 `id="clear"` 的可点击元素。

**用户故事 #6：** 我的计算器应该包含一个元素来显示具有相应 `id="display"` 的值。

**用户故事 #7：** 在任何时候，按下 `clear` 按钮都会清除输入和输出值，并将计算器返回到其初始化状态；id 为 `display` 的元素中应显示 0。

**用户故事 #8：** 当我输入数字时，我应该能够在 id 为 `display` 的元素中看到我的输入。

**用户故事 #9：** 我应该能够以任意顺序对任意长度的数字链进行加、减、乘、除运算，并且当我点击 `=` 时，正确的结果应该显示在 id 为 `display` 的元素中。

**用户故事 #10：** 输入数字时，我的计算器不允许数字以多个零开头。

**用户故事 #11：** 单击十进制元素时，应在当前显示的值后附加一个 `.`；不应接受一个数字中出现两个 `.`。

**用户故事 #12：** 我应该能够对包含小数点的数字执行任何运算（`+`、`-`、`*`、`/`）。

**用户故事 #13：** 如果连续输入 2 个或多个运算符，则执行的运算应为最后输入的运算符（不包括负号 (`-`)）。 例如，如果输入 `5 + * 7 =`，则结果应该是 `35`（即 `5 * 7`）；如果输入 `5 * - 5 =`，则结果应该是 `-25`（即 `5 * (-5)`）。

**用户故事 #14：** 在 `=` 之后立即按下操作符将启动对上次评估结果进行运算的新计算。

**用户故事 #15：** 我的计算器在四舍五入时应该具有几位小数的精度（请注意，没有确切的标准，但你应该能够以至少 4 位小数的合理精度处理像 `2 / 7` 这样的计算）。

**关于计算器逻辑的注意事项：** 需要注意的是，计算器输入逻辑主要有两种思想流派：<dfn>立即执行逻辑</dfn>和<dfn>公式逻辑</dfn>。 我们的示例利用公式逻辑并遵守运算优先顺序，而立即执行则不然。 两者都可以接受，但请注意，根据你的选择，你的计算器对于某些方程式可能会产生与我们不同的结果（见下面的示例）。 只要你的数学运算可以通过另一个生产计算器进行验证，请不要将其视为错误。

**示例：** `3 + 5 x 6 - 2 / 4 =`

-   **Immediate Execution Logic:** `11.5`
-   **公式／表达式逻辑：** `32.5`

你可以<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">使用 CodePen 模版</a>创建你的新项目，点击 `Save` 即可创建你的新项目。 或者你可以在任何你喜欢的环境中使用以下 CDN 链接来运行测试：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`.

当你完成了本项目，并且该项目所有测试运行通过，请提交项目的 URL。

# --solutions--

```js
// solution required
```
