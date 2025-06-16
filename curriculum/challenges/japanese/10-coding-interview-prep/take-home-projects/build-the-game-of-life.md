---
id: bd7154d8c242eddfaeb5bd13
title: ライフゲームを作成する
challengeType: 3
forumTopicId: 302362
dashedName: build-the-game-of-life
---

# --description--

**目標:** こちらと似た機能を持つアプリを構築してください: <a href="https://codepen.io/freeCodeCamp/full/BpwMZv/" target="_blank" rel="noopener noreferrer nofollow">https://codepen.io/freeCodeCamp/full/BpwMZv/</a>

「ライフゲーム (Game of Life)」は、イギリスの数学者ジョン・ホートン・コンウェイが考案したセルオートマトンです。 これは<em>プレイヤーのいないゲーム</em>です。つまり、その進化は初期状態によって決定され、それ以上の入力は必要ありません。 初期構成を作成して、それがどのように進化するかを眺めるのが、このライフゲームの楽しみ方です。

ライフゲームを構成する宇宙は、四角いセルからなる無限の二次元の直交格子で、それぞれのセルは「生」か「死」の 2 つの状態のいずれかになることができます。 Every cell interacts with its eight neighbors, which are the cells that are horizontally, vertically, or diagonally adjacent.

各ステップ時間で、次の遷移が起こります:

- Any live cell with fewer than two live neighbors dies, as if by underpopulation.
- Any live cell with two or three live neighbors lives on to the next generation.
- Any live cell with more than three live neighbors dies, as if by overpopulation.
- Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

以下のユーザーストーリーを満たし、すべてのテストが成功するようにしてください。 必要に応じて、どのようなライブラリあるいは API を使用してもかまいません。 あなた独自のアレンジを加えましょう。

**ユーザーストーリー:** 最初にゲームを訪れたときから、ボードがランダムに生成され、自由に動き始めます。

**ユーザーストーリー:** ボードの動作を開始または停止できます。

**ユーザーストーリー:** ボードを設定することができます。

**ユーザーストーリー:** ボードをクリアすることができます。

**ユーザーストーリー:** start を押すと、ゲームが動き出します。

**ユーザーストーリー:** ボードが変化するごとに、どれだけの世代が過ぎ去ったかを見ることができます。

完了したら、プロジェクトへのリンクを入れて、「このチャレンジを完了しました」ボタンをクリックしてください。

<a href="https://forum.freecodecamp.org/c/project-feedback/409" target="_blank" rel="noopener noreferrer nofollow">freeCodeCamp フォーラム</a>でプロジェクトを共有することにより、フィードバックを得ることができます。

# --solutions--

```js
// solution required
```
