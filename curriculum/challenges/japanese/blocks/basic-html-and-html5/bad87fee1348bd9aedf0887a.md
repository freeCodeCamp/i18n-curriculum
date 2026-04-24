---
id: bad87fee1348bd9aedf0887a
title: h2要素による見出し
challengeType: 0
videoUrl: 'https://scrimba.com/p/pVMPUv/cE8Gqf3'
forumTopicId: 18196
dashedName: headline-with-the-h2-element
---

# --description--

次のいくつかのレッスンで、HTML5の猫の写真ウェブアプリを少しずつ作っていきます。

このステップで追加する`h2`要素は、ウェブページにレベル2の見出しを追加します。

この要素はブラウザーにウェブサイトの構造を伝えます。`h1`要素は主にメイン見出しに使われ、`h2`要素は一般的にサブ見出しに使われます。さらに`h3`、`h4`、`h5`、`h6`要素もあり、異なるレベルのサブ見出しを示します。

# --instructions--

「Hello World」`h2`要素の下に、"CatPhotoApp"と書かれた`h1`タグを追加して、2つ目のHTML要素を作成してください。

# --hints--

`h2`要素を作成してください。

```js
assert.lengthOf(document.querySelectorAll('h2'),1);
```

`h2`要素には終了タグが必要です。

```js
assert.match(code,/<\/h2>/g);
assert.strictEqual(code.match(/<\/h2>/g).length,code.match(/<h2>/g).length);
```

`h2`要素にはテキスト`CatPhotoApp`が含まれているべきです。

```js
assert.match(document.querySelector('h2').textContent,/cat(\s)?photo(\s)?app/gi);
```

`h1`要素にはテキスト`Hello World`が含まれているべきです。

```js
assert.match(document.querySelector('h1').textContent,/hello(\s)+world/gi);
```

`h1`要素は`h2`要素の前に置いてください。

```js
assert.match(code,/<h1>\s*?.*?\s*?<\/h1>\s*<h2>\s*?.*?\s*?<\/h2>/gi);
```

# --seed--

## --seed-contents--

```html
<h1>Hello World</h1>
```

# --solutions--

```html
<h1>Hello World</h1>
<h2>CatPhotoApp</h2>
```
