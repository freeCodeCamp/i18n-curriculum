---
id: 66ed8fa2f45ce3ece4053eab
title: CSS基礎クイズ
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

クイズに合格するには、以下の20問中少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSSは何の略ですか？

#### --distractors--

Cascading Style Script

---

Concatenating Style Script

---

Castor Sage Style

#### --answer--

Cascading Style Sheets

### --question--

#### --text--

次のうち正しいCSSルールはどれですか？

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

`<meta name="viewport">`は何をしますか？

#### --distractors--

レスポンシブデザインのために外部スタイルシートをウェブページにリンクします。

---

検索エンジンがウェブページをインデックスするために使うメタデータを指定します。

---

ウェブページで使われる文字エンコーディングを指定します。

#### --answer--

異なる画面サイズでウェブページの形状とサイズを制御します。

### --question--

#### --text--

インラインCSSを使う正しい構文はどれですか？

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

内部CSSを使う場合、`style`要素はHTMLのどこに配置されますか？

#### --distractors--

`meta`要素内。

---

`script`要素内。

---

`body`要素内。

#### --answer--

`head`要素内。

### --question--

#### --text--

CSSで幅と高さを設定する正しいルールはどれですか？

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

`h1`内にある場合のみ`div`要素を正しくターゲットにするセレクターはどれですか？

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

`footer`の直下の子要素をターゲットにする正しいセレクターはどれですか？

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

`img`の次の兄弟要素をターゲットにする正しいセレクターはどれですか？

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

`img`要素に先行するすべての兄弟要素をターゲットにする正しいセレクターはどれですか？

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

ブロックレベル要素について正しい記述はどれですか？

#### --distractors--

ブロックレベル要素はデフォルトで横に積み重なります。

---

`width`と`height`のプロパティは、`display`プロパティを`inline-block`に設定しない限り通常ブロックレベル要素には適用されません。

---

ブロックレベル要素はインライン要素を内部に含めることができません。

#### --answer--

ブロックレベル要素は新しい行から始まり、コンテナの幅いっぱいに広がります。

### --question--

#### --text--

`inline-block`値を使う場合に正しい記述はどれですか？

#### --distractors--

要素は縦に積み重なり、常にコンテナの幅いっぱいに広がります。

---

要素は横に並びますが、縦のパディングやマージンは適用できません。

---

要素は幅と高さの設定を尊重しますが、他の要素を内部に含めることはできません。

#### --answer--

要素はインラインの流れを維持しつつ、幅と高さの設定を可能にします。

### --question--

#### --text--

次のセレクターのうち、最も特異性が高いのはどれですか？

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

次のセレクターのうち、最も特異性が低いのはどれですか？

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

`*`セレクターは何をしますか？

#### --distractors--

ページ上の一部の要素をターゲットにします。

---

子要素を持つ要素をターゲットにします。

---

ページ上のすべての`p`要素をターゲットにします。

#### --answer--

ページ上のすべての要素をターゲットにします。

### --question--

#### --text--

CSSで`!important`は何をしますか？

#### --distractors--

インラインスタイルにのみ排他的に適用し、外部や内部スタイルシートのスタイルを無視します。

---

同じ要素に適用された他のすべてのCSSプロパティを無効にし、その要素のスタイルに影響を与える唯一のルールにします。

---

特定のセレクターや要素グループに適用されます。

#### --answer--

そのセレクターに適用されたプロパティの他の値をすべてオーバーライドします。

### --question--

#### --text--

CSSのカスケードアルゴリズムはどのように動作しますか？

#### --distractors--

宣言の順序に基づいて要素のスタイルを決定し、他の要因は無視します。

---

書かれた順序だけに基づいてスタイルを適用し、特異性は無視します。

---

特異性を優先し、起源や関連性は無視してスタイルを適用します。

#### --answer--

特異性と宣言の順序に基づいて要素のスタイルを決定します。

### --question--

#### --text--

すべての辺に`32px`のマージンを適用するルールはどれですか？

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

上下に`24px`のパディングを適用するルールはどれですか？

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

`padding: 10px 20px 30px 40px`の場合、値の正しい順序はどれですか？

#### --distractors--

右、上、左、下。

---

上、左、下、右。

---

上、下、右、左。

#### --answer--

上、右、下、左。

## --quiz--

### --question--

#### --text--

CSSルールの主な部分は何ですか？

#### --distractors--

要素と属性

---

スタイルとシート

---

スクリプトと値

