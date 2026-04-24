---
id: bd7168d8c242eddfaeb5bd13
title: 棒グラフでデータを可視化する
challengeType: 3
forumTopicId: 301464
dashedName: visualize-data-with-a-bar-chart
---

# --description--

**目的:** 次のような機能を持つアプリを作成してください：<a href="https://bar-chart.freecodecamp.rocks" target="_blank" rel="noopener noreferrer nofollow">https://bar-chart.freecodecamp.rocks</a>。

以下のユーザーストーリーを満たし、すべてのテストに合格してください。必要なライブラリやAPIは自由に使って構いません。自分なりのスタイルを加えてください。

HTML、JavaScript、CSS、そしてD3のSVGベースの可視化ライブラリを使うことができます。テストではD3のaxisプロパティを使って軸を生成する必要があり、これにより軸に沿った目盛りが自動的に生成されます。これらの目盛りは、グラフ要素の整列を判定するために使われるため、D3のテストに合格するには必須です。軸の生成方法については<https://d3js.org/d3-axis>で確認できます。必要なDOM要素は各テストの瞬間にクエリされます。Vueのようなフロントエンドフレームワークを使う場合、動的コンテンツのテスト結果が正確でない場合があります。将来的には対応を検討していますが、現時点ではD3プロジェクトでこれらのフレームワークはサポートされていません。

**ユーザーストーリー #1:** チャートには対応する`id="title"`を持つタイトルがあること。

**ユーザーストーリー #2:** チャートには対応する`g`を持つ`id="x-axis"`要素のx軸があること。

**ユーザーストーリー #3:** チャートには対応する`g`を持つ`id="y-axis"`要素のy軸があること。

**ユーザーストーリー #4:** 両方の軸には複数の目盛りラベルがあり、それぞれに対応する`class="tick"`があること。

**ユーザーストーリー #5:** チャートには各データポイントに対応する`rect`を表示する`class="bar"`要素があること。

**ユーザーストーリー #6:** 各`.bar`は`data-date`と`data-gdp`のプロパティを持ち、それぞれ`date`と`GDP`の値を含むこと。

**ユーザーストーリー #7:** `.bar`要素の`data-date`プロパティは提供されたデータの順序と一致すること。

**ユーザーストーリー #8:** `.bar`要素の`data-gdp`プロパティは提供されたデータの順序と一致すること。

**ユーザーストーリー #9:** 各`.bar`要素の高さはデータの対応する`GDP`を正確に表していること。

**ユーザーストーリー #10:** `data-date`属性と対応する`.bar`要素はx軸の対応する値と整列していること。

**ユーザーストーリー #11:** `data-gdp`属性と対応する`.bar`要素はy軸の対応する値と整列していること。

**ユーザーストーリー #12:** マウスをエリアに重ねると、そのエリアに関する詳細情報を表示する対応する`id="tooltip"`を持つツールチップが表示されること。

**ユーザーストーリー #13:** ツールチップはアクティブなエリアの`data-date`に対応する`data-date`プロパティを持つこと。

このプロジェクトを完成させるために必要なデータセットはこちらです：`https://raw.githubusercontent.com/freeCodeCamp/ProjectReferenceData/master/GDP-data.json`

<a href='https://codepen.io/pen?template=MJjpwO' target="_blank" rel="noopener noreferrer nofollow">このCodePenテンプレート</a>を使ってプロジェクトを作成し、`Save`をクリックして自分のペンを作成できます。または、このCDNリンクを使って任意の環境でテストを実行できます：`https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js`。

完成したら、すべてのテストに合格した動作中のプロジェクトのURLを提出してください。

# --solutions--

```js
// solution required
```
