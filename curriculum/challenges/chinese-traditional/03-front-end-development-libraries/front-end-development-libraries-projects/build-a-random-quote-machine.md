---
id: bd7158d8c442eddfaeb5bd13
title: 構建一個隨機引語生成器
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**目標：** 構建一個功能類似於此的應用程序：<a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>。

實現以下的用戶故事並且通過所有的測試用例。 使用你需要的任何庫和第三方API。 使用你自己的個人風格樣式。

你可以使用 HTML、JavaScript、CSS、Bootstrap、SASS、React、Redux 和 jQuery 的任意組合來完成此項目。 你應該使用一個前端框架（比如像是React）因爲這個部分是有關於學習前端框架的。 不推薦使用以上沒有列出的其他技術，不然風險自擔。 我們正着手支持其他前端框架像是Angular和Vue，但是現在還不支持他們。 我們將會接受並且努力修復所有使用推薦的技術棧在這個項目中出現的問題。 編程愉快！

**用戶故事 #1：** 我可以看到一個帶有對應 `id="quote-box"` 的包裝元素。

**用戶故事 #2：** 在 `#quote-box` 中，我可以看到一個具有對應 `id="text"` 的元素。

**用戶故事 #3：** 在 `#quote-box` 中，我可以看到一個具有對應 `id="author"` 的元素。

**用戶故事 #4：** 在 `#quote-box` 中，我可以看到一個可點擊元素以及相應的 `id="new-quote"`。

**用戶故事 #5：** 在 `#quote-box` 中，我可以看到可點擊的 `a` 元素以及相應的 `id="tweet-quote"`。

**用戶故事 #6：** 首次加載時，我的引用生成器在帶有 `id="text"` 的元素中顯示一個隨機引用。

**用戶故事 #7：** 首次加載時，我的引用生成器在帶有 `id="author"` 的元素中顯示隨機引用的作者。

**用戶故事 #8：**當單擊 `#new-quote` 按鈕時，我的引用生成器應該獲取一個新的引用並將其顯示在 `#text` 元素中。

**用戶故事 #9：** 當點擊 `#new-quote` 按鈕時，我的引用生成器應該獲取新引用的作者，並將其顯示在 `#author` 元素中。

**用戶故事 #10：** 我可以通過點擊 `#tweet-quote``a` 元素來發布當前引用。 此 `a` 元素應在其 `href` 屬性中包含 `"twitter.com/intent/tweet"` 路徑，以發佈當前引言。

**用戶故事 #11：** `#quote-box` 包裝元素應水平居中。 請在瀏覽器縮放級別爲 100% 且頁面最大化的情況下運行測試。

You can build your project by <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">using this CodePen template</a> and clicking `Save` to create your own pen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

當你完成了本項目並且該項目所有測試運行通過，請提交項目的 URL。

**注意：** Twitter 不允許在 iframe 中加載鏈接。 如果你的推文無法加載，請嘗試在 `#tweet-quote` 元素上使用 `target="_blank"` 或 `target="_top"` 屬性。 `target="_top"` 將替換當前選項卡，因此請確保你的工作已保存。

# --solutions--

```js
// solution required
```
