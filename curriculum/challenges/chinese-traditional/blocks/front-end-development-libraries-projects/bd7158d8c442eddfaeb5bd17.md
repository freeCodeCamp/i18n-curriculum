---
id: bd7158d8c442eddfaeb5bd17
title: 建置一個 JavaScript 計算機
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**注意：** **React 18 已知與此專案的測試不相容（請參閱 [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)）**

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用任何混合的 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 來完成這個專案。你應該使用前端框架（例如 React），因為本節是關於學習前端框架的。不建議使用上述未列出的其他技術，且使用它們風險自負。我們正在考慮支援其他前端框架，如 Angular 和 Vue，但目前尚未支援。我們會接受並嘗試修正所有使用建議技術堆疊的問題回報。祝你編碼愉快！

**使用者故事 #1：** 我的計算機應該包含一個可點擊的元素，該元素包含一個 `=`（相等號），並具有對應的 `id="equals"`。

**使用者故事 #2：** 我的計算機應包含 10 個可點擊元素，每個元素包含 0-9 中的一個數字，並具有以下對應的 ID：`id="zero"`、`id="one"`、`id="two"`、`id="three"`、`id="four"`、`id="five"`、`id="six"`、`id="seven"`、`id="eight"` 和 `id="nine"`。

**使用者故事 #3：** 我的計算機應該包含 4 個可點擊的元素，每個元素包含 4 個主要數學運算子之一，並具有以下對應的 ID：`id="add"`、`id="subtract"`、`id="multiply"`、`id="divide"`。

**使用者故事 #4：** 我的計算機應該包含一個可點擊的元素，該元素包含 `.`（小數點）符號，並具有對應的 `id="decimal"`。

**使用者故事 #5：** 我的計算機應該包含一個可點擊的元素，其 `id="clear"`。

**使用者故事 #6：** 我的計算機應該包含一個用於顯示數值且具有對應 `id="display"` 的元素。

**使用者故事 #7：** 在任何時間，按下 `clear` 按鈕會清除輸入和輸出值，並將計算機傳回初始化狀態；在 id 為 `display` 的元素中應顯示 0。

**使用者故事 #8：** 當我輸入數字時，我應該能在 id 為 `display` 的元素中看到我的輸入。

**使用者故事 #9：** 無論順序為何，我都應該能夠對任意長度的數字串鏈進行加、減、乘、除運算，並且當我按下 `=` 時，正確的結果應該顯示在 id 為 `display` 的元素中。

**使用者故事 #10：** 在輸入數字時，我的計算機不應允許數字以多個零開頭。

**使用者故事 #11：** 當點擊小數點元素時，應該在目前顯示的數值後附加一個 `.`；同一個數字中不應接受兩個 `.`。

**使用者故事 #12：** 我應該能夠對包含小數點的數字執行任何 `+`、`-`、`*`、`/` 操作。

**使用者故事 #13：** 如果連續輸入 2 個或以上的運算子，執行的操作行為應該是最後輸入的運算子（不包含負號（`-`））。例如，如果輸入 `5 + * 7 =`，結果應該是 `35`（即 `5 * 7`）；如果輸入 `5 * - 5 =`，結果應該是 `-25`（即 `5 * (-5)`）。

**使用者故事 #14：** 在 `=` 之後立即按下運算子，應該開始一個新的計算，該計算以先前評估的結果為運算對象。

**使用者故事 #15：** 我的計算機在進行四捨五入時應該具有多位小數的精確度（請注意沒有確切標準，但你應該能夠以合理的精確度處理像 `2 / 7` 這樣的計算，至少精確到 4 位小數）。

**計算機邏輯說明：** 需要注意的是，計算機輸入邏輯主要有兩大派別：<dfn>即時執行邏輯</dfn>和<dfn>公式邏輯</dfn>。我們的範例採用公式邏輯並遵守操作優先順序，即時執行則不然。兩者皆可接受，但請注意，根據你選擇的邏輯，某些方程式的計算結果可能會與我們的不同（請參見下方範例）。只要你的數學結果能被其他生產用計算機驗證，請不要將此視為錯誤。

**範例：** `3 + 5 x 6 - 2 / 4 =`  

-   **即時執行邏輯：** `11.5`
-   **公式／表達式邏輯：** `32.5`

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow'>使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案並創建你自己的 pen。如果你偏好使用其他環境，請將此 `<script>` 頁籤放入你的 `index.html` 檔案的 body 中：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
