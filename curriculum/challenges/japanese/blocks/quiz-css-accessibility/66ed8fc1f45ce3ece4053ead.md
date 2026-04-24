---
id: 66ed8fc1f45ce3ece4053ead
title: CSSアクセシビリティクイズ
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

クイズに合格するには、以下の10問中少なくとも9問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

なぜウェブページで良い色のコントラストが必要なのでしょうか？

#### --distractors--

ページをより鮮やかにするため。

---

検索エンジン最適化（SEO）の要件を満たすため。

---

ページの重要な要素を目立たせるため。

#### --answer--

ページの内容をアクセシブルで読みやすくするため。

### --question--

#### --text--

背景色と前景色を入力してコントラスト比をチェックできるツールはどれですか？

#### --distractors--

TPGi Colour Contrast Analyzer

---

Figma

---

Canva

#### --answer--

WebAIM's Color Contrast Checker

### --question--

#### --text--

画面に表示されているコンテンツから背景色と前景色を選択し、コントラスト比をチェックできるツールはどれですか？

#### --distractors--

Figma

---

Canva

---

WebAIM's Color Contrast Checker

#### --answer--

TPGi Colour Contrast Analyzer

### --question--

#### --text--

なぜ`display: none`と`visibility: hidden`を使ってコンテンツを視覚的に隠してはいけないのでしょうか？

#### --distractors--

これらの方法はスクリーンリーダーなどの支援技術だけが隠されたコンテンツにアクセスできるようにします。

---

これらの方法はユーザーがマウスをコンテンツに移動させるまでコンテンツを隠します。

---

これらの方法は一部のブラウザで動作しません。

#### --answer--

これらの方法はアクセシビリティツリーからコンテンツを削除し、スクリーンリーダーが隠されたコンテンツにアクセスできなくします。

### --question--

#### --text--

アクセシビリティツリーとは何ですか？

#### --distractors--

ウェブページのレイアウトの視覚的な表現。

---

スクリーンリーダーがウェブページのテキスト内容を読み上げるために使う構造。

---

DOMツリーのコピー。

#### --answer--

スクリーンリーダーがウェブページの内容を解釈し操作するために使う構造。

### --question--

#### --text--

次のうち、画像の最小幅を`400px`に設定しつつ、ビューポート幅が`1000px`を超えた場合に幅が広がるようにするものはどれですか？

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

次のうち、スムーズなスクロール動作を可能にする`scroll-behavior`の値はどれですか？

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

ユーザーのアニメーションの好みを検出するために使われる機能はどれですか？

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

`placeholder`要素の`input`属性に関するアクセシビリティの問題はどれですか？

#### --distractors--

プレースホルダーテキストがスクリーンリーダーによる入力ラベルの読み上げを妨げる。

---

プレースホルダーテキストがスクリーンリーダーによる入力値の読み上げを妨げる。

---

プレースホルダーテキストが小さすぎて読みにくい。

#### --answer--

プレースホルダーテキストが実際の入力値と混同される可能性がある。

### --question--

#### --text--

`hidden`属性は何をしますか？

#### --distractors--

コンテンツを隠し、ホバー時に表示する。

---

アクセシビリティツリーからのみコンテンツを隠す。

---

視覚的にコンテンツを隠すが、アクセシビリティツリーには存在する。

#### --answer--

視覚的にもアクセシビリティツリーからもコンテンツを隠す。
