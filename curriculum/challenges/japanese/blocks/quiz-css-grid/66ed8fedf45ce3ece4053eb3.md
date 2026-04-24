---
id: 66ed8fedf45ce3ece4053eb3
title: CSS Grid クイズ
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

このクイズに合格するには、以下の20問のうち少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSS Gridとは何ですか？

#### --distractors--

ウェブサイト上でテーブルを表示するための方法。

---

画像をタイル状に並べるための方法。

---

HTML要素の周りにアウトラインを表示する方法。

#### --answer--

HTMLドキュメントのための二次元レイアウト。

### --question--

#### --text--

グリッドコンテナを作成する正しい方法はどれですか？

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

`grid-template-columns` プロパティは何をしますか？

#### --distractors--

グリッドコンテナに対して2列3行を定義する。

---

グリッドレイアウトのすべての列を固定長に設定する。

---

2列のグリッドレイアウトコンテナを作成する。

#### --answer--

グリッドレイアウトの列数を定義する。

### --question--

#### --text--

`grid-template-rows` プロパティは何をしますか？

#### --distractors--

グリッドアイテムのサイズと位置を指定する。

---

新しいグリッド行を作成するテンプレートを作る。

---

グリッドコンテナ内のデフォルトの行サイズを指定する。

#### --answer--

グリッドレイアウトの各行の数と高さを指定する。

### --question--

#### --text--

`minmax()` 関数は何をしますか？

#### --distractors--

利用可能なスペースに応じて最初と2番目の値を切り替える。

---

2つの入力の平均を返す。

---

ブラウザの全画面モードで要素の最小サイズを設定する。

#### --answer--

トラックの最小サイズと最大サイズを設定する。

### --question--

#### --text--

`column-gap` と `row-gap` プロパティの省略形は何ですか？

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

暗黙のグリッドと明示的なグリッドの違いは何ですか？

#### --distractors--

暗黙のグリッドは `grid-template-columns` プロパティを使い、明示的なグリッドは `grid-template-rows` プロパティを使う。

---

明示的なグリッドは `grid-template-columns` プロパティを使い、暗黙のグリッドは `grid-template-rows` プロパティを使う。

---

暗黙のグリッドは `grid-template-columns` または `grid-template-rows` プロパティで列を作成し、明示的なグリッドでは行と列が自動的に作成される。

#### --answer--

明示的なグリッドは `grid-template-columns` または `grid-template-rows` プロパティで列を作成し、暗黙のグリッドでは行と列が自動的に作成される。

### --question--

#### --text--

グリッドコンテナ内のスペースの分数を表す単位はどれですか？

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

グリッドラインとは何ですか？

#### --distractors--

行と列の省略形。

---

グリッド要素のアウトライン。

---

グリッドの列と行が作成される線。

#### --answer--

各グリッドアイテムが始まりと終わりを持つ線。

### --question--

#### --text--

`grid-column` プロパティは何をしますか？

#### --distractors--

適用された要素の子として新しいグリッド要素を追加する。

---

グリッドアイテム内のテキストを垂直方向に整列させる。

---

グリッドコンテナに2列を設定する。

#### --answer--

グリッドアイテムがどのグリッドラインで始まり、終わるかを指定する。

### --question--

#### --text--

幅が等しい4列を作成するにはどうしますか？

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

`grid-template-areas` プロパティは何をしますか？

#### --distractors--

グリッドコンテナ内のアイテムがどのラインで始まるかを指定する。

---

コンテナ内のトラック間のギャップを作成する。

---

トラックリスト内のセクションを繰り返すために使う。

#### --answer--

グリッド上で位置指定するアイテムに名前を付けるために使う。

### --question--

#### --text--

`grid-auto-flow` プロパティは何をしますか？

#### --distractors--

グリッドアイテムの表示順序を制御する。

---

グリッド要素間の間隔を調整する。

---

要素を自動的にグリッドに合わせる。

#### --answer--

自動配置された要素がグリッドに挿入される方法を制御する。

### --question--

#### --text--

`grid-template-areas` プロパティを使う正しい方法はどれですか？

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

`grid-auto-flow` プロパティを使う正しい方法はどれですか？

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

次のうち有効なグリッドプロパティでないものはどれですか？

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

グリッド要素内のアイテムを中央に配置するために使えるプロパティはどれですか？

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

`grid-auto-columns` プロパティで使える正しい値はどれですか？

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

グリッドトラックとは何ですか？

#### --distractors--

行と列の省略形。

---

グリッドアイテムの動きをアニメーションできる線。

---

各グリッドアイテムが始まりと終わりを持つ線。

#### --answer--

隣接する2つのグリッドライン間のスペース。

### --question--

#### --text--

`minmax()` 関数を使う正しい方法はどれですか？

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

`grid-template-areas` で定義されたレイアウト内でグリッドアイテムを配置するにはどうしますか？

#### --distractors--

`grid-template-rows` と `grid-template-columns` を使ってアイテムのサイズと位置を直接定義する。

