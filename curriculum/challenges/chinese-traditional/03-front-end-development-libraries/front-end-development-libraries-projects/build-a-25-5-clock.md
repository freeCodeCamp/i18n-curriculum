---
id: bd7158d8c442eddfaeb5bd0f
title: 構建一個番茄時鐘
challengeType: 3
forumTopicId: 301373
dashedName: build-a-25--5-clock
---

# --description--

**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目標:** 構建一個功能類似於這個的應用: <a href="https://25--5-clock.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://25--5-clock.freecodecamp.rocks</a>.

實現以下的用戶故事並且通過所有的測試用例。 使用你需要的任何庫和第三方API。 使用你自己的個人風格樣式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意組合來完成此項目。 你應該使用一個前端框架（比如像是React）因爲這個部分是有關於學習前端框架的。 不推薦使用以上沒有列出的其他技術，不然風險自擔。 我們正着手支持其他前端框架像是Angular和Vue，但是現在還不支持他們。 我們將會接受並且努力修復所有使用推薦的技術棧在這個項目中出現的問題。 編程愉快！

**用戶故事 #1:** 我可以看到一個元素帶有 `id="break-label"` 並且包含一個字符串 (例如 "Break Length").

**用戶故事 #2:** 我可以看到一個元素帶有 `id="session-label"` 並且包含一個字符串(例如 "Session Length").

**用戶故事 #3:** 我可以看見兩個可點擊的元素分別帶有ID如下: `id="break-decrement"` 和 `id="session-decrement"`.

**用戶故事 #4:** 我可以看見兩個可點擊的元素分別帶有如下的ID: `id="break-increment"` 和 `id="session-increment"`.

**用戶故事 #5:**我可以看見一個元素具有 `id="break-length"`, 默認顯示一個數值5（在加載後）.

**用戶故事 #6:**我可以看見一個元素具有`id="session-length"`, 默認顯示一個數值25.

**用戶故事 #7:** 我可以看見一個元素具有 `id="timer-label"`, 並且包含一個字符串表示一個時間週期 (例如 "Session").

**用戶故事 #8:** 我可以看到一個元素帶有 `id="time-left"`. 注意：暫停或者運行時，這個區域的數值格式應該總是展示爲`mm:ss`。

**用戶故事 #9:** 我可以看到一個可點擊的元素具有 `id="start_stop"`.

**用戶故事 #10:** 我可以看到一個可點擊的元素帶有 `id="reset"`.

**用戶故事 #11:** 當我點擊id是 `reset`的元素時, 任何運行中的時鐘應該暫停, 在 `id="break-length"`中的值應該返回 `5`, 在`id="session-length"`中的值應該返回25, 並且帶有`id="time-left"`的元素應該返回它的默認狀態.

**用戶故事 #12:** 當我點擊帶有id爲 `break-decrement`的元素時, 在 `id="break-length"` 中的值減1, 並且我可以看到更新後的數值.

**用戶故事 #13:** 當我點擊帶有id爲`break-increment`的元素時, 在 `id="break-length"`中的數值加1, 並且我可以看到更新後的數值.

**用戶故事 #14:** 當我點擊帶有id爲 `session-decrement`的元素時, 在 `id="session-length"`中的值減1, 並且我可以看到更新後的數值.

**用戶故事 #15:** 當我點擊帶有id爲 `session-increment`的元素時, 在`id="session-length"` 中的值加1, 並且我可以看到更新後的值.

**用戶故事 #16:** 我不能設置時間週期的值或者休息時間的長度&lt;= 0.

**用戶故事 #17:** 我不能設置時間週期或者休息時間的長度> 60.

**用戶故事 #18:** 當我第一次點擊帶有 `id="start_stop"`的元素時, 計時器應該開始運行從當前 `id="session-length"`中的數值開始, 及時數值和原始的25相比增加或減少了.

**用戶故事 #19:** 如果計時器在運行, 帶有id爲 `time-left` 的元素應該以 `mm:ss` 的格式展示剩餘時間 (按1遞減並在每1000毫秒更新一次展示的值).

**用戶故事 #20:** 如果計時器在運行並且我點擊了帶有 `id="start_stop"`的元素, 倒計時應該停止.

**用戶故事 #21:** 如果計時器暫停並且我點擊了帶有 `id="start_stop"`的元素, 倒計時應該從暫停的值開始恢復運行.

**用戶故事 #22:** 當一個時間週期倒計時到達零的時候 (注意: 計時器必須到達 00:00), 一個新倒計時開始, 帶有id爲 `timer-label`的元素應該展示字符串表示休息時間已經開始.

**用戶故事 #23:** 當一個時間週期倒計時到達零的時候 (注意: 計時器必須到達 00:00), 一個新倒計時開始, 倒計時的數值現在在 `id="break-length"`元素中展示.

**用戶故事 #24:** 當休息時間倒計時到達零的時候 (注意: 計時器必須到達 00:00), 一個新倒計時開始, 帶有id爲`timer-label` 的元素應該展示一個字符串表示一個時間週期已經開始.

**用戶故事 #25:**當休息時間倒計時到達零的時候 (注意: 計時器必須到達 00:00), 一個新的時間週期倒計時應該開始，倒計時從當前在 `id="session-length"` 元素中展示的數值開始.

**用戶故事 #26:** 當一個倒計時到達零的時候 (注意: 計時器必須到達00:00), 一個提示計時結束的鈴聲應該播放. 這應該使用一個HTML5`audio`標籤並且帶有 `id="beep"`.

**用戶故事 #27:** 帶有 `id="beep"`的音頻元素必須持續響1秒或更長.

**用戶故事 #28:** 音頻元素帶有id爲 `beep` 必須停止播放並且倒退回開頭，當id爲 `reset` 的元素被點擊時.

你可以構建你的項目通過 <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">使用這個codepen模板</a> 並且點擊`Save` 去創建你自己的作品. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

一旦你完成了，提交你通過所有測試的工作項目URL.

# --solutions--

```js
// solution required
```
