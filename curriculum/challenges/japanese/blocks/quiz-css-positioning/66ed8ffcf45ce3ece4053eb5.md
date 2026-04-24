---
id: 66ed8ffcf45ce3ece4053eb5
title: CSSの位置指定クイズ
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

このクイズに合格するには、以下の20問のうち少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

次のうち、`position` プロパティの有効な値ではないものはどれですか？

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

CSSの`float`プロパティの主な目的は何ですか？

#### --distractors--

フロートは、要素をページの通常のフローから外し、自動的にウェブページの右上に配置するために使われます。

---

フロートは、要素をページの通常のフローから外し、そのコンテナの上部に配置するために使われます。

---

フロートは、要素をページの通常のフローから外し、自動的にウェブページの右下に配置するために使われます。

#### --answer--

フロートは、要素をページの通常のフローから外し、そのコンテナの左側または右側に配置するために使われます。

### --question--

#### --text--

ボックス要素を左にフロートさせる例はどれですか？

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

`clear` プロパティの役割は何ですか？

#### --distractors--

要素をページの下部に移動させる必要があるかどうかを判断するために使われます。

---

要素をページから完全にクリアする必要があるかどうかを判断するために使われます。

---

要素をページの上部に固定する必要があるかどうかを判断するために使われます。

#### --answer--

フロートされたコンテンツの下に要素を移動させる必要があるかどうかを判断するために使われます。

### --question--

#### --text--

ページ上で重なっている位置指定要素の垂直の重なり順を制御するCSSプロパティはどれですか？

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

相対位置指定の正しい構文はどれですか？

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

スクロールしても動かないように、ページ上の特定の位置に要素を固定するために使うCSSプロパティはどれですか？

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

絶対位置指定は要素にどのような影響を与えますか？

#### --distractors--

絶対位置指定は、要素をフロートされたコンテンツの下に移動させる必要があるかどうかを判断するために使われます。

---

絶対位置指定は、要素を通常のドキュメントフロー内に配置するために使われます。

---

絶対位置指定は、ページ上で重なっている位置指定要素の垂直の重なり順を制御するために使われます。

#### --answer--

絶対位置指定は、要素を通常のドキュメントフローから外し、他の要素とは独立して動作させることを可能にします。

### --question--

#### --text--

絶対位置指定で使える有効なプロパティではないものはどれですか？

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

相対位置指定と絶対位置指定の主な違いは何ですか？

#### --distractors--

絶対位置指定は要素をスティッキーな位置に設定し、相対位置指定は要素を通常のドキュメントフローから外します。

---

相対位置指定は要素を固定位置に設定し、絶対位置指定は要素を通常のドキュメントフローから外します。

---

絶対位置指定は要素を通常のドキュメントフロー内に配置し、相対位置指定は要素を通常のドキュメントフローから外します。

#### --answer--

相対位置指定は要素を通常のドキュメントフロー内に配置し、絶対位置指定は要素を通常のドキュメントフローから外します。

### --question--

#### --text--

ページの左上隅にボックスを配置する例はどれですか？

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

あるポイントを超えてスクロールしたときだけ要素が特定の位置に固定される位置指定方法はどれですか？

#### --distractors--

フロート位置指定。

---

固定位置指定。

---

絶対位置指定。

#### --answer--

スティッキー位置指定。

### --question--

#### --text--

スティッキー位置指定の正しい使用例はどれですか？

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

スティッキー位置指定と固定位置指定の違いは何ですか？

#### --distractors--

スティッキー要素はテーブルレイアウトでのみ使え、固定要素はどんなCSSレイアウトでも使えます。

---

スティッキー要素は常に同じ位置に留まり、固定要素は特定のポイントに固定された後、相対要素のように振る舞います。

---

固定要素は通常の位置に相対的に配置され、スティッキー要素は特定のポイントに固定された後、相対要素のように振る舞います。

#### --answer--

固定要素は画面上の同じ位置に留まり、スティッキー要素は特定のポイントに固定された後、相対要素のように振る舞います。

### --question--

#### --text--

`clearfix` ハックはフロートを使う際にどんな問題を解決しましたか？

#### --distractors--

`clearfix` ハックは、フロートされた要素が通常のドキュメントフローから外れ、ページ上で固定位置に配置される問題を解決しました。

---

`clearfix` ハックは、フロートされた要素がモバイルやタブレットのレスポンシブレイアウトでうまく動作しない問題を解決しました。

---

`clearfix` ハックは、フロートされた要素がページから消えてしまう問題を解決しました。

#### --answer--

`clearfix` ハックは、複数のフロート要素が隣接して積み重なったときの重なりやレイアウトの崩れの問題を解決しました。

### --question--

#### --text--

`clearfix` ハックの正しい使用例はどれですか？

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

静的位置指定とは何ですか？

#### --distractors--

これは要素をページの通常のフローから外し、自動的にウェブページの右上に配置するために使われます。

---

これは要素を通常のドキュメントフローから外し、他の要素とは独立して動作させることを可能にします。

---

これはあるポイントを超えてスクロールしたときだけ要素が特定の位置に固定されることを可能にします。

#### --answer--

これはドキュメントの通常のフローです。要素は上から下、左から右へ順に配置されます。

### --question--

#### --text--

固定位置指定を使ってナビゲーションバーをページの上部に設定する例はどれですか？

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

`z-index` プロパティに使える有効な値はどれですか？

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

`position` プロパティのデフォルト値はどれですか？

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

`position` の値で、要素を通常のドキュメントフロー内に保ちながら `top` と `left` で位置調整できるものはどれですか？

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

`position: sticky;` を持つ要素は最初どのように振る舞いますか？

#### --distractors--

スクロール位置に達するまで `fixed` 要素のように振る舞います。

