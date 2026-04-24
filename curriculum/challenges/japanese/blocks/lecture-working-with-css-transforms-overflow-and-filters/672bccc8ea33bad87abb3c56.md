---
id: 672bccc8ea33bad87abb3c56
title: content-box と border-box の違いとは？
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

`box-sizing` プロパティは、要素の幅と高さの計算方法を制御するために `content-box` または `border-box` のいずれかに設定できます。

このプロパティはユニバーサルセレクター（`*`）に設定して、ドキュメント内のすべての要素に適用することもできます。

```css
* {
  box-sizing: border-box;
}
```

`box-sizing` プロパティの値はデフォルトでは `content-box` ですが、必要に応じて `border-box` を選ぶこともできます。まず `content-box` を見てから、`border-box` を説明します。

モデルの仕組みを理解するには、CSSボックスモデルの4つの基本概念に慣れている必要があります。さっと復習しましょう。

- コンテンツエリアは要素の内容が占めるスペースです。
- `padding` はコンテンツエリアと `border` の間のスペースです。
- `border` はコンテンツエリアと `padding` を囲む枠線です。
- `margin` は `border` の外側にあり、要素と他の要素を分けるスペースです。

`content-box` モデルでは、要素に設定した幅と高さはコンテンツエリアの寸法を決めますが、`padding`、`border`、`margin` は含まれません。コンテンツエリアを正確に制御したい場合は `content-box` を使います。`width` と `height` を設定すると、コンテンツ自体のサイズだけが決まります。

要素の合計幅を求めるには、左右の `padding` と左右の `border` を加算する必要があります。同様に、要素の合計高さはコンテンツの高さに上下の `padding` と上下の `border` を加えたものです。

例えば、ここにすべての `div` 要素に対する CSS 型セレクターがあります。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

この場合、`content-box` が使われるとコンテンツエリアは 300px × 200px になります。合計のレンダリングサイズには `padding` と `border` が含まれます。例えば、合計幅 = 300px（コンテンツ）+ 40px（`padding`）+ 8px（`border`）= 348px、合計高さも同様に計算されます。

素晴らしいです！次に `border-box` を見てみましょう。これは設定した幅と高さに要素のコンテンツ、`padding`、`border` が含まれます（`margin` は含まれません）。`border-box` は、`padding` や `border` が変わっても要素の合計サイズを固定したい場合に便利で、レスポンシブレイアウトでよく使われます。

`border-box` では、`padding` と `border` が要素の指定サイズ内に含まれます。設定した `width` と `height` が要素の合計寸法になります：コンテンツ + `padding` + `border`。`margin` は除外されます。

次の例では、同じ寸法で `div` 要素が2つありますが、`box-sizing` の値が異なります。ブラウザで見ると合計サイズが異なることに注目してください。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

両方とも `width`、`height`、`padding`、`border`、`margin` は同じです。違いは色と `box-sizing` プロパティの値だけです。この小さな違いが最終的な寸法に大きな影響を与えます。

`content-box` と `border-box` のどちらを選ぶかは、プロジェクトの具体的なニーズによります。`border-box` はそのシンプルさと柔軟性からますます人気が高まっていますが、両方のモデルを理解することが効果的な CSS レイアウトを実装する上で重要です。

# --questions--

## --text--

ほとんどのブラウザで `box-sizing` プロパティのデフォルト値はどれですか？

## --answers--

`content-box`

---

`border-box`

### --feedback--

要素のサイズ指定のデフォルトの動作を考えてみてください。

---

`padding-box`

### --feedback--

要素のサイズ指定のデフォルトの動作を考えてみてください。

---

`margin-box`

### --feedback--

要素のサイズ指定のデフォルトの動作を考えてみてください。

## --video-solution--

1

## --text--

レスポンシブレイアウトを作成する際に `border-box` を使う主な利点は何ですか？

## --answers--

計算がより複雑になる。

### --feedback--

`border-box` モデルが指定した `width` と `height` の中で `padding` と `border` をどのように扱うかを考えてみてください。

---

要素の寸法をより正確に制御できる。

### --feedback--

`border-box` モデルが指定した `width` と `height` の中で `padding` と `border` をどのように扱うかを考えてみてください。

---

`padding` や `border` が変わっても要素の指定寸法を維持できる。

---

ブラウザの互換性が向上する。

### --feedback--

`border-box` モデルが指定した `width` と `height` の中で `padding` と `border` をどのように扱うかを考えてみてください。

## --video-solution--

3

## --text--

`content-box` モデルでは、要素に指定した `width` は何を表しますか？

## --answers--

`padding`、`border`、`margin` を含む要素の合計 `width`。

### --feedback--

`content-box` モデルにおけるコンテンツエリアと要素全体の寸法の関係を考えてみてください。

---

コンテンツエリアの `width` のみ。

---

`border` の `width`。

### --feedback--

`content-box` モデルにおけるコンテンツエリアと要素全体の寸法の関係を考えてみてください。

---

`padding` の `width`。

### --feedback--

`content-box` モデルにおけるコンテンツエリアと要素全体の寸法の関係を考えてみてください。

## --video-solution--

2
