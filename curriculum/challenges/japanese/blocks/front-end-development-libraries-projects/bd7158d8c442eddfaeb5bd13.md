---
id: bd7158d8c442eddfaeb5bd13
title: ランダム引用マシンを作成する
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**注意:** **React 18 はこのプロジェクトのテストと既知の互換性問題があります（[issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)を参照してください）**

**目的:** 次のように機能的に似たアプリを作成してください：<a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>。

以下のユーザーストーリーを満たし、すべてのテストを通過させてください。必要なライブラリやAPIは自由に使ってください。自分なりのスタイルを加えてください。

HTML、JavaScript、CSS、ブートストラップ、SASS、React、Redux、jQueryのいずれかまたは組み合わせを使ってこのプロジェクトを完成させてください。フロントエンドフレームワーク（例えばReact）を使うことをお勧めします。このセクションはフロントエンドフレームワークの学習が目的だからです。上記にない追加技術の使用は推奨されず、使用は自己責任となります。AngularやVueなど他のフロントエンドフレームワークのサポートも検討していますが、現時点では対応していません。このプロジェクトで推奨されている技術スタックを使った問題報告はすべて受け付け、修正を試みます。楽しくコーディングしましょう！

**ユーザーストーリー #1:** `id="quote-box"`に対応するラッパー要素が見えます。

**ユーザーストーリー #2:** `#quote-box`の中に`id="text"`に対応する要素が見えます。

**ユーザーストーリー #3:** `#quote-box`の中に`id="author"`に対応する要素が見えます。

**ユーザーストーリー #4:** `#quote-box`の中に`id="new-quote"`に対応するクリック可能な要素が見えます。

**ユーザーストーリー #5:** `#quote-box`の中に`a`に対応するクリック可能な`id="tweet-quote"`要素が見えます。

**ユーザーストーリー #6:** 最初の読み込み時に、引用マシンは`id="text"`を持つ要素にランダムな引用を表示します。

**ユーザーストーリー #7:** 最初の読み込み時に、引用マシンは`id="author"`を持つ要素にランダムな引用の著者を表示します。

**ユーザーストーリー #8:** `#new-quote`ボタンがクリックされると、引用マシンは新しい引用を取得して`#text`要素に表示します。

**ユーザーストーリー #9:** `#new-quote`ボタンがクリックされると、引用マシンは新しい引用の著者を取得して`#author`要素に表示します。

**ユーザーストーリー #10:** `#tweet-quote` `a`要素をクリックすると、現在の引用をツイートできます。この`a`要素は、現在の引用をツイートするために`"twitter.com/intent/tweet"`パスを`href`属性に含める必要があります。

**ユーザーストーリー #11:** `#quote-box`ラッパー要素は水平方向に中央揃えにしてください。ブラウザのズームレベルを100％、ページを最大化した状態でテストを実行してください。

<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">このCodePenテンプレート</a>を使ってプロジェクトを作成し、`Save`をクリックして自分のペンを作成できます。別の環境を使う場合は、`<script>`ファイルのbody内に`index.html`タグを入れてください：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成したら、すべてのテストに合格した動作中のプロジェクトのURLを提出してください。

**注意:** Twitterはiframe内でのリンク読み込みを許可していません。ツイートが読み込まれない場合は、`target="_blank"`要素に`target="_top"`または`#tweet-quote`属性を使ってみてください。`target="_top"`は現在のタブを置き換えるので、作業内容が保存されていることを確認してください。

# --solutions--

```js
// solution required
```