#### --answer--

セレクターと宣言ブロック

### --question--

#### --text--

正しいCSSルールの構文はどれですか？

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

デフォルトのブラウザスタイルとは何ですか？

#### --distractors--

ブラウザに関係なく同じスタイルプロパティを持つHTML要素。

---

特定のHTML要素に必ず使わなければならないスタイル。

---

さまざまなブラウザのカラーテーマ。

#### --answer--

ブラウザが自動的に適用するCSSルール。

### --question--

#### --text--

`width`プロパティのデフォルト値は何ですか？

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

`min-height`プロパティは何を指定しますか？

#### --distractors--

要素の開始高さ。

---

要素の高さ。

---

要素の最大高さ。

#### --answer--

要素の最小高さ。

### --question--

#### --text--

ユニバーサルセレクター`*`について正しい記述はどれですか？

#### --distractors--

ページ上のすべての要素をスタイルできるため、最も特異性が高い。

---

特異性のすべての部分に1を加算する。

---

異なるブラウザ間でスタイルをリセットできない。

#### --answer--

どのセレクターよりも特異性が最も低い。

### --question--

#### --text--

番号付きリストの`li`要素を正しくターゲットにするセレクターはどれですか？

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

`div`要素の段落要素をターゲットにするセレクターはどれですか？

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

`margin`はどこにスタイルプロパティを適用しますか？

#### --distractors--

要素の内側の空間。

---

コンテンツとボーダーの間。

---

要素のボーダー上。

#### --answer--

要素の外側の空間。

### --question--

#### --text--

`padding`プロパティはどこにスタイルを適用しますか？

#### --distractors--

要素のボーダーと周囲の要素の間。

---

要素の外側の空間。

---

要素のボーダー上。

#### --answer--

要素の内側の空間。

### --question--

#### --text--

ブロックレベル要素について誤っている記述はどれですか？

#### --distractors--

コンテナの幅に合わせて伸縮できます。

---

一般的なブロックレベル要素には`div`、`paragraph`、`section`があります。

---

ブロックレベル要素は新しい行から始まり、コンテナの幅いっぱいに広がります。

#### --answer--

利用可能な幅いっぱいに広がることはできません。

### --question--

#### --text--

`inline-block`値を使う場合に誤っている記述はどれですか？

#### --distractors--

`inline-block`要素はインライン要素のように振る舞います。

---

`width`と`height`のプロパティを持つことができます。

---

要素はインラインの流れを維持しつつ、`width`と`height`の設定を可能にします。

#### --answer--

インライン要素やブロックレベル要素とプロパティを共有しません。

### --question--

#### --text--

`!important`キーワードについて正しい記述はどれですか？

#### --distractors--

重要なCSSプロパティのコメントを作るために使われます。

---

CSSプロパティの構文が正しいことを確認します。

---

CSSルールの保守を容易にします。

#### --answer--

他のセレクターの特異性をオーバーライドします。

### --question--

#### --text--

クラスセレクター名の前に付く文字は何ですか？

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

インラインレベル要素について誤っている記述はどれですか？

#### --distractors--

必要な分だけのスペースを取ります。

---

新しい行から始まりません。

---

一般的なインライン要素には`span`と`img`があります。

#### --answer--

常に新しい行から始まります。

### --question--

#### --text--

内部CSSスタイルはどこでアクセスされますか？

#### --distractors--

プロジェクトに重要なスタイルなので外部共有されません。

---

プロジェクトのコアスタイルなので`styles.css`ファイルに保存され、他のウェブページがアクセスできます。

---

スタイルが1ページだけの場合、`body`要素内に保存されます。

#### --answer--

`style`要素内の`head`セクション内に記述されます。

### --question--

#### --text--

ショートハンド構文で`padding`プロパティを適用する順序は何ですか？

#### --distractors--

`top`, `bottom`, `left`, `right`

---

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

ショートハンド構文で`margin`プロパティを適用する順序は何ですか？

#### --distractors--

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

---

`top`, `bottom`, `left`, `right`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

インラインCSSスタイルは何のために使われますか？

#### --distractors--

インライン要素だけをスタイルするために使われます。

---

ブラウザのビューポートで同じ行にある要素だけをスタイルするために使われます。

---

関心の分離の問題を解決するために使われます。

#### --answer--

内部や外部のCSSを使わずに、要素内で直接スタイルを指定するために使われます。

### --question--

#### --text--

IDセレクターの前に付く記号は何ですか？

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`