---

`grid-area` プロパティを使い、行と列の開始と終了位置を指定する。

---

`grid-area` と明示的なピクセル座標の両方を設定する。

#### --answer--

アイテムの `grid-area` プロパティに名前付きエリアを割り当てる。

### --question--

#### --text--

`grid-auto-rows` プロパティは何を制御しますか？

#### --distractors--

明示的に定義された行の高さ。

---

グリッド列の最大幅。

---

行間の間隔。

#### --answer--

暗黙的に作成された行のサイズ。

### --question--

#### --text--

グリッドアイテムを複数行にまたがらせるにはどのプロパティを使いますか？

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

明示的なグリッドを定義するものは何ですか？

#### --distractors--

コンテンツに合わせて自動的に作成されたトラック。

---

`fr` 単位で定義されたトラック。

---

`grid-auto-flow` で追加されたトラック。

#### --answer--

`grid-template-columns` または `grid-template-rows` で明示的に設定されたトラック。

### --question--

#### --text--

`grid-auto-flow` のどの値が新しいアイテムを最初に列に埋めるようにしますか？

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

`grid-template-areas` の目的は何ですか？

#### --distractors--

暗黙のトラックを自動生成するため。

---

`fr` 単位を置き換えるため。

---

`z-index` の値を設定するため。

#### --answer--

名前付きグリッドエリアにアイテムを視覚的にマッピングするため。

### --question--

#### --text--

グリッドアイテムを列ライン2で開始し、列ライン4で終了させるにはどうしますか？

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

`grid-template-columns: 1fr 2fr 1fr` の効果は何ですか？

#### --distractors--

幅が等しい3列を作成する。

---

中央の列を他の列の3倍の幅にする。

---

すべての列を正確に `1fr` の幅にする。

#### --answer--

中央の列が両側の2倍の幅の3列を作成する。

### --question--

#### --text--

3つの等しい列と `20px` のギャップを持つグリッドを作成するにはどうしますか？

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

`repeat(3, minmax(100px, 1fr))` は何を作成しますか？

#### --distractors--

`100px` 以下に縮小できない3列。

---

固定幅 `100px` の3列。

---

最大高さ `1fr` の3行。

#### --answer--

比例的に成長しつつ `100px` 以下に縮小しない3列。

### --question--

#### --text--

暗黙のグリッドについて正しい説明はどれですか？

#### --distractors--

暗黙のグリッドは `gap` プロパティを無視する。

---

暗黙のトラックは `grid-template-areas` で定義する必要がある。

---

暗黙のトラックは `grid-auto-flow` プロパティでしか作成できない。

#### --answer--

コンテンツが明示的なトラックに収まらない場合に暗黙のトラックが作成される。

### --question--

#### --text--

CSS Gridで `place-items` プロパティは何をしますか？

#### --distractors--

利用可能なスペースに基づいてグリッドアイテムのサイズを自動設定する。

---

グリッドテンプレートの列と行の定義を制御する。

---

コンテナ内のグリッドアイテムの順序を調整する。

#### --answer--

ブロック軸とインライン軸の両方でグリッドアイテムの整列を省略形で指定する。

### --question--

#### --text--

このCSSは何を実現しますか？

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

コンテナをオーバーフローさせる固定幅 `150px` の列を作成する。

---

内容に関係なく正確に `1fr` 幅の列を作成する。

---

利用可能な幅 `150px` ごとに最大1列を作成する。

#### --answer--

少なくとも `150px` の柔軟な列を作成し、スペースが限られると縮小する。

### --question--

#### --text--

非対称のグリッドレイアウトを作成するにはどうしますか？

#### --distractors--

`fr` 単位だけを使う。

---

`grid-template-columns` で異なる長さの単位を混ぜる。

---

`grid-asymmetric: true` を設定する。

#### --answer--

各トラックに異なるサイズを定義する。

### --question--

#### --text--

`grid-column-start: 2` はグリッドアイテムに何をしますか？

#### --distractors--

2列にまたがらせる。

---

2ピクセルオフセットする。

---

2番目の垂直グリッドラインから配置する。

#### --answer--

2番目の列ラインから開始させる。

### --question--

#### --text--

グリッドトラックのオーバーフロー動作を制御するにはどのプロパティを使いますか？

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

次のコードの結果はどうなりますか？

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

コンテナは幅が等しい3列と高さ `150px` の2行を持つ。

---

コンテナは幅 `100px` の3列と高さ `150px` の2行を持つ。

---

コンテナは高さ `1fr` の2行を持つ。

#### --answer--

コンテナは幅100px、`1fr`、`2fr` の3列と高さが1つは自動、もう1つは `150px` の2行を持つ。

### --question--

#### --text--

グリッドアイテムを利用可能なすべての行にまたがらせるにはどうしますか？

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

グリッドアイテムのブロック軸方向の整列を制御するプロパティはどれですか？

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

グリッドの変更に関係なくグリッドアイテムを最初の列に固定するにはどうしますか？

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
