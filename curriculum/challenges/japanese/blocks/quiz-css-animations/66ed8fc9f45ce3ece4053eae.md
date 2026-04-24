---
id: 66ed8fc9f45ce3ece4053eae
title: CSSアニメーション クイズ
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

クイズに合格するには、以下の20問のうち少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

CSSの`transform`プロパティの目的は何ですか？

#### --distractors--

要素の可視性を変更するため。

---

テキストに視覚効果を適用するため。

---

要素の寸法を設定するため。

#### --answer--

要素の位置、大きさ、形状を変更するため。

### --question--

#### --text--

CSSの`animation-direction`プロパティはアニメーションにどのように影響しますか？

#### --distractors--

アニメーションを繰り返すかどうかを指定する。

---

アニメーションの継続時間を設定する。

---

アニメーションの速度を定義する。

#### --answer--

アニメーションの再生方法を定義する。

### --question--

#### --text--

アニメーションを3回実行するCSSプロパティはどれですか？

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

アニメーションを開始から終了まで一定の速度で実行するCSSのタイミング関数はどれですか？

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

CSSの`@keyframes`アットルールは何を定義しますか？

#### --distractors--

CSSグラデーションの色。

---

CSS回転の角度。

---

要素の寸法。

#### --answer--

CSSアニメーションの段階。

### --question--

#### --text--

CSSの`translateX()`関数の目的は何ですか？

#### --distractors--

要素の不透明度を変更する。

---

要素を回転させる。

---

要素を垂直方向に再配置する。

#### --answer--

要素を水平方向に再配置する。

### --question--

#### --text--

次のうち、CSSアニメーションに関する懸念事項ではないものはどれですか？

#### --distractors--

特定のユーザーに不快感や身体的な害を引き起こす場合がある。

---

ユーザーが気を散らされる場合がある。

---

過剰使用はパフォーマンス低下につながる。

#### --answer--

ユーザー体験を向上させることができる。

### --question--

#### --text--

`@keyframes`アットルールはどこに定義されていますか？

#### --distractors--

HTMLファイルの`body`要素内。

---

HTMLファイルの`head`要素内。

---

CSSクラス定義内。

#### --answer--

CSSセレクターの外側、トップレベルにある。

### --question--

#### --text--

アニメーションを一時停止および再開できるCSSプロパティはどれですか？

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

CSSの`animation-name`プロパティにはどの値を代入すべきですか？

#### --distractors--

アニメーションの継続時間（秒単位）。

---

アニメーションに使うタイミング関数。

---

アニメーション開始前の遅延時間（秒単位）。

#### --answer--

`@keyframes`で定義されたアニメーションの名前。

### --question--

#### --text--

この`@keyframe`アットルールはアニメーション要素に何をしますか？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

要素を時計回りに90度回転させる。

---

要素の色を青に変える。

---

要素を初期サイズの50%に縮小し、その後100%に戻す。

#### --answer--

要素を開始点から水平方向に-50pxから100pxへ移動させる。

### --question--

#### --text--

アニメーションの進行を時間経過で定義するCSSプロパティはどれですか？

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

アニメーションの完了に5秒かかることを指定するCSSプロパティはどれですか？

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

次のCSS `50%`アットルール内の`@keyframe`は何を表していますか？

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

アニメーションの開始点。

---

アニメーションの終了点。

---

アニメーションの速度。

#### --answer--

アニメーションの中間点。

### --question--

#### --text--

`transform: translateX(200px);`プロパティを適用すると何が起こりますか？

#### --distractors--

要素が左に200px移動する。

---

要素が下に200px移動する。

---

要素が時計回りに200度回転する。

#### --answer--

要素が右に200px移動する。

### --question--

#### --text--

`animation-iteration-count`が`infinite`に設定されている場合、アニメーションはどのように動作しますか？

#### --distractors--

1回だけ実行して停止する。

---

最初の繰り返し後に一時停止する。

---

3回の繰り返し後に停止する。

#### --answer--

無限に繰り返す。

### --question--

#### --text--

アニメーションの開始点を指定する`@keyframes`セレクターはどれですか？

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

`animation`の省略形CSSプロパティで指定できるのはどのプロパティですか？

#### --distractors--

アニメーションの名前のみ。

---

アニメーションの名前と継続時間。

---

アニメーションの名前、継続時間、遅延時間。

#### --answer--

すべてのアニメーションプロパティ。

### --question--

#### --text--

