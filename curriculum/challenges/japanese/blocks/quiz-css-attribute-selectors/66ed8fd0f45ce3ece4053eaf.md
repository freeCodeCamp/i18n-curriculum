---
id: 66ed8fd0f45ce3ece4053eaf
title: CSS属性セレクター クイズ
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

このクイズに合格するには、以下の10問中少なくとも9問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS属性セレクターは何のために使われますか？

#### --distractors--

タグ名に基づいて要素にスタイルを適用するため。

---

クラス名に基づいて要素にスタイルを適用するため。

---

親要素に基づいて要素にスタイルを適用するため。

#### --answer--

属性に基づいて要素にスタイルを適用するため。

### --question--

#### --text--

次のうち、このCSSセレクターで選択されないものはどれですか？

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

どのCSSセレクターが、`p`属性が`lang`に設定されているすべての`"fr"`要素にマッチしますか？

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

どのCSSセレクターが、`a`属性を持つすべての`href`要素にマッチしますか？

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

どのCSSセレクターが、大文字のローマ数字を持つすべての番号付きリストにマッチしますか？

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

`data-lang`属性は一般的に何に使われますか？

#### --distractors--

ドキュメントの言語を指定するため。

---

ドキュメントの文字エンコーディングを定義するため。

---

親要素に基づいて要素の言語を設定するため。

#### --answer--

このカスタムデータ属性に基づいて要素にスタイルを適用するため。

### --question--

#### --text--

`img`属性が`alt`に等しい場合にのみ`"code"`要素をスタイルするには、どのCSSセレクターを使うべきですか？

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

数値の番号付けタイプを持つ番号付きリストにマッチするCSSセレクターはどれですか？

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

`a`属性と`href`属性の両方を持つ`title`要素をスタイルするには、次のうちどのCSSセレクターを使いますか？

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

レストランのウェブサイトを開発していて、`menu-item`属性を持つ`data-special`クラスのすべての要素をスタイルしたい場合、どのCSSセレクターを使いますか？

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```
