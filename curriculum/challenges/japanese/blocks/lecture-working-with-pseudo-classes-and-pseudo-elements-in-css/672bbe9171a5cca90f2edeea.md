---
id: 672bbe9171a5cca90f2edeea
title: 要素のユーザー操作疑似クラスの例とは何ですか？
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

ユーザーフィードバックはウェブデザインの重要な要素です。たとえば、ユーザーがボタンにマウスを乗せたりリンクをクリックしたりしたときに視覚的な手がかりを受け取ることは大切です。このフィードバックは、リンクが訪問済みかどうかなど、インタラクティブな要素の状態をユーザーに理解させるのに役立ちます。

CSSのユーザー操作疑似クラスは、JavaScriptや他のプログラミング言語を使わずにこのようなフィードバックを提供できる特別なキーワードです。

これらの疑似クラスには`:hover`、`:active`、`:focus`、`:visited`などがあります。これらを使うことで、ユーザーの操作に応じて要素の見た目を変え、全体のユーザー体験を向上させることができます。

それでは、いくつかのユーザー操作疑似クラスを見て、その動作を確認しましょう。

`:active`疑似クラスは、ユーザーが要素をアクティブにしたときにスタイルを適用します。たとえば、ユーザーがボタンやリンクをクリックしたときに即座に視覚的なフィードバックを提供し、操作が認識されたことを示します。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

`:hover`疑似クラスは、ユーザーがマウスや他のポインティングデバイスで要素にホバーしたときに発動します。開発者はこれを使って、ボタンやリンク、ユーザーの注目を集めたい要素に視覚的なフィードバックを作成します。以下は、ユーザーがクリックする前にホバーするボタンの例です。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

`:focus`疑似クラスは、要素がフォーカスを得たときにスタイルを適用します。通常はキーボード操作やフォーム入力へのクリックでフォーカスが移動します。これは単なるフィードバックだけでなく、アクセシビリティにとっても重要です。キーボードを多用するユーザーがどの要素とやり取りしているかを簡単に識別できるようにします。

以下は、クリックやキーボード操作でフォーカスが当たる入力フィールドの例です。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

`:visited`疑似クラスは、ユーザーが訪問済みのリンクにスタイルを適用します。これにより、ユーザーはすでに訪れたページとまだ訪れていないページを区別しやすくなります。以下は、リンクが訪問済みのときにアンカーテキストの色をシアンに変える例です。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

`:checked`疑似クラスは、チェックボックスやラジオボタンなどのフォーム要素が選択（チェック）されたときにスタイルを適用できます。この疑似クラスは、ブラウザがデフォルトで提供するスタイルをカスタマイズしてユーザー体験を向上させるのに役立ちます。

以下は、ウェブサイトの利用規約に同意するためのチェックボックスの例です。

**注意**：この例のCSSにはまだ学習していないプロパティも含まれています。これはカスタムチェックボックスの作り方のイメージを持ってもらうためのもので、今後のレッスンやワークショップで詳しく学びます。

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

この例では、`appearance`プロパティを`none`に設定して、ブラウザがチェックボックス入力に適用するデフォルトのスタイルを削除しています。ユーザーがチェックを入れると、背景色が`green`になります。

他のアクション疑似クラスの例は以下の通りです：

- `:focus-within`：要素自身またはその子孫要素がフォーカスを持つときにスタイルを適用します。
- `:enabled`：現在有効なフォームボタンや他の要素を対象にします。
- `:disabled`：無効なフォームボタンや他の要素を対象にします。
- `:target`：URLのフラグメント（`#`記号以降の部分）がターゲットの要素にスタイルを適用します。

# --questions--

## --text--

ユーザー操作疑似クラスで何ができるようになりますか？

## --answers--

アニメーションやトランジションを可能にします。

### --feedback--

CSSだけでユーザーとどのようにやり取りできるか考えてみてください。

---

DOM構造を動的に変更できます。

### --feedback--

CSSだけでユーザーとどのようにやり取りできるか考えてみてください。

---

JavaScriptに頼らずにユーザーにフィードバックを提供できます。

---

リストの最後の要素にスタイルを適用できます。

### --feedback--

CSSだけでユーザーとどのようにやり取りできるか考えてみてください。

## --video-solution--

3

## --text--

CSSの`:checked`疑似クラスは何をしますか？

## --answers--

無効な要素を選択します。

### --feedback--

フォームがユーザーの選択をどのように扱うか考えてみてください。

---

ホバーされている要素を選択します。

### --feedback--

フォームがユーザーの選択をどのように扱うか考えてみてください。

---

チェックされたチェックボックスやラジオボタンのような要素にスタイルを適用します。

---

フォーカスを得た要素にスタイルを適用します。

### --feedback--

フォームがユーザーの選択をどのように扱うか考えてみてください。

## --video-solution--

3

## --text--

`:focus`疑似クラスは何をしますか？

## --answers--

マウスでホバーされた要素を選択します。

### --feedback--

ユーザーがキーボードでフォームを操作する方法を考えてみてください。

---

通常はキーボード操作やクリックでフォーカスを得たときにスタイルを適用します。

---

フォームが送信された後の要素を選択します。

### --feedback--

ユーザーがキーボードでフォームを操作する方法を考えてみてください。

---

無効な要素にスタイルを適用します。

### --feedback--

ユーザーがキーボードでフォームを操作する方法を考えてみてください。

## --video-solution--

2
