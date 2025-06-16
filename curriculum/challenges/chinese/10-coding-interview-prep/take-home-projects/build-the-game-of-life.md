---
id: bd7154d8c242eddfaeb5bd13
title: 构建生命游戏
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**Objective:** Build an app that is functionally similar to this: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>.

生命游戏是英国数学家 John Horton Conway 设计的一种细胞自动机。 这是一个 <em>零玩家游戏</em>, 意味着它的进化是由它的初始状态决定的，不需要任何进一步的操作。 生命游戏的一个启动方式是，创建一个初始配置并观察它如何演变。

“生命游戏”的宇宙是一个无限的、二维的正交格点，每个格点可以处于两种状态之一，即“有生命”或“无生命”。 Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent.

在每个步骤中，都发生以下转换：

- Any live cell with fewer than two live neighbors dies, as if by underpopulation.
- Any live cell with two or three live neighbors lives on to the next generation.
- Any live cell with more than three live neighbors dies, as if by overpopulation.
- Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

完成以下需求，并且通过所有测试。 如有必要，可以引入第三方库或使用第三方 API。 赋予它你的个人风格。

**用户故事：** 当我第一次到达游戏时，它将随机生成一个棋盘并开始游戏。

**用户故事：** 我可以开始和停止游戏。

**用户故事：** 我可以设置棋盘。

**用户故事：** 我可以清除棋盘。

**用户故事：** 当我按下开始时，游戏将开始。

**用户故事：** 每次棋盘改变时，我都可以看到已经经历了多少代。

完成后，单击“我已完成此挑战”按钮提交对应的 CodePen 链接。

可以分享你的项目到 <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 论坛</a>上获得反馈。

# --solutions--

```js
// solution required
```