`@keyframes`アットルールで定義されたアニメーションを適用するCSSプロパティはどれですか？

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

アニメーション開始前の時間を設定できるCSSプロパティはどれですか？

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

CSSの`animation-delay`プロパティは何をしますか？

#### --distractors--

アニメーションの継続時間を設定する。

---

タイミング関数を指定する。

---

アニメーションの方向を定義する。

#### --answer--

アニメーションの開始を遅らせる。

### --question--

#### --text--

アニメーションの前後で要素のスタイルを指定するプロパティはどれですか？

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

なぜCSSアニメーションは適度に使うべきですか？

#### --distractors--

多すぎるとスタイルが壊れたり、ブラウザ間で不一致が起こる。

---

多すぎると検索エンジンのランキングが下がる。

---

多すぎるとサーバーが自動的にクラッシュし、セキュリティリスクが増える。

#### --answer--

多すぎるとパフォーマンスが悪化し、特定のアクセシビリティニーズを持つユーザーにとって気が散ったり問題になる場合がある。

### --question--

#### --text--

アニメーションが前方、後方、または交互に再生されるかを決めるプロパティはどれですか？

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

ユーザーが最小限のアニメーションや動きの効果を要求しているかを検出するCSSメディアクエリはどれですか？

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

`animation`が繰り返される回数を設定するプロパティはどれですか？

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

アニメーションの期間中のさまざまなポイントでの段階とスタイルを定義するCSSルールはどれですか？

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

`reduced‑motion`メディアクエリ内で、トランジションを無効にする宣言はどれですか？

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

`animation-play-state`プロパティで何ができますか？

#### --distractors--

アニメーションの繰り返し回数を設定する。

---

アニメーションの完了にかかる時間を指定する。

---

アニメーションの再生方向を決める。

#### --answer--

アニメーションを一時停止および再開する。

### --question--

#### --text--

アニメーションを扱う際の良い実践はどれですか？

#### --distractors--

注意を引くためにできるだけ多くの点滅色や急速な動きを使う。

---

異なるデバイスや画面サイズでアニメーションをテストしない。

---

ユーザーが気づくようにアニメーションをできるだけ長く続ける。

#### --answer--

発作や不快感を引き起こさないように、1秒間に3回以上点滅するコンテンツは避ける。

### --question--

#### --text--

なぜCSSルールで`!important`宣言が使われるのですか？

#### --distractors--

他のメディアクエリの読み込みを防ぐため。

---

スタイルを最初の子要素に限定するため。

---

CSSのデバッグを容易にするため。

#### --answer--

これらのルールが他のスタイルより優先されるようにするため。

### --question--

#### --text--

CSSで`animation-iteration-count: 1 !important;`は何を保証しますか？

#### --distractors--

アニメーションが一時停止されること。

---

アニメーションが無限に実行されること。

---

アニメーションが各サイクルで方向を逆にすること。

#### --answer--

ループするアニメーションが1回だけ再生されること。

### --question--

#### --text--

アニメーションの完了にかかる時間を指定するCSSプロパティはどれですか？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

`animation`の省略形に含まれないプロパティはどれですか？

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

`@keyframes`ルールは何を定義しますか？

#### --distractors--

アニメーションのタイミング関数。

---

要素のデフォルト状態。

---

アニメーションのメディアクエリ。

#### --answer--

アニメーションの異なるポイントでのスタイルのシーケンス。

### --question--

#### --text--

この`@keyframe`アットルールはアニメーション要素に何をしますか？

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

要素を0%から100%に拡大する。

---

要素を左から右に移動させる。

---

テキストの色を黒に変える。

#### --answer--

要素の透明度を徐々に下げてフェードインさせる。

### --question--

#### --text--

キーフレームルール内で`100%`は何を表しますか？

#### --distractors--

アニメーションの開始。

---

中間点。

---

イージング関数。

#### --answer--

アニメーションの終了。

### --question--

#### --text--

`animation`の進行速度を制御するプロパティはどれですか？

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

アクセシビリティを維持しながらアニメーションを実装する際に開発者が考慮すべきことは何ですか？

#### --distractors--

すべてのアニメーションを完全にJavaScriptに依存させる。

---

頻繁で強烈なアニメーションを追加してインパクトを与える。

---

太字で速く驚きを与える効果のみを含める。

#### --answer--

控えめで意図的な効果を使い、ユーザーの好みを尊重し、ユーザーが制御できるようにする。

### --question--

#### --text--

要素を左からスライドインさせる正しい構文はどれですか？

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
