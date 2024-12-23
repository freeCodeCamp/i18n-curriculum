---
id: bad87fee1348bd9aedf08802
title: HTML のコメントを解除する
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cBmG9T7'
forumTopicId: 18329
dashedName: uncomment-html
---

# --description--

コメントは、エンドユーザーに表示される最終的な出力に影響を与えることなく、コード内に他の開発者へのコメントを残す方法です。

また、コメントはコードを完全に削除せずに無効化するための便利な方法でもあります。

HTML のコメントは `<!--` で始まり、`-->` で終わります。

# --instructions--

`h1`, `h2` と `p` 要素のコメントを解除してください。

# --hints--

コメントを解除すると `h1` 要素はページに表示されるはずです。

```js
assert.notEmpty(document.querySelectorAll('h1'));
```

コメントを解除すると `h2` 要素はページに表示されるはずです。

```js
assert.notEmpty(document.querySelectorAll('h2'));
```

コメントを解除すると `p` 要素はページに表示されるはずです。

```js
assert.notEmpty(document.querySelectorAll('p'));
```

コメントタグの末尾がページに表示されてはいけません (例: `-->`) 。

```js
const elements = document.querySelectorAll('*');
const potentialComments = Array.from(elements).filter(el => el.textContent.includes('-->'));
assert.notExists(potentialComments[1])
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
<h1>Hello World</h1>

<h2>CatPhotoApp</h2>

<p>Kitty ipsum dolor sit amet, shed everywhere shed everywhere stretching attack your ankles chase the red dot, hairball run catnip eat the grass sniff.</p>
```
