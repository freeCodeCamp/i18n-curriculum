---
id: bd7123c9c441eddfaeb4bdef
title: JavaScriptコードにコメントを付ける
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

コメントはJavaScriptが意図的に無視するコードの行です。コメントは、自分自身や後でそのコードの内容を理解する必要がある他の人に向けてメモを残すのに最適な方法です。

JavaScriptでコメントを書く方法は2つあります。

`//` を使うと、その行の残りのテキストをJavaScriptが無視します。これはインラインコメントです。

```js
// This is an in-line comment.
```

`/*` で始まり `*/` で終わる複数行コメントも作成できます。これは複数行コメントです。

```js
/* This is a
multi-line comment */
```

**注意：** コードを書く際は、コードの各部分の役割を明確にするために定期的にコメントを追加してください。良いコメントは、他の人だけでなく将来の自分にもコードの意図を伝える助けになります。

# --instructions--

それぞれのタイプのコメントを1つずつ作成してみてください。

# --hints--

5文字以上の文字を含む`//`スタイルのコメントを作成してください。

```js
assert(code.match(/(\/\/)...../g));
```

5文字以上の文字を含む`/* */`スタイルのコメントを作成してください。

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
