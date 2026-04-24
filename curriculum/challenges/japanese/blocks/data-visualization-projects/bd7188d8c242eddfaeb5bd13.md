---
id: bd7188d8c242eddfaeb5bd13
title: ヒートマップでデータを可視化する
challengeType: 3
forumTopicId: 301466
dashedName: visualize-data-with-a-heat-map
---

# --description--

**目的:** 次のような機能を持つアプリを作成してください：<a href="https://heat-map.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://heat-map.freecodecamp.rocks</a>。

以下のユーザーストーリーを満たし、すべてのテストを通過させてください。必要なライブラリやAPIは自由に使って構いません。自分なりのスタイルを加えてください。

HTML、JavaScript、CSS、そしてD3のSVGベースの可視化ライブラリを使用できます。必要なDOM要素は各テストの瞬間にクエリされます。もしVueのようなフロントエンドフレームワークを使う場合、動的コンテンツに対してテスト結果が正確でない場合があります。将来的には対応を検討していますが、現時点ではD3プロジェクトにこれらのフレームワークはサポートされていません。

**ユーザーストーリー #1:** ヒートマップには対応する`id="title"`を持つタイトルがあること。

**ユーザーストーリー #2:** ヒートマップには対応する`id="description"`を持つ説明があること。

**ユーザーストーリー #3:** ヒートマップには対応する`id="x-axis"`を持つx軸があること。

**ユーザーストーリー #4:** ヒートマップには対応する`id="y-axis"`を持つy軸があること。

**ユーザーストーリー #5:** ヒートマップにはデータを表す`rect`を持つ`class="cell"`要素があること。

**ユーザーストーリー #6:** セルには少なくとも4つの異なる塗りつぶし色が使われていること。

**ユーザーストーリー #7:** 各セルは対応する`data-month`、`data-year`、`data-temp`の値を含む`month`、`year`、`temperature`のプロパティを持つこと。

**ユーザーストーリー #8:** 各セルの`data-month`、`data-year`はデータの範囲内であること。

**ユーザーストーリー #9:** ヒートマップのセルはy軸の対応する月と揃っていること。

**ユーザーストーリー #10:** ヒートマップのセルはx軸の対応する年と揃っていること。

**ユーザーストーリー #11:** ヒートマップのy軸には完全な月名を持つ複数の目盛りラベルがあること。

**ユーザーストーリー #12:** ヒートマップのx軸には1754年から2015年までの年を持つ複数の目盛りラベルがあること。

**ユーザーストーリー #13:** ヒートマップには対応する`id="legend"`を持つ凡例があること。

**ユーザーストーリー #14:** 凡例には`rect`要素が含まれていること。

**ユーザーストーリー #15:** 凡例の`rect`要素は少なくとも4つの異なる塗りつぶし色を使っていること。

**ユーザーストーリー #16:** マウスオーバーすると対応する`id="tooltip"`を持つツールチップが表示され、そのエリアの詳細情報が見られること。

**ユーザーストーリー #17:** ツールチップはアクティブなエリアの`data-year`に対応する`data-year`プロパティを持つこと。

このプロジェクトを完成させるために必要なデータセットはこちらです：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/global-temperature.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">このCodePenテンプレート</a>を使い、`Save`をクリックして自分のペンを作成することもできます。または、このCDNリンクを使って好きな環境でテストを実行できます：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

完成したら、すべてのテストに合格した動作中のプロジェクトのURLを提出してください。

# --solutions--

```js
// solution required
```
