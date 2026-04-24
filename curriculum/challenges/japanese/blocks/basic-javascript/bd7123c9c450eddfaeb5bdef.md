---
id: bd7123c9c450eddfaeb5bdef
title: 文字列のN番目の文字を取得するためにブラケット記法を使う
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

ブラケット記法を使って、文字列の他の位置にある文字を取得することもできます。

コンピューターは`0`から数え始めるので、最初の文字は実際には0番目の文字であることを覚えておいてください。

例：

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName`は文字列`d`の値を持ちます。

# --instructions--

ブラケット記法を使って、`thirdLetterOfLastName`変数の3番目の文字と等しくなるように`lastName`を設定してみましょう。

**ヒント:** もし詰まったら、上の例を見てみてください。

# --hints--

`thirdLetterOfLastName`変数は`v`の値を持つべきです。

```js
assert(thirdLetterOfLastName === 'v');
```

ブラケット記法を使う必要があります。

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
