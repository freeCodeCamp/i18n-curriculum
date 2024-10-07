---
id: bd7123c9c441eddfaeb4bdef
title: JavaScript コードにコメントする
challengeType: 1
videoUrl: 'https://scrimba.com/c/c7ynnTp'
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

Comments are lines of code that JavaScript will intentionally ignore. Comments are a great way to leave notes to yourself and to other people who will later need to figure out what that code does.

JavaScript でコメントを書く方法は 2 つあります。

`//` を使用すると、JavaScript は現在の行の残りのテキストを無視するようになります。 これはインラインコメントです。

```js
// This is an in-line comment.
```

`/*` で始まり、`*/` で終わる複数行のコメントも作成できます。 下記は複数行コメントです。

```js
/* This is a
multi-line comment */
```

**注:** コードを書く際、部分的なコードが持つ機能を明確にするために、定期的にコメントを追加すると良いでしょう。 良いコメントをすることは、自分のコードの意図を伝えるのに役立ちます。他の人のため*だけでなく*未来の自分自身のためにも。

# --instructions--

それぞれのタイプのコメントを作成してみてください。

# --hints--

5 文字以上の `//` スタイルのコメントを作成する必要があります。

```js
assert(code.match(/(\/\/)...../g));
```

5 文字以上の `/* */` スタイルのコメントを作成する必要があります。

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
