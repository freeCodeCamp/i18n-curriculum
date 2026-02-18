---
id: bd7154d8c242eddfaeb5bd13
title: 建置生命遊戲
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**目標：** 建置一個功能上類似於此的應用程式：<a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>。

生命遊戲是由英國數學家 John Horton Conway 設計的細胞自動機。它是一個 <em>零玩家遊戲</em>，意指其演變由初始狀態決定，不需要進一步的輸入。玩家透過建立初始設定並觀察其演變來與生命遊戲交談。

生命遊戲的宇宙是一個無限的二維正交方格網格，每個格子都是方形的，且處於兩種可能狀態之一：有生命或無生命。每個格子與其八個鄰居交談、互動，這些鄰居是水平、垂直或對角相鄰的格子。

在每個時間步驟中，會發生以下轉換：

- 任何鄰近活細胞少於 2 個的活細胞會死亡，就像因人口過少一樣。
- 任何有兩個或三個活鄰居的活細胞會存活到下一代。
- 任何有超過 3 個活鄰居的活細胞會死亡，就像因為過度擁擠一樣。
- 任何恰好有三個活鄰居的死細胞會變成活細胞，就像繁殖一樣。

完成以下使用者故事並通過所有測試。使用你需要的任何函式庫或 API。展現你自己的風格。

**使用者故事：** 當我第一次進入遊戲時，它會隨機產生一個棋盤並開始遊戲。

**使用者故事：**我可以啟動和停止 `board`。

**使用者故事：** 我可以設定看板。

**使用者故事：** 我可以清除看板。

**使用者故事：** 當我按下 start 時，遊戲將開始進行。

**使用者故事：** 每次棋盤改變時，我都能看到已經過了多少代。

完成後，包含你的專案的聯結，然後點擊「我已完成此挑戰」按鈕。

你可以透過在 <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 論壇</a> 分享你的專案來獲得回授。

# --solutions--

```js
// solution required
```
