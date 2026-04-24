---
id: 672bbeb6eefd7ca9c003ea00
title: ツリー構造疑似クラスの例とは？
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

ツリー構造疑似クラスは、ドキュメントツリー内の位置に基づいて要素をターゲットにし、スタイルを適用できます。ドキュメントツリーとは、HTMLドキュメント内の要素の階層構造を指します。

以下はツリー構造疑似クラスの一覧です：

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

それぞれのツリー構造疑似クラスを例とともに詳しく見ていきましょう。

​​`:root` 疑似クラスは通常、ルート`html`要素を指します。ドキュメントの最上位をターゲットにして、ドキュメント全体に共通のスタイルを適用するのに役立ちます。     

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

`:root` 疑似クラスもCSS変数の設定でよく使われます：

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

CSS変数を使うと値を保存してスタイルシート内で再利用できます。これについては後ほど詳しく学びます。

空の要素、つまり子要素が空白以外にない要素もドキュメントツリーに含まれます。だから空の要素をターゲットにする`:empty` 疑似クラスがあります。例えば、このHTMLコードには空のリスト項目が2つあります。`:empty` 疑似クラスを使うと空のリスト項目に異なるスタイルを適用できます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

空のリスト項目に対して最も実用的なのは、おそらく表示しないことです：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` は親内での位置に基づいて要素を選択でき、`:nth-last-child(n)` は末尾から数えて要素を選択できます。`n` は特定の数字や`odd`、`even` のようなキーワードを指定できます。これは位置に基づいてテーブルセルをスタイル付けする際に非常に便利です：偶数番目と奇数番目。

以下は果物の価格リストテーブルのHTML例です。CSSは`:nth-child` 疑似クラスを使って奇数番目と偶数番目のテーブルセルをターゲットにしています：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

`:first-child`、`:last-child`、`:only-child` 疑似クラスはすべて親コンテナ内またはドキュメント全体のアイテムに作用します。

- `:first-child` は親要素またはドキュメント内の最初の要素を選択します。
- `:last-child` は親要素またはドキュメント内の最後の要素を選択します。
- `:only-child` は親要素またはドキュメント内で唯一の要素を選択します。

この例では`:first-child` と `:last-child` 疑似クラスを使うと、`Item 1` と `Item 3` の両方が選択されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

ページに複数の番号なしリストがある場合は、選択をより具体的にする必要があります：

`:only-child` 疑似クラスの動作を示すために、2つの別々の`div`要素を含むHTML例を示します。`:only-child` 疑似クラスを使うと、子要素が1つだけの`div` 要素だけが選択されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

`:first-of-type` と `:last-of-type` 疑似クラスは、親内で特定の要素タイプの最初と最後の出現を選択します。これは兄弟要素の中でその要素タイプの最初または最後のインスタンスにユニークなスタイルを適用するのに便利です。

以下の例では、`:first-of-type` と `:last-of-type` は`section` 要素内の最初の要素と最後の要素に適用されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` は、同じタイプの兄弟の中での位置に基づいて親内の特定の要素を選択できます。例えば、以下のHTMLでは`:nth-of-type(2)` がコンテナ内の2番目の要素をターゲットにしています：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` は、親内でそのタイプの要素が1つだけの場合に選択します。これは単一のアイテムを強調したり、グループの一部でない場合に異なるスタイルを適用したりするのに役立ちます。

以下の例では、2つの`div` 要素があり、そのうち1つは単一の要素を持っています。CSSは最初のコンテナにのみ適用されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

`:first-of-type` と `:last-of-type` 疑似クラスの違いは何ですか？

## --answers--

`:first-of-type` は親内の特定のタイプの最初の要素をターゲットにし、`:last-of-type` は異なるタイプの最後の要素をターゲットにします。

### --feedback--

これらの疑似クラスが、`p` や `h1` のような特定のタグの最初と最後のインスタンスのスタイル付けにどのように役立つか考えてみてください。

---

`:first-of-type` と `:last-of-type` はどちらも要素の最初の出現をターゲットにしますが、ドキュメントの異なるセクションで作用します。

### --feedback--

これらの疑似クラスが、`p` や `h1` のような特定のタグの最初と最後のインスタンスのスタイル付けにどのように役立つか考えてみてください。

---

`:first-of-type` は親内の特定のタイプの最初の出現を選択し、`:last-of-type` は同じタイプの最後の出現を選択します。

---

`:last-of-type` はドキュメント内の最初と最後の要素にスタイルを適用し、`:last-of-type` は特定のタイプのすべての要素にスタイルを適用します。

### --feedback--

これらの疑似クラスが、`p` や `h1` のような特定のタグの最初と最後のインスタンスのスタイル付けにどのように役立つか考えてみてください。

## --video-solution--

3

## --text--

`:first-child` と `:last-child` 疑似クラスの違いは何ですか？

## --answers--

`:first-child` は親内の最初の要素をターゲットにし、`:last-child` は異なる親内の最後の要素をターゲットにします。

### --feedback--

これら2つの疑似クラスが同じ親コンテナ内の最初と最後の要素のスタイル付けにどのように役立つか考えてみてください。

---

`:first-child` は親内の最初の要素をターゲットにし、`:last-child` は同じ親内の最後の要素をターゲットにします。

---

`:first-child` は親内の特定のタイプの最初の要素をターゲットにし、`:last-child` は親内の異なるタイプの最後の要素をターゲットにします。

### --feedback--

これら2つの疑似クラスが同じ親コンテナ内の最初と最後の要素のスタイル付けにどのように役立つか考えてみてください。

---

`:first-child` は親内の最初と最後の要素をターゲットにし、`:last-child` はその他すべての要素をターゲットにします。

### --feedback--

これら2つの疑似クラスが同じ親コンテナ内の最初と最後の要素のスタイル付けにどのように役立つか考えてみてください。

## --video-solution--

2

## --text--

子要素がなく、空白のみを含む要素も含めてターゲットにできる疑似クラスはどれですか？

## --answers--

`:empty`

---

`:first-child`

### --feedback--

内容がない要素にどのようにスタイルを適用できるか考えてみてください。

---

`:last-child`

### --feedback--

内容がない要素にどのようにスタイルを適用できるか考えてみてください。

---

`:only-of-type`

### --feedback--

内容がない要素にどのようにスタイルを適用できるか考えてみてください。

## --video-solution--

1
