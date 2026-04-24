---
id: bd7123c8c441eddfaeb5bdef
title: HTML要素に挨拶しよう
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gpt2'
forumTopicId: 18276
dashedName: say-hello-to-html-elements
---

# --description--

freeCodeCampのHTMLコーディングチャレンジへようこそ。これらはウェブ開発をステップごとに案内します。

まず、HTMLを使ってシンプルなウェブページを作成することから始めます。コードエディターはこのウェブページに埋め込まれているので、そこでコードを編集できます。

コードエディターに`<h1>Hello</h1>`と書かれたコードが見えますか？それはHTML要素です。

ほとんどのHTML要素は開始タグと終了タグを持っています。

開始タグはこのように見えます：

```html
<h1>
```

終了タグはこのように見えます：

```html
</h1>
```

開始タグと終了タグの違いは、終了タグの開始ブラケットの後にスラッシュがあることだけです。

各チャレンジには「Run tests」ボタンをクリックすればいつでも実行できるテストがあります。すべてのテストに合格すると、解答を提出して次のコーディングチャレンジに進むよう促されます。

# --instructions--

このチャレンジのテストに合格するには、`h1`要素のテキストを`Hello World`に変更してください。

# --hints--

`h1`要素のテキストは`Hello World`であるべきです。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
```
