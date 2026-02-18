---
id: bd7154d8c242eddfaeb5bd13
title: 构建生命游戏
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**目标：** 构建一个功能上类似于此的应用程序：<a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>。

生命游戏是英国数学家 John Horton Conway 设计的一种细胞自动机。  It is a <em>zero-player game</em>, meaning that its evolution is determined by its initial state, requiring no further input. 生命游戏的一个启动方式是，创建一个初始配置并观察它如何演变。

生命游戏的宇宙是一个无限的、二维正交的 `Grid`，由平方单元格组成，每个单元格处于两种可能状态之一：有生命或无生命。每个单元格与其八个邻居交互，这些邻居是水平、垂直或对角相邻的单元格。

在每个步骤中，都发生以下转换：

- 任何活细胞如果活邻居少于 2 个，则会死亡，就像人口不足一样。
- 任何有两个或三个活邻居的活细胞将存活到下一代。
- 任何有超过 3 个活邻居的活细胞都会死亡，就像过度拥挤一样。
- 任何恰好有三个活邻居的死细胞都会变成活细胞，就像繁殖一样。

完成以下需求，并且通过所有测试。 如有必要，可以引入第三方库或使用第三方 API。 赋予它你的个人风格.

**用户故事：** 当我第一次到达游戏时，它将随机生成一个棋盘并开始游戏。

**用户故事：** 我可以开始和停止游戏。

**用户故事：** 我可以设置棋盘。

**用户故事：** 我可以清除棋盘。

**用户故事：** 当我按下开始时，游戏将开始。

**用户故事：** 每次棋盘改变时，我都可以看到已经经历了多少代。

完成后，单击“我已完成此挑战”按钮提交对应的 CodePen 链接。

你可以通过在 <a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp 论坛</a> 上分享你的项目来获得反馈。

# --solutions--

```js
// solution required
```
