---
id: bd7157d8c242eddfaeb5bd13
title: 建置一個 Markdown 預覽器
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**注意：** **React 18 已知與此專案的測試不相容（請參閱 [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)）**

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用任何混合的 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 來完成這個專案。你應該使用前端框架（例如 React），因為本節是關於學習前端框架的。不建議使用上述未列出的其他技術，且使用它們風險自負。我們正在考慮支援其他前端框架，如 Angular 和 Vue，但目前尚未支援。我們會接受並嘗試修正所有使用建議技術堆疊的問題回報。祝你編碼愉快！

**使用者故事 #1：** 我可以看到一個具有對應 `id="editor"` 的 `textarea` 元素。

**使用者故事 #2：** 我可以看到具有對應 `id="preview"` 的元素。

**使用者故事 #3：** 當我在 `#editor` 元素中輸入文字時，`#preview` 元素會隨著我輸入時更新，以顯示文字區域的內容。

**使用者故事＃4：** 當我在 `#editor` 元素中輸入 GitHub 風格的 markdown 時，文字會在我輸入時即時以 HTML 呈現在 `#preview` 元素中（提示：你不需要自己解析 Markdown－你可以匯入 Marked 函式庫來完成此工作：https://cdnjs.com/libraries/marked）。

**使用者故事＃5：** 當我的 markdown 預覽器首次載入時，`#editor` 欄位中的預設文字應包含有效的 markdown，表現至少以下每一種元素各一：標題元素（H1 大小）、副標題元素（H2 大小）、連結、行內程式碼、程式碼區塊、列表項目、區塊引用、圖片，以及粗體文字。

**使用者故事＃6：** 當我的 markdown 預覽器首次載入時，`#editor` 欄位中的預設 markdown 應該被算繪為 HTML 並呈現在 `#preview` 元素中。

**選用額外加分（你不需要讓此測試通過）：** 我的 markdown 預覽器會解讀換行符並將其算繪為 `br`（換行）元素。

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow'>使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案並創建你自己的 pen。如果你偏好使用其他環境，請將此 `<script>` 頁籤放入你的 `index.html` 檔案的 body 中：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
