---
id: bd7154d8c242eddfaeb5bd13
title: 構建生命遊戲
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>.

生命遊戲是英國數學家 John Horton Conway 設計的一種細胞自動機。 這是一個 <em>零玩家遊戲</em>, 意味着它的進化是由它的初始狀態決定的，不需要任何進一步的操作。 生命遊戲的一個啓動方式是，創建一個初始配置並觀察它如何演變。

“生命遊戲”的宇宙是一個無限的、二維的正交格點，每個格點可以處於兩種狀態之一，即“有生命”或“無生命”。 Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent.

在每個步驟中，都發生以下轉換：

- Any live cell with fewer than two live neighbors dies, as if by underpopulation.
- Any live cell with two or three live neighbors lives on to the next generation.
- Any live cell with more than three live neighbors dies, as if by overpopulation.
- Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

完成以下需求，並且通過所有測試。 如有必要，可以引入第三方庫或使用第三方 API。 賦予它你的個人風格。

**用戶故事：** 當我第一次到達遊戲時，它將隨機生成一個棋盤並開始遊戲。

**用戶故事：** 我可以開始和停止遊戲。

**用戶故事：** 我可以設置棋盤。

**用戶故事：** 我可以清除棋盤。

**用戶故事：** 當我按下開始時，遊戲將開始。

**用戶故事：** 每次棋盤改變時，我都可以看到已經經歷了多少代。

完成後，單擊“我已完成此挑戰”按鈕提交對應的 CodePen 鏈接。

可以分享你的項目到 <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 論壇</a>上獲得反饋。

# --solutions--

```js
// solution required
```
