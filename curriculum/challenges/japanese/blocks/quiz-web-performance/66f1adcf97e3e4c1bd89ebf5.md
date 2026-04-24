---
id: 66f1adcf97e3e4c1bd89ebf5
title: ウェブパフォーマンスクイズ
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

このクイズに合格するには、以下の20問のうち少なくとも18問に正しく答える必要があります。

# --quizzes--

## --quiz--

### --question--

#### --text--

ウェブ開発における実際のパフォーマンスと知覚されるパフォーマンスの主な違いは何ですか？

#### --distractors--

実際のパフォーマンスはブラウザが行うHTTPリクエストの数に焦点を当て、知覚されるパフォーマンスはCSSのレンダリング速度に基づいています。

---

実際のパフォーマンスは読み込み時間のみで、知覚されるパフォーマンスはアニメーションや読み込みインジケーターなどの視覚要素に関係しています。

---

実際のパフォーマンスはサーバー側の処理時間のみを含み、知覚されるパフォーマンスは完全にクライアント側です。

#### --answer--

実際のパフォーマンスはコンテンツがどれだけ速く読み込まれるかで、知覚されるパフォーマンスはユーザーがページの読み込みをどれだけ速く感じるかです。

### --question--

#### --text--

ウェブページ上でコンテンツがどれだけ速く表示されるかを最もよく示す指標はどれですか？

#### --distractors--

Time to Interactive (TTI)

---

Page Load Time (PLT)

---

Last Contentful Paint (LCP)

#### --answer--

First Contentful Paint (FCP)

### --question--

#### --text--

ページの読み込み時間を短縮する方法でないものはどれですか？

#### --distractors--

メディア資産の最適化。

---

ブラウザキャッシュの活用。

---

ファイルの縮小と圧縮。

#### --answer--

JPEGファイルのみを使用すること。

### --question--

#### --text--

「time to usable」とは何ですか？

#### --distractors--

ユーザーがページをリクエストしてからフォームに入力できるまでの間隔です。

---

すべての画像とアニメーションが利用可能かつ使用可能になるまでの時間です。

---

すべてのCSSとJavaScriptアニメーションが画面に読み込まれるまでの時間です。

#### --answer--

ユーザーがページをリクエストしてから意味のある操作ができるまでの間隔です。

### --question--

#### --text--

First Contentful Paint (FCP) は何を測定しますか？

#### --distractors--

ページ上のすべてのJavaScriptファイルの総読み込み時間。

---

ユーザーがページ上の要素と操作できるまでの遅延。

---

すべてのスタイルシートが完全に読み込まれ適用されるまでの時間。

#### --answer--

最初のテキストまたは画像がレンダリングされるまでの時間。

### --question--

#### --text--

一般的に使われるパフォーマンス測定ツールでないものはどれですか？

#### --distractors--

Chrome DevTools

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

Performance Web APIは何に使われますか？

#### --distractors--

CSSアニメーションのパフォーマンス測定にのみ使われます。

---

ウェブページのパフォーマンスを自動的に高速化します。

---

ユーザーにパフォーマンス指標の詳細なテーブルを提供します。

#### --answer--

開発者がコードから直接ウェブページの読み込みと応答の効率を追跡できるようにします。

### --question--

#### --text--

知覚されるパフォーマンスを効果的に向上させる戦略はどれですか？

#### --distractors--

全体の視覚品質を向上させるために大きな画像を使う。

---

コンテンツのレンダリングを優先するためにCSSスタイルを最後に読み込む。

---

必要なときに備えてすべてのスクリプトを事前読み込みする。

#### --answer--

コンテンツ取得中にローディングスケルトンを表示する。

### --question--

#### --text--

ブラウザとサーバー間のリクエストが往復する時間を指すのはどれですか？

#### --distractors--

レンダリング

---

INP

---

CDN

#### --answer--

レイテンシー

### --question--

#### --text--

CSSの最適化はページパフォーマンスにどのように影響しますか？

#### --distractors--

ブラウザが不要なJavaScriptを実行するのを防ぎます。

---

画像のファイルサイズを減らします。

---

画像の遅延読み込みの必要をなくします。

#### --answer--

HTMLの解析を速くします。

### --question--

#### --text--

重いJavaScriptタスクによってメインスレッドがどれだけブロックされているかを示すのはどれですか？

#### --distractors--

ソース順

---

直帰率

---

WebPageTest

#### --answer--

Total Blocking Time

### --question--

#### --text--

Interaction to Next Paint (INP) を測定するとき、何が評価されていますか？

#### --distractors--

ユーザーの操作後にページがすべてのスタイルと画像を完全に読み込むまでの時間。

---

ユーザーの操作とブラウザが次のユーザー入力を登録できるまでの遅延。

---

JavaScriptの実行とブラウザがページ内容を更新する間の間隔。

#### --answer--

ユーザーの操作とブラウザが次のフレームをレンダリングして応答するまでの時間。

### --question--

#### --text--

サイトの各部分が読み込まれるまでの時間をミリ秒単位で高精度に測定できるAPIはどれですか？

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

DNSルックアップから`DOMContentLoaded`までのページ読み込みの各段階を詳細に示すAPIはどれですか？

#### --distractors--

Permit Timing API

---

Performance Text API

---

Perform Timing API

#### --answer--

Performance Timing API

### --question--

#### --text--

レイアウトシフト、長時間タスク、ユーザー操作などのパフォーマンスイベントを監視するAPIはどれですか？

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

画像の遅延読み込みはページパフォーマンスをどのように向上させますか？

#### --distractors--

すべての画像を即座に読み込んでユーザー体験を向上させます。

---

画像ファイルのサイズを減らして読み込みを速くします。

---

画像を事前に読み込んで読み込み遅延を防ぎます。

#### --answer--

重要でない画像は表示範囲に入るまで読み込みを遅らせます。

### --question--

#### --text--

コードスプリッティングとは何ですか？

#### --distractors--

Reactコードを重要なタスクのみを実行するモジュールに分割すること。

---

HTMLコードを重要でないタスクのみを実行するモジュールに分割すること。

---

CSSコードを重要なタスクと重要でないタスクに分割すること。

#### --answer--

JavaScriptコードを重要なタスクと重要でないタスクを実行するモジュールに分割すること。

### --question--

#### --text--

画像を遅延読み込みする正しい方法はどれですか？

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

INPを改善する方法でないものはどれですか？

#### --distractors--

長いJavaScriptタスクを分割してメインスレッドの作業を減らす。

---

イベントハンドラの最適化。

---

重い資産の遅延読み込みまたは先送り。

#### --answer--

PNGとJPEG画像のみを使用すること。

### --question--

#### --text--

なぜエネルギー効率はウェブパフォーマンスの重要な側面なのですか？

#### --distractors--

ウェブページの全体的な視覚的魅力を高めるからです。

---

ウェブページで使用するJavaScriptの量を最小限にするからです。

---

必要なCSSファイルの数を減らし、CSSの実行を速くするからです。

#### --answer--

ハードウェアへの負荷を減らし、エネルギーを節約して持続可能性を向上させるからです。
