---
id: bd7123c9c452eddfaeb5bdef
title: ブラケット記法を使って文字列の後ろからN番目の文字を取得する
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

文字列の最後の文字を取得するのに使ったのと同じ原理で、後ろからN番目の文字を取得できます。

例えば、`const firstName = "Augusta"` 文字列の後ろから3番目の文字の値は `firstName[firstName.length - 3]` を使って取得できます。

例：

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` は文字列 `s` の値になります。

# --instructions--

<dfn>ブラケット記法</dfn>を使って、`lastName` 文字列の後ろから2番目の文字を見つけてください。

**ヒント：** もし詰まったら、上の例を見てみてください。

# --hints--

`secondToLastLetterOfLastName` は文字 `c` であるべきです。

```js
assert(secondToLastLetterOfLastName === 'c');
```

後ろから2番目の文字を取得するには `.length` を使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
