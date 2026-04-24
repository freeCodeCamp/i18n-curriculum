---
id: 672bbec3b86dbdaa07a5a5be
title: 関数型疑似クラスの例とは何ですか？
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

関数型疑似クラスは、より複雑な条件や関係に基づいて要素を選択できるようにします。状態に基づいて要素を対象とする通常の疑似クラスとは異なり、例えば `:hover`、`:focus`、関数型疑似クラスは丸括弧内に引数を受け取るため、「関数型疑似クラス」と呼ばれます。

関数型疑似クラスの例は以下の通りです：

- `:is()`
- `:where()`
- `:has()`
- `:not()`

これらの関数型疑似クラスそれぞれを例とともに詳しく見ていきましょう。

`:is()` 疑似クラスは、いくつかの特徴を共有するがすべてではない要素のグループにスタイルを適用したい場合に便利です。例えば、ウェブサイト上の異なる種類のボタン、`button` 要素、ボタンとしてスタイル付けされたリンク、`input` 要素でタイプが `submit` と `reset` のものなどをスタイル付けしたい場合です。以下はそれを表す例です。`:is()` 関数がなければ、次のような複雑なセレクターを書く必要があります：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

`:is()` 関数を使えば、より簡潔で理解しやすいセレクターを書くことができます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

`:where()` 疑似クラスは `:is()` と似ていますが、セレクターの特異性を高めません。これにより、他のルールの特異性に影響を与えずにスタイルを適用するのに最適です。

例えば、`:where()` 関数を使って見出し要素にゼロの `margin` と `padding` を適用できます。これにより、リセットが後で適用するより特異性の高いスタイルに干渉しません。以下はその例です：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

子要素の状態に基づいて親要素をスタイル付けすることは、`:has()` 疑似クラスが導入されるまでは難しかったです。これにより、子要素の存在や状態に基づいて親要素にスタイルを適用できます。

例えば、以下のCSSは `article` 要素の中に `h2` がある場合にのみ適用されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

`:not()` 疑似クラスは、1つまたは複数の特定の例外を除外して要素のグループにスタイルを適用したい場合に最適です。以下のCSSでは、プライマリーボタンでないボタンすべてにグレーの背景が適用されます：

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

`:is()` のように動作しますが、セレクターの特異性を増やさない疑似クラスはどれですか？

## --answers--

`:not()`

### --feedback--

この疑似クラスは広範囲にわたる、影響の少ないスタイルを適用するのに最適です。

---

`:has()`

### --feedback--

この疑似クラスは広範囲にわたる、影響の少ないスタイルを適用するのに最適です。

---

`:where()`

---

`:empty`

### --feedback--

この疑似クラスは広範囲にわたる、影響の少ないスタイルを適用するのに最適です。

## --video-solution--

3

## --text--

次のうち関数型疑似クラスでないものはどれですか？

## --answers--

`:is()`

### --feedback--

関数型疑似クラスは丸括弧を使い、その中に引数を受け取ります。

---

`:first-child`

---

`:has()`

### --feedback--

関数型疑似クラスは丸括弧を使い、その中に引数を受け取ります。

---

`:where()`

### --feedback--

関数型疑似クラスは丸括弧を使い、その中に引数を受け取ります。

## --video-solution--

2

## --text--

1つか2つの例外を除いて要素のグループにスタイルを適用したい場合に最適な疑似クラスはどれですか？

## --answers--

`:has()`

### --feedback--

特定の要素をスタイル適用から除外する方法を考えてみてください。

---

`:is()`

### --feedback--

特定の要素をスタイル適用から除外する方法を考えてみてください。

---

`:not()`

---

`:where()`

### --feedback--

特定の要素をスタイル適用から除外する方法を考えてみてください。

## --video-solution--

3
