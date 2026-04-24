---
id: bd7178d8c242eddfaeb5bd13
title: 散布図グラフでデータを可視化する
challengeType: 3
forumTopicId: 301467
dashedName: visualize-data-with-a-scatterplot-graph
---

# --description--

**目的:** 次のような機能を持つアプリを作成してください：<a href="https://scatterplot-graph.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://scatterplot-graph.freecodecamp.rocks</a>。

以下のユーザーストーリーを満たし、すべてのテストに合格してください。必要なライブラリやAPIは自由に使って構いません。自分なりのスタイルを加えてください。

HTML、JavaScript、CSS、そしてD3のsvgベースの可視化ライブラリを使うことができます。テストではD3のaxisプロパティを使って軸を生成する必要があり、これにより軸に沿った目盛りが自動的に生成されます。この目盛りは、グラフ要素の整列を判定するために使われるため、D3のテストに合格するには必須です。軸の生成方法については <https://d3js.org/d3-axis> を参照してください。必要なDOM要素は各テストの瞬間にクエリされます。Vueのようなフロントエンドフレームワークを使うと、動的コンテンツのテスト結果が正確でない場合があります。将来的には対応を検討していますが、現時点ではD3プロジェクトでこれらのフレームワークはサポートされていません。

**ユーザーストーリー #1:** `id="title"`に対応するタイトル要素が見えます。

**ユーザーストーリー #2:** `id="x-axis"`に対応するx軸が見えます。

**ユーザーストーリー #3:** `id="y-axis"`に対応するy軸が見えます。

**ユーザーストーリー #4:** `dot`のクラスを持つ点が見え、それぞれがプロットされているデータを表しています。

**ユーザーストーリー #5:** 各点は対応する`data-xvalue`と`data-yvalue`の値を含む`x`と`y`のプロパティを持っています。

**ユーザーストーリー #6:** 各点の`data-xvalue`と`data-yvalue`は実際のデータの範囲内で、正しいデータ形式である必要があります。`data-xvalue`については、整数（西暦の完全な年）または`Date`オブジェクトがテスト評価に適しています。`data-yvalue`（分）については`Date`オブジェクトを使ってください。

**ユーザーストーリー #7:** `data-xvalue`と対応する点はx軸上の対応する点／値と整列しています。

**ユーザーストーリー #8:** `data-yvalue`と対応する点はy軸上の対応する点／値と整列しています。

**ユーザーストーリー #9:** y軸には`%M:%S`の時間形式の複数の目盛りラベルが見えます。

**ユーザーストーリー #10:** x軸には年を示す複数の目盛りラベルが見えます。

**ユーザーストーリー #11:** x軸ラベルの範囲は実際のx軸データの範囲内です。

**ユーザーストーリー #12:** y軸ラベルの範囲は実際のy軸データの範囲内です。

**ユーザーストーリー #13:** `id="legend"`を含む説明テキストを持つ凡例が見えます。

**ユーザーストーリー #14:** エリアにマウスを乗せると、`id="tooltip"`に対応するツールチップが表示され、そのエリアの詳細情報が見えます。

**ユーザーストーリー #15:** ツールチップはアクティブなエリアの`data-year`に対応する`data-xvalue`プロパティを持っています。

このプロジェクトを完成させるために必要なデータセットはこちらです：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/cyclist-data.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">このCodePenテンプレート</a>を使ってプロジェクトを作成し、`Save`をクリックして自分のペンを作成できます。または、このCDNリンクを使って任意の環境でテストを実行できます：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`

完成したら、すべてのテストに合格した動作中のプロジェクトのURLを提出してください。

# --solutions--

```js
// solution required
```
