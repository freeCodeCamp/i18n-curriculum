---
id: 66f1aeb60b11aec5abe83c2e
title: CSSライブラリとフレームワークのクイズ
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

このクイズに合格するには、以下の10問中少なくとも9問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSSフレームワークとは何ですか？

#### --distractors--

CSSのエラーを修正するツール。

---

CSSファイルをリントするツール。

---

CSSファイルのフォーマッター。

#### --answer--

CSSスタイルのためのライブラリ。

### --question--

#### --text--

次のうち、人気のあるユーティリティファーストのCSSフレームワークはどれですか？

#### --distractors--

テンプレートCSS

---

ローディングCSS

---

ミニマルCSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

CSSフレームワークの欠点は何ですか？

#### --distractors--

コンポーネントが少なすぎる。

---

カスタマイズオプションがない。

---

ブラウザサポートが向上する。

#### --answer--

CSSファイルが肥大化する可能性がある。

### --question--

#### --text--

SCSSは何の略ですか？

#### --distractors--

スーパー・カスケーディング・スタイル・シート。

---

構造化されたCSS。

---

シンプルなCSS。

#### --answer--

サッシーCSS。

### --question--

#### --text--

次のうち、Sassの機能はどれですか？

#### --distractors--

コメント

---

CSSのリント。

---

インラインCSS。

#### --answer--

ミックスイン

### --question--

#### --text--

Tailwind CSSでユーティリティクラスを使う正しい方法はどれですか？

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---

```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--

```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

CSSフレームワークにはどの2種類がありますか？

#### --distractors--

タブレットファーストCSSフレームワークとコンポーネントベースCSSフレームワーク。

---

ユーティリティファーストCSSフレームワークとレイジーローディングCSSフレームワーク。

---

ミニマルCSSフレームワークとユーティリティファーストCSSフレームワーク。

#### --answer--

ユーティリティファーストCSSフレームワークとコンポーネントベースCSSフレームワーク。

### --question--

#### --text--

SCSSのファイル拡張子は何ですか？

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

SCSSで変数を定義する正しい方法はどれですか？

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

ミックスインを定義する正しい方法はどれですか？

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```
