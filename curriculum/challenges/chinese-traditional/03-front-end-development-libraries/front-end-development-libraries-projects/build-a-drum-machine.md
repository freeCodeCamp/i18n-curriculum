---
id: 587d7dbc367417b2b2512bae
title: 構建一臺鼓式機器
challengeType: 3
forumTopicId: 301370
dashedName: build-a-drum-machine
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目的:** 構建一個和下面網址功能類似的應用程序: <a href="https://drum-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://drum-machine.freecodecamp.rocks/</a>.

實現以下的用戶故事並且通過所有的測試用例。 使用你需要的任何庫和第三方API。 使用你自己的個人風格樣式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意組合來完成此項目。 你應該使用一個前端框架（比如像是React）因爲這個部分是有關於學習前端框架的。 不推薦使用以上沒有列出的其他技術，不然風險自擔。 我們正着手支持其他前端框架像是Angular和Vue，但是現在還不支持他們。 我們將會接受並且努力修復所有使用推薦的技術棧在這個項目中出現的問題。 編程愉快！

**用戶需求 #1:** 應該創建一個包含所有元素的外部容器，並且這個容器的`id="drum-machine"`

**用戶需求 #2:** 在 `#drum-machine` 內，我能看到一個 `id="display"`的元素

**用戶故事 #3：** 在 `#drum-machine` 中，我可以看到 9 個可點擊的鼓墊元素，每個元素都有一個類名 `drum-pad`、一個描述鼓墊將設置爲觸發的音頻剪輯的唯一 Id，以及一個對應於鍵盤上以下鍵之一的內部文本：`Q`、`W`、`E`、`A`、`S`、`D`、`Z`、`X`、`C`。 鼓墊必須按照此順序排列。

**需求 4：** 在每一個具有 `.drum-pad` 屬性的元素內，應該有一個具有指向音頻片段地址的 `src` 屬性的 HTML5 `audio` 元素，一個值爲 `clip` 的 class 屬性，以及一個 id 屬性，它的值應該是其父元素 `.drum-pad` 的文本內容（例如 `id="Q"`、`id="W"`、`id="E"` 等等）。

**用戶故事 #5：** 當我單擊 `.drum-pad` 元素時，其子 `audio` 元素中包含的音頻剪輯應該被觸發。

**用戶故事 #6：** 當我按下與每個 `.drum-pad` 關聯的觸發鍵時，其子 `audio` 元素中包含的音頻剪輯應該被觸發（例如，按下 `Q` 鍵應該觸發包含字符串 `Q` 的鼓墊，按下 `W` 鍵應該觸發包含字符串 `W` 的鼓墊，等等）。

**用戶故事 #7：** 當觸發 `.drum-pad` 時，描述相關音頻剪輯的字符串將顯示爲 `#display` 元素的內部文本（每個字符串必須是唯一的）。

以下是一些可用於鼓機的音頻樣本：

- [Heater 1](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-1.mp3)
- [Heater 2](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-2.mp3)
- [Heater 3](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-3.mp3)
- [Heater 4](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-4_1.mp3)
- [Clap](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Heater-6.mp3)
- [Open-HH](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Dsc_Oh.mp3)
- [Kick-n'-Hat](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Kick_n_Hat.mp3)
- [Kick](https://cdn.freecodecamp.org/testable-projects-fcc/audio/RP4_KICK_1.mp3)
- [Closed-HH](https://cdn.freecodecamp.org/testable-projects-fcc/audio/Cev_H2.mp3)

你可以通過 <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">使用此 CodePen 模板</a> 並單擊 `Save` 來創建你自己的筆，從而構建你的項目。 或者你可以使用此 CDN 鏈接在你喜歡的任何環境中運行測試：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

完成項目並通過所有測試後，請輸入你的項目在 CodePen 上的鏈接並提交。

# --solutions--

```js
// solution required
```
