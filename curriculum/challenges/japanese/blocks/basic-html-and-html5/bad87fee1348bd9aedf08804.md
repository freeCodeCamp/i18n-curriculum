---
id: bad87fee1348bd9aedf08804
title: HTML をコメントアウトする
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cGyGbca'
forumTopicId: 16782
dashedName: comment-out-html
---

# --description--

コメントを開始するには `<!--` を使用し、終了するには `-->` を使用することを思い出してください。

ここでは、`h2` 要素が始まる前にコメントを終了するようにします。

# --instructions--

`h1` 要素と `p` 要素をコメントアウトし、`h2` 要素はコメントアウトしないようにしてください。

# --hints--

`h1` 要素がページに表示されないようにコメントアウトする必要があります。

```js
assert.isEmpty(document.querySelectorAll('h1'));
```

`h2` 要素は、ページに表示されるようにコメントアウトしないでください。

```js
assert.isNotEmpty(document.querySelectorAll('h2'));
```

`p` 要素がページに表示されないようにコメントアウトする必要があります。

```js
assert.isEmpty(document.querySelectorAll('p'));
```

それぞれのコメントは `-->` で閉じる必要があります

```js
assert.isAbove(code.match(/[^fc]-->/g).length, 1);
```

コード内の `h1`、`h2`、または `p` 要素の順序を変更してはいけません。

```js
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[0],'<h1>');
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[1],'<h2>');
assert.strictEqual(code.match(/<([a-z0-9]){1,2}>/g)[2],'<p>');
```

# --seed--

## --seed-contents--

```html
<!--
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
-->
```

# --solutions--

```html
<!--<h1>Hello World</h1>-->
<h2>CatPhotoApp</h2> 
<!--<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p> -->
```
