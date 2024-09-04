---
id: bad87fee1348bd9aec908846
title: Bootstrap の見出しを作成する
challengeType: 0
forumTopicId: 16812
dashedName: create-a-bootstrap-headline
---

# --description--

ここでは、HTML、CSS、Bootstrap のスキルを磨くために、何もない状態から作成してみましょう。

jQuery プレイグラウンドを作成します。このプレイグラウンドは、このあとの jQuery のチャレンジで使用します。

まず、`jQuery Playground` というテキストを持つ `h3` 要素を作成してください。

`text-primary` という Bootstrap クラスを使用して `h3` に色を付け、`text-center` という Bootstrap クラスを使用して中央に配置してください。

# --hints--

`h3` 要素をページに追加します。

```js
assert.lengthOf(document.querySelectorAll('h3'),1);
```

`h3` 要素には終了タグが必要です。

```js
assert.match(code,/<\/h3>/g);
assert.match(code,/<h3/g);
assert.equal( code.match(/<\/h3>/g).length , code.match(/<h3/g).length);
```

`h3` 要素にクラス  `text-primary` を適用して色を付けます。

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-primary'));
```

`h3` 要素に `text-center` を適用して中央寄せにします。

```js
assert.isTrue(document.querySelector('h3')?.classList?.contains('text-center'));
```

`h3` 要素のテキストを `jQuery Playground` にします。

```js
assert.match(document.querySelector('h3')?.textContent, /jquery(\s)+playground/gi);
```

# --seed--

## --seed-contents--

```html

```

# --solutions--

```html
<h3 class="text-primary text-center">jQuery Playground</h3>
```
