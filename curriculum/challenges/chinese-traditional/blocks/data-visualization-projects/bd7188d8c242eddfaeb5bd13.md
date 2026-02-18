---
id: bd7188d8c242eddfaeb5bd13
title: 使用熱力圖視覺化資料
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用 HTML、JavaScript、CSS 和基於 svg 的 D3 視覺化函式庫。所需的 DOM 元素會在每次測試時即時查詢。如果你使用前端框架（例如 Vue），動態內容的測試結果可能不準確。我們希望最終能支援這些框架，但目前 D3 專案尚不支援這些框架。

**使用者故事 #1：** 我的熱力圖應該有一個標題，並帶有對應的 `id="title"`。

**使用者故事 #2：** 我的熱力圖應該有一個帶有對應 `id="description"` 的描述。

**使用者故事 #3：** 我的熱力圖應該有一個對應 `id="x-axis"` 的 x 軸。

**使用者故事 #4：** 我的熱力圖應該有一個對應 `id="y-axis"` 的 y 軸。

**使用者故事 #5：** 我的熱力圖應該有帶有 `class="cell"` 的 `rect` 元素來表述資料。

**使用者故事 #6：** 單元格中應該至少使用 4 種不同的填充顏色。

**使用者故事 #7：** 每個儲存格將具有屬性 `data-month`、`data-year`、`data-temp`，包含其對應的 `month`、`year` 和 `temperature` 值。

**使用者故事 #8：** 每個儲存格的 `data-month`、`data-year` 應該在資料的範圍內。

**使用者故事 #9：** 我的熱力圖應該有與 y 軸上對應月份對齊的儲存格。

**使用者故事 #10：** 我的熱力圖應該有與 x 軸上對應年份對齊的格子。

**使用者故事 #11：** 我的熱力圖應該在 y 軸上有多個刻度標籤，並顯示完整的月份名稱。

**使用者故事 #12：** 我的熱力圖的 x 軸應該有多個刻度標籤，標示 1754 年到 2015 年之間的年份。

**使用者故事 #13：** 我的熱力圖應該有一個對應 `id="legend"` 的圖例。

**使用者故事 #14：** 我的圖例應該包含 `rect` 元素。

**使用者故事 #15：** 圖例中的 `rect` 元素應該使用至少 4 種不同的填充顏色。

**使用者故事 #16：** 我可以將滑鼠移到某個區域上，並看到一個對應的 `id="tooltip"` 提示工具，顯示該區域的更多資訊。

**使用者故事 #17：** 我的工具提示應該有一個 `data-year` 屬性，該屬性對應於作用中區域的 `data-year`。

這是你完成此專案所需的資料集：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案，創建你自己的 pen。或者你可以使用這個 CDN 連結，在任何你喜歡的環境中執行測試：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
