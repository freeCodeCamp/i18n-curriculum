---
id: 672bbeaa5afdc5a98d5ab8ff
title: ロケーション疑似クラスの例とは？
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

ロケーション疑似クラスは、現在のドキュメント内でターゲットにされているリンクや要素のスタイルを指定するために使われます。リンクが訪問済みかどうかや、要素が現在フォーカスされているかどうかに基づいてスタイルを適用する方法を提供します。

ロケーション疑似クラスの例は以下の通りです：

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

これらの疑似クラスそれぞれを詳しく見ていきましょう。

`:link` 疑似クラスは、ウェブページ上のすべての未訪問リンクをターゲットにできます。ユーザーがクリックする前にリンクのスタイルを変えたい場合に使えます。例えば、すべての未訪問リンクを青色やウェブサイトのメインカラーにしたい場合です：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

この場合、ユーザーがまだクリックしていないリンクはマゼンタ色で表示されます。ユーザーがリンクをクリックすると、`:link` スタイルは適用されなくなり、`:visited` 疑似クラスが適用されます。`:visited` 疑似クラスはユーザーがリンクをクリックした後に適用されるので、すでにクリック済みのリンクをターゲットにできます。

訪問済みリンクの状態を `purple` 色に変える例はこちらです：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

`:visited` 疑似クラスは、ユーザーが訪問済みのリンクと未訪問のリンクを区別しやすくします。

`:any-link` 疑似クラスは `:link` と `:visited` 疑似クラスの組み合わせです。つまり、訪問済みかどうかに関わらず `href` 属性を持つアンカー要素にマッチします。

`:any-link` 疑似クラスのリンク色を `crimson` に変える例はこちらです：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

`:local-link` 疑似クラスは同じドキュメントを指すリンクをターゲットにします。内部リンクと外部リンクを区別したい場合に便利です。現在、どのブラウザも `:local-link` 疑似クラスをサポートしていません。

`:target` 疑似クラスは現在のURLのフラグメント識別子にマッチする要素を選択します。例えば `#section1` のような場合です。ページ内ナビゲーションがあるページで非常に役立ちます。

以下はページ内ナビゲーションを表すHTMLの例です。CSSは `:target` 疑似クラスを使って、ユーザーがナビゲートした場所にマッチするセクションのスタイルを指定しています：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

ユーザーがナビゲーションリンクのいずれかをクリックすると、その該当セクションの背景色が緑色に変わります。

# --questions--

## --text--

現在のURLのフラグメント識別子にマッチする要素のスタイルを指定できる疑似クラスはどれですか？例えば `#section1` のようなものです。

## --answers--

`:hover`

### --feedback--

ページ内リンクで特定のセクションを強調表示する方法を考えてみてください。

---

`:focus`

### --feedback--

ページ内リンクで特定のセクションを強調表示する方法を考えてみてください。

---

`:target`

---

`:checked`

### --feedback--

ページ内リンクで特定のセクションを強調表示する方法を考えてみてください。

## --video-solution--

3

## --text--

ロケーション疑似クラスはどんな場合に特に役立ちますか？

## --answers--

兄弟関係にある要素のスタイルを指定するとき。

### --feedback--

ユーザーの操作に応じてリンクやターゲット要素のスタイルを変える方法を考えてみてください。

---

リンクが訪問済みかどうかや、要素が現在フォーカスされているかどうかに基づいてスタイルを適用するとき。

---

親要素の属性に基づいて要素のスタイルを指定するとき。

### --feedback--

ユーザーの操作に応じてリンクやターゲット要素のスタイルを変える方法を考えてみてください。

---

ウェブページのレイアウトを動的に調整するとき。

### --feedback--

ユーザーの操作に応じてリンクやターゲット要素のスタイルを変える方法を考えてみてください。

## --video-solution--

2

## --text--

同じドキュメントを指すリンクをターゲットにするために設計されたが、現在どのブラウザもサポートしていない疑似クラスはどれですか？

## --answers--

`:any-link`

### --feedback--

内部リンクと外部リンクを区別するために意図された疑似クラスですが、まだサポートされていません。

---

`:local-link`

---

`:visited`

### --feedback--

内部リンクと外部リンクを区別するために意図された疑似クラスですが、まだサポートされていません。

---

`:target`

### --feedback--

内部リンクと外部リンクを区別するために意図された疑似クラスですが、まだサポートされていません。

## --video-solution--

2