---

常に通常のドキュメントフローから外れています。

---

親要素内で `absolute` 要素のように振る舞います。

#### --answer--

指定されたスクロール位置に達するまで `relative` 要素のように振る舞います。

### --question--

#### --text--

`z-index` プロパティを使って `.box-two` を `.box-one` の上に表示させる正しい例はどれですか？

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

CSSで`z-index` プロパティは何に使われますか？

#### --distractors--

ページのズームレベルを設定します。

---

フレックスコンテナ内の要素の水平方向の整列を制御します。

---

要素のコンテンツとボーダーの間の間隔を定義します。

#### --answer--

重なっている位置指定要素の垂直の重なり順を制御します。

### --question--

#### --text--

`top: 10%;` を `position: fixed;` を持つ要素に適用した場合、`10%` は何に対して計算されますか？

#### --distractors--

要素自身の高さ。

---

親コンテナの高さ。

---

ビューポートの幅。

#### --answer--

ビューポートの高さ。

### --question--

#### --text--

`z-index` プロパティを使ってオーバーレイを他のコンテンツの上に配置する正しいコード例はどれですか？

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

フロートされた要素の下に要素を移動させるかどうかを制御するCSSプロパティはどれですか？

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

`position: relative;` と `bottom: 25px;` を持つ要素はどのように移動しますか？

#### --distractors--

通常位置から25px下に移動します。

---

通常位置から25px右に移動します。

---

ビューポートの下から25pxの位置に配置されます。

#### --answer--

通常位置から25px上に移動します。

### --question--

#### --text--

`z-index` プロパティはどのCSSプロパティが適用された要素にのみ影響しますか？

#### --distractors--

`float` の値が `none` 以外。

---

`display` の値が `inline-block`。

---

`background-color` が設定されている。

#### --answer--

`position` の値が `static` 以外。

### --question--

#### --text--

ヘッダーのロゴに`float: right;`を適用するとどんな効果がありますか？

#### --distractors--

ロゴは右に整列しますが、通常のドキュメントフロー内にあり、他のコンテンツの回り込みは起きません。

---

ロゴはフローから外れ、コンテナではなくブラウザのビューポートの右側に配置されます。

---

ロゴはブロックレベル要素になり、ヘッダーの幅いっぱいに広がり、他の要素を下に押し下げます。

#### --answer--

ロゴは通常のフローから外れ、コンテナの右側に配置され、他のコンテンツが回り込みます。

### --question--

#### --text--

スクロールしても要素をビューポートの上部に固定するCSSスニペットはどれですか？

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

CSSで`clear: both;`の具体的な目的は何ですか？

#### --distractors--

要素自身の`float`プロパティをキャンセルし、通常のドキュメントフローに戻します。

---

親要素から継承した`clear`プロパティを削除し、デフォルトのフロート動作を復元します。

---

右側のフロート要素のみをクリアし、左側のフロート要素はそのままにします。

#### --answer--

左右両方の前にあるフロート要素の下に要素を移動させることを保証します。

### --question--

#### --text--

次のコードで`.child`はどのように配置されますか？

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

`.parent`要素の上から10pxの位置に配置されます。`absolute`位置指定は常に直接の親に対して相対的です。

---

`absolute`プロパティがないため`z-index`の値は無効で、デフォルトの静的位置のままです。

---

ブラウザウィンドウの上から10pxの位置に配置され、ユーザーがスクロールしても固定されます。

#### --answer--

親が位置指定されていないため、初期コンテイニングブロック（例えば`<body>`）の上から10pxの位置に配置されます。

### --question--

#### --text--

次のCSSは`.box`要素にどのような影響を与えますか？

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

要素は通常のフローに残りますが、上と左から50pxインデントされ、他の要素を押しのけます。

---

要素はビューポートに固定され、ページがスクロールされても上から50px、左から50pxの位置に留まります。

---

要素は自身の開始点に対して相対的に配置され、ドキュメントフローから外れずに50px下と50px右に移動します。

#### --answer--

要素は通常のフローから外れ、最も近い位置指定された祖先の上から50px、左から50pxの位置に配置されます。

### --question--

#### --text--

次のうち、`position`の値で要素をドキュメントの通常のフローから完全に外すものはどれですか？

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

`.parent` と `.child` 要素がある場合、`.child` を `.parent` の左上から20pxの位置に正しく配置するCSSスニペットはどれですか？

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

`static` と `relative` の位置指定の違いは何ですか？

#### --distractors--

`static` は要素をドキュメントフローから外し、`relative` はフロー内に保持します。

---

`position: static;` の要素は `top` と `left` でオフセット可能ですが、`position: relative;` はできません。

---

`static` はブロックレベル要素用で、`relative` はインライン要素専用です。

#### --answer--

どちらも要素を通常のドキュメントフロー内に保持しますが、`relative` は元の位置からオフセット可能です。

### --question--

#### --text--

画像を左にフロートさせ、他のコンテンツが回り込むようにする正しいCSSスニペットはどれですか？

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

`absolute` と `fixed` の位置指定の違いは何ですか？

#### --distractors--

`absolute` はビューポートに対して相対的で、`fixed` は最も近い位置指定された祖先に対して相対的です。

---

`absolute` は要素を通常のドキュメントフローに保持し、`fixed` はフローから外します。

---

どちらもビューポートに対して位置指定されますが、`fixed` 要素はページと一緒にスクロールし、`absolute` 要素はしません。

#### --answer--

`absolute` は最も近い位置指定された祖先に対して相対的で、`fixed` はブラウザのビューポートに対して相対的です。

### --question--

#### --text--

`position` の値で、要素を通常のドキュメントフローに置き、`top` や `left` のようなオフセットプロパティの効果を無効にするものはどれですか？

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`
