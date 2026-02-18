---
id: bd7158d8c442eddfaeb5bd0f
title: 建造一個 25 + 5 計時器
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**注意：** **React 18 已知與此專案的測試不相容（請參閱 [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)）**

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

你可以使用任何混合的 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 來完成這個專案。你應該使用前端框架（例如 React），因為本節是關於學習前端框架的。不建議使用上述未列出的其他技術，且使用它們風險自負。我們正在考慮支援其他前端框架，如 Angular 和 Vue，但目前尚未支援。我們會接受並嘗試修正所有使用建議技術堆疊的問題回報。祝你編碼愉快！

**使用者故事 #1：** 我可以看到一個具有 `id="break-label"` 的元素，該元素包含一個字串（例如 "Break Length"）。

**使用者故事 #2：** 我可以看到一個具有 `id="session-label"` 的元素，該元素包含一個字串（例如 "Session Length"）。

**使用者故事 #3：** 我可以看到兩個可點擊的元素，對應的 ID 分別是 `id="break-decrement"` 和 `id="session-decrement"`。

**使用者故事＃4：** 我可以看到兩個具有對應 ID 的可點擊元素：`id="break-increment"` 和 `id="session-increment"`。

**使用者故事 #5：** 我可以看到一個具有對應 `id="break-length"` 的元素，該元素在預設（載入時）顯示的值為 5。

**使用者故事 #6：** 我可以看到一個具有對應 `id="session-length"` 的元素，該元素預設顯示的值為 25。

**使用者故事 #7：** 我可以看到一個具有對應 `id="timer-label"` 的元素，該元素包含表示會話已初始化的字串（例如 "Session"）。

**使用者故事＃8：** 我可以看到一個具有對應 `id="time-left"` 的元素。注意：無論是暫停還是執行，此欄位中的值都應始終以 `mm:ss` 格式顯示（例如 25:00）。

**使用者故事 #9：** 我可以看到一個具有對應 `id="start_stop"` 的可點擊元素。

**使用者故事 #10：** 我可以看到一個具有對應 `id="reset"` 的可點擊元素。

**使用者故事 #11：** 當我點擊具有 `reset` id 的元素時，任何正在執行的計時器都應該停止，`id="break-length"` 內的值應該傳回 `5`，`id="session-length"` 內的值應該傳回 25，且具有 `id="time-left"` 的元素應該重設為其預設狀態。

**使用者故事 #12：** 當我點擊 id 為 `break-decrement` 的元素時，`id="break-length"` 中的值會減少 1，並且我可以看到更新後的值。

**使用者故事 #13：** 當我點擊 id 為 `break-increment` 的元素時，`id="break-length"` 中的值會增加 1，並且我可以看到更新後的值。

**使用者故事 #14：** 當我點擊 id 為 `session-decrement` 的元素時，`id="session-length"` 中的值會減少 1，並且我可以看到更新後的值。

**使用者故事 #15：** 當我點擊 id 為 `session-increment` 的元素時，`id="session-length"` 中的值會增加 1，並且我可以看到更新後的值。

**使用者故事 #16：** 我不應該能將工作階段或休息時間設定為小於或等於 0。

**使用者故事 #17：** 我不應該能將工作階段或休息時間設定為大於 60。

**使用者故事 #18：** 當我第一次點擊具有 `id="start_stop"` 的元素時，計時器應該從 `id="session-length"` 中目前顯示的值開始執行，即使該值已經從原始的 25 增加或減少。

**使用者故事 #19：** 如果計時器正在執行，id 為 `time-left` 的元素應該以 `mm:ss` 格式顯示剩餘時間（每 1000ms 減少 1 並更新顯示）。

**使用者故事 #20：** 如果計時器正在執行，且我點擊具有 `id="start_stop"` 的元素，倒數計時應該暫停。

**使用者故事 #21：** 如果計時器已暫停，且我點擊具有 `id="start_stop"` 的元素，倒數計時應該從暫停的點繼續執行。

**使用者故事 #22：** 當會話倒數計時到達零（注意：計時器必須到達 00:00），且新的倒數計時開始時，id 為 `timer-label` 的元素應顯示表示休息已開始的字串。

**使用者故事 #23：** 當會話倒數計時達到零時（注意：計時器必須達到 00:00），應開始新的休息倒數計時，從目前顯示在 `id="break-length"` 元素中的數值開始倒數。

**使用者故事 #24：** 當休息倒數計時歸零（注意：計時器必須達到 00:00），且新的倒數計時開始時，id 為 `timer-label` 的元素應顯示一個字串，表示一個工作階段已開始。

**使用者故事 #25：** 當休息倒數計時到達零時（注意：計時器必須到達 00:00），應該開始新的工作階段倒數計時，從目前顯示在 `id="session-length"` 元素中的數值開始倒數。

**使用者故事 #26：** 當倒數計時歸零時（注意：計時器必須達到 00:00），應播放一個表示時間到的聲音。這應該使用 HTML5 的 `audio` 頁籤，並具有對應的 `id="beep"`。

**User Story #27：** `id="beep"` 的音訊元素必須長度為 1 秒或以上。

**使用者故事 #28：** 當點擊 id 為 `reset` 的元素時，id 為 `beep` 的音訊元素必須停止播放並倒帶回起點。

你可以透過<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow'>使用這個 CodePen 模板</a>並點擊 `Save` 來建置你的專案並創建你自己的 pen。如果你偏好使用其他環境，請將此 `<script>` 頁籤放入你的 `index.html` 檔案的 body 中：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成後，提交包含所有通過測試的工作專案的 URL。

# --solutions--

```js
// solution required
```
