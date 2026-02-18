---
id: bd7168d8c242eddfaeb5bd13
title: 使用長條圖視覺化資料
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**目標：** 建置一個在功能上類似於此的應用程式：<a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用 HTML、JavaScript、CSS 和基於 D3 svg 的視覺化函式庫。測試要求使用 D3 的 axis 屬性來產生軸，該屬性會自動在軸上產生刻度。這些刻度是通過 D3 測試所必需的，因為它們的位置用來判斷繪圖元素的對齊。你可以在 https://d3js.org/d3-axis 找到關於產生軸的資訊。所需的 DOM 元素會在每次測試時被查詢。如果你使用前端框架（例如 Vue），動態內容的測試結果可能不準確。我們希望最終能支援這些框架，但目前這些框架尚未支援 D3 專案。

**使用者故事 #1：** 我的圖表應該有一個標題，並帶有對應的 `id="title"`。

**使用者故事 #2：** 我的圖表應該有一個 `g` 元素的 x 軸，並且對應的 `id="x-axis"`。

**使用者故事 #3：** 我的圖表應該有一個 `g` 元素的 y 軸，並帶有對應的 `id="y-axis"`。

**使用者故事 #4：** 兩個軸都應包含多個刻度標籤，每個標籤都有對應的 `class="tick"`。

**使用者故事 #5：** 我的圖表應該為每個資料點有一個 `rect` 元素，並帶有對應的 `class="bar"` 來顯示資料。

**使用者故事 #6：** 每個 `.bar` 應該有屬性 `data-date` 和 `data-gdp`，分別包含 `date` 和 `GDP` 的值。

**使用者故事 #7：** `.bar` 元素的 `data-date` 屬性應該符合所提供資料的順序。

**使用者故事 #8：** `.bar` 元素的 `data-gdp` 屬性應該與所提供的資料順序相符。

**使用者故事 #9：** 每個 `.bar` 元素的高度應準確表述資料中對應的 `GDP`。

**使用者故事 #10：** `data-date` 屬性及其對應的 `.bar` 元素應與 x 軸上的對應值對齊。

**使用者故事 #11：** `data-gdp` 屬性及其對應的 `.bar` 元素應與 y 軸上的對應數值對齊。

**使用者故事 #12：** 我可以將滑鼠移到某個區域上方，並看到一個對應的 `id="tooltip"` 提示工具，顯示該區域的更多資訊。

**使用者故事 #13：** 我的工具提示應該有一個 `data-date` 屬性，該屬性對應於作用中區域的 `data-date`。

這是你完成此專案所需的資料集：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案，從而創建你自己的 pen。或者你可以使用這個 CDN 連結，在任何你喜歡的環境中執行測試：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`。

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
