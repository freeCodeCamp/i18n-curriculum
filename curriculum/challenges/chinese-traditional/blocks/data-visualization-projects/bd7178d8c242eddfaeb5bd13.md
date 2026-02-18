---
id: bd7178d8c242eddfaeb5bd13
title: 使用散點圖視覺化資料
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用 HTML、JavaScript、CSS 和基於 D3 svg 的視覺化函式庫。測試要求使用 D3 的 axis 屬性來產生軸，該屬性會自動在軸上產生刻度。這些刻度是通過 D3 測試所必需的，因為它們的位置用來判斷繪圖元素的對齊。你可以在 https://d3js.org/d3-axis 找到關於產生軸的資訊。所需的 DOM 元素會在每次測試時被查詢。如果你使用前端框架（例如 Vue），動態內容的測試結果可能不準確。我們希望最終能支援這些框架，但目前這些框架尚未支援 D3 專案。

**使用者故事 #1：** 我可以看到一個具有對應 `id="title"` 的標題元素。

**使用者故事 #2：** 我可以看到一個具有對應 `id="x-axis"` 的 x 軸。

**使用者故事 #3：** 我可以看到有對應 `id="y-axis"` 的 y 軸。

**使用者故事＃4：** 我可以看到每個都有 `dot` 類別的點，這些點表述正在繪製的資料。

**使用者故事 #5：** 每個點都應該具有屬性 `data-xvalue` 和 `data-yvalue`，其中包含對應的 `x` 和 `y` 值。

**使用者故事＃6：** 每個點的 `data-xvalue` 和 `data-yvalue` 應該在實際資料的範圍內且符合正確的資料格式。對於 `data-xvalue`，整數（完整年份）或 `Date` 物件在測試評估中是可接受的。對於 `data-yvalue`（分鐘），請使用 `Date` 物件。

**使用者故事 #7：** `data-xvalue` 及其對應的點應與 x 軸上對應的點／值對齊。

**使用者故事 #8：** `data-yvalue` 及其對應的點應與 y 軸上對應的點／值對齊。

**使用者故事 #9：** 我可以在 y 軸上看到多個以 `%M:%S` 時間格式顯示的勾選標籤。

**使用者故事 #10：** 我可以在 x 軸上看到多個顯示年份的刻度標籤。

**使用者故事 #11：** 我可以看到 x 軸標籤的範圍在實際 x 軸資料的範圍內。

**使用者故事 #12：** 我可以看到 y 軸標籤的範圍在實際 y 軸資料的範圍內。

**使用者故事 #13：** 我可以看到包含描述性文字且具有 `id="legend"` 的圖例。

**使用者故事 #14：** 我可以將滑鼠移到某個區域上方，並看到一個對應 `id="tooltip"` 的工具提示，該提示會顯示該區域的更多資訊。

**使用者故事 #15：** 我的工具提示應該有一個 `data-year` 屬性，該屬性對應於作用中區域的 `data-xvalue`。

這是你完成此專案所需的資料集：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案，創建你自己的 pen。或者你可以使用這個 CDN 連結，在任何你喜歡的環境中執行測試：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
