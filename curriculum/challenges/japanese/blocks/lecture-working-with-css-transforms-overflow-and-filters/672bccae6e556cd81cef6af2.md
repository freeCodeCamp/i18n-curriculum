---
id: 672bccae6e556cd81cef6af2
title: マージンの重なりとは何か、そしてどのように機能するのか？
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

マージンの重なりは、CSSの基本的な概念であり、ウェブ開発の初心者をよく混乱させます。

この動作は、隣接する要素の垂直マージンが重なり合い、2つのうち大きい方のマージンと同じ単一のマージンになるときに発生します。

マージンの重なりを理解することは、ウェブデザインでの間隔やレイアウトを正確にコントロールするために重要です。では、マージンの重なりがどのように機能するのかを見ていき、よくあるシナリオを探ってみましょう。

CSSでは、2つの垂直マージンが接触すると重なり合います。つまり、合計されるのではなく、大きい方のマージンが勝ち、要素間のスペースを決定します。この動作は垂直マージン（上と下）にのみ適用され、水平方向のマージン（左と右）には適用されません。以下の例でこの概念を説明します。

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

この例では、`.box1` と `.box2` の間の合計スペースが50ピクセル（20ピクセルと30ピクセルの合計）になると思うかもしれません。しかし、マージンの重なりにより、実際のスペースは2つのうち大きい30ピクセルになります。

前の例で見たように、隣接する兄弟要素のマージンは重なります。これはマージンの重なりの最も単純なケースです。次に、マージンの重なりが起こる他のケースを見てみましょう。

マージンは親要素とその最初または最後の子要素の間でも重なることがあります。親のマージンと子のマージンを分けるボーダー、パディング、インラインコンテンツ、クリアランスがなければ、重なります。

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

この場合、子要素は上から70ピクセル（40ピクセルと30ピクセルの合計）離れていると思うかもしれません。しかし、マージンは重なり合い、大きい方の40ピクセルが使われます。

要素にコンテンツ、パディング、ボーダーがない場合、その上下のマージンは1つのマージンに重なることがあります。

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

この例では、`empty-block` の上下のマージンが1つの20ピクセルのマージンに重なり合い、2つのうち大きい方が使われています。

パディングを使って重なりを防ぐ例を示します。

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

この場合、親の1ピクセルのパディングがマージンの重なりを防ぎ、親の上端から子のコンテンツの上端までの合計スペースが71ピクセルになります。

マージンの重なりを理解することは、CSSでレイアウトや間隔を正確にコントロールするために重要です。時には予期しない結果を招くこともありますが、文書内でより美しく一貫した間隔を作るための機能です。マージンの重なりがいつ起こるか、必要に応じてどのように防ぐかを知ることで、より予測可能で保守しやすいレイアウトをウェブデザインで作成できます。

# --questions--

## --text--

マージンの重なりはどの方向で起こりますか？

## --answers--

水平方向のマージンのみ。

### --feedback--

どのマージン（上、下、左、右）がこの動作に影響されるか考えてみてください。

---

垂直方向のマージンのみ。

---

水平方向と垂直方向の両方のマージン。

### --feedback--

どのマージン（上、下、左、右）がこの動作に影響されるか考えてみてください。

---

斜め方向のマージン。

### --feedback--

どのマージン（上、下、左、右）がこの動作に影響されるか考えてみてください。

## --video-solution--

2

## --text--

隣接する2つの要素が異なるマージン値を持つ場合、何が起こりますか？

## --answers--

マージンは合計されます。

### --feedback--

マージンの重なりが起こるとき、どのマージンが「勝つ」か考えてみてください。

---

小さい方のマージンが使われます。

### --feedback--

マージンの重なりが起こるとき、どのマージンが「勝つ」か考えてみてください。

---

大きい方のマージンが使われます。

---

2つのマージンの平均が使われます。

### --feedback--

マージンの重なりが起こるとき、どのマージンが「勝つ」か考えてみてください。

## --video-solution--

3

## --text--

親要素とその最初の子要素の間のマージンの重なりを防がないものはどれですか？

## --answers--

親に`border`を追加する。

### --feedback--

親と子のマージンの間に分離を作るプロパティは何か考えてみてください。

---

親に`padding-top: 1px;`を設定する。

### --feedback--

親と子のマージンの間に分離を作るプロパティは何か考えてみてください。

---

子に`display: inline-block;`を使う。

### --feedback--

親と子のマージンの間に分離を作るプロパティは何か考えてみてください。

---

子に`margin-top: 0;`を設定する。

## --video-solution--

4
