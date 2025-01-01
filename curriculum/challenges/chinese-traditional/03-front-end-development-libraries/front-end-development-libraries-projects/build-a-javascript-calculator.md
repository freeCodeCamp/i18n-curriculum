---
id: bd7158d8c442eddfaeb5bd17
title: 構建一個 JavaScript 計算器
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目標：** 構建一個應用，它在功能上類似於 <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks</a>。

實現以下的用戶故事並且通過所有的測試用例。 使用你需要的任何庫和第三方API。 使用你自己的個人風格樣式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意組合來完成此項目。 你應該使用一個前端框架（比如像是React）因爲這個部分是有關於學習前端框架的。 不推薦使用以上沒有列出的其他技術，不然風險自擔。 我們正着手支持其他前端框架像是Angular和Vue，但是現在還不支持他們。 我們將會接受並且努力修復所有使用推薦的技術棧在這個項目中出現的問題。 編程愉快！

**用戶故事 #1：** 我的計算器應該包含一個可點擊元素，其中包含一個 `=`（等號）和相應的 `id="equals"`。

**用戶故事 #2：** 我的計算器應包含 10 個可點擊元素，每個元素包含一個 0-9 之間的數字，其對應 ID 如下：`id="zero"`、`id="one"`、`id="two"`、`id="three"`、`id="four"`、`id="five"`、`id="six"`、`id="seven"`、`id="eight"` 和 `id="nine"`。

**用戶故事 #3：** 我的計算器應包含 4 個可點擊元素，每個元素包含 4 個主要數學運算符之一，其對應 ID 如下：`id="add"`、`id="subtract"`、`id="multiply"`、`id="divide"`。

**用戶故事 #4：** 我的計算器應該包含一個可點擊元素，其中包含一個 `.`（小數點）符號和相應的 `id="decimal"`。

**用戶故事 #5：** 我的計算器應該包含一個帶有 `id="clear"` 的可點擊元素。

**用戶故事 #6：** 我的計算器應該包含一個元素來顯示具有相應 `id="display"` 的值。

**用戶故事 #7：** 在任何時候，按下 `clear` 按鈕都會清除輸入和輸出值，並將計算器返回到其初始化狀態；id 爲 `display` 的元素中應顯示 0。

**用戶故事 #8：** 當我輸入數字時，我應該能夠在 id 爲 `display` 的元素中看到我的輸入。

**用戶故事 #9：** 我應該能夠以任意順序對任意長度的數字鏈進行加、減、乘、除運算，並且當我點擊 `=` 時，正確的結果應該顯示在 id 爲 `display` 的元素中。

**用戶故事 #10：** 輸入數字時，我的計算器不允許數字以多個零開頭。

**用戶故事 #11：** 單擊十進制元素時，應在當前顯示的值後附加一個 `.`；不應接受一個數字中出現兩個 `.`。

**用戶故事 #12：** 我應該能夠對包含小數點的數字執行任何運算（`+`、`-`、`*`、`/`）。

**用戶故事 #13：** 如果連續輸入 2 個或多個運算符，則執行的運算應爲最後輸入的運算符（不包括負號 (`-`)）。 例如，如果輸入 `5 + * 7 =`，則結果應該是 `35`（即 `5 * 7`）；如果輸入 `5 * - 5 =`，則結果應該是 `-25`（即 `5 * (-5)`）。

**用戶故事 #14：** 在 `=` 之後立即按下操作符將啓動對上次評估結果進行運算的新計算。

**用戶故事 #15：** 我的計算器在四捨五入時應該具有幾位小數的精度（請注意，沒有確切的標準，但你應該能夠以至少 4 位小數的合理精度處理像 `2 / 7` 這樣的計算）。

**關於計算器邏輯的注意事項：** 需要注意的是，計算器輸入邏輯主要有兩種思想流派：<dfn>立即執行邏輯</dfn>和<dfn>公式邏輯</dfn>。 我們的示例利用公式邏輯並遵守運算優先順序，而立即執行則不然。 兩者都可以接受，但請注意，根據你的選擇，你的計算器對於某些方程式可能會產生與我們不同的結果（見下面的示例）。 只要你的數學運算可以通過另一個生產計算器進行驗證，請不要將其視爲錯誤。

**示例：** `3 + 5 x 6 - 2 / 4 =`

-   **Immediate Execution Logic:** `11.5`
-   **公式／表達式邏輯：** `32.5`

You can build your project by <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">using this CodePen template</a> and clicking `Save` to create your own pen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

當你完成了本項目，並且該項目所有測試運行通過，請提交項目的 URL。

# --solutions--

```js
// solution required
```
