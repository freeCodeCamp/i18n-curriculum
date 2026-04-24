---
id: bd7157d8c242eddfaeb5bd13
title: マークダウンプレビューアーを作成する
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**注意:** **React 18はこのプロジェクトのテストと互換性の問題が知られています（[issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922)を参照してください）**

**目的:** 次のような機能を持つアプリを作成してください：<a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>。

以下のユーザーストーリーを満たし、すべてのテストに合格してください。必要なライブラリやAPIは自由に使って構いません。自分なりのスタイルを加えてください。

HTML、JavaScript、CSS、ブートストラップ、SASS、React、Redux、jQueryのいずれかの組み合わせを使ってこのプロジェクトを完成させてください。フロントエンドフレームワーク（例えばReact）を使うことをお勧めします。このセクションはフロントエンドフレームワークの学習が目的だからです。上記に挙げていない追加の技術は推奨されず、使用は自己責任となります。AngularやVueなど他のフロントエンドフレームワークのサポートも検討していますが、現時点では対応していません。このプロジェクトで推奨されている技術スタックを使った問題報告はすべて受け付け、修正を試みます。楽しくコーディングしましょう！

**ユーザーストーリー #1:** `textarea` 要素と対応する `id="editor"` が見えます。

**ユーザーストーリー #2:** `id="preview"` に対応する要素が見えます。

**ユーザーストーリー #3:** `#editor` 要素にテキストを入力すると、textareaの内容を表示するために `#preview` 要素が入力に合わせて更新されます。

**ユーザーストーリー #4:** GitHub風マークダウンを `#editor` 要素に入力すると、テキストが `#preview` 要素にHTMLとしてレンダリングされます（ヒント：マークダウンの解析は自分で行う必要はありません。Markedライブラリをインポートして使えます：<https://cdnjs.com/libraries/marked>）。

**ユーザーストーリー #5:** マークダウンプレビューアーが最初に読み込まれたとき、`#editor` フィールドのデフォルトテキストには、以下の各要素が少なくとも1つずつ含まれている有効なマークダウンが入っています：見出し要素（H1サイズ）、サブ見出し要素（H2サイズ）、リンク、インラインコード、コードブロック、リストアイテム、引用ブロック、画像、太字テキスト。

**ユーザーストーリー #6:** マークダウンプレビューアーが最初に読み込まれたとき、`#editor` フィールドのデフォルトマークダウンは `#preview` 要素にHTMLとしてレンダリングされます。

**オプションのボーナス（このテストに合格する必要はありません）:** マークダウンプレビューアーはキャリッジリターンを解釈し、`br`（改行）要素としてレンダリングします。

<a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">このCodePenテンプレート</a>を使ってプロジェクトを作成し、`Save` をクリックして自分のペンを作成できます。別の環境を使いたい場合は、`<script>` ファイルの本文に `index.html` タグを入れてください：`<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

完成したら、すべてのテストに合格した動作中のプロジェクトのURLを提出してください。

# --solutions--

```js
// solution required
```
