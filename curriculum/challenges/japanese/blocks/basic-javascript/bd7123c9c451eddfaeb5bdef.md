---
id: bd7123c9c451eddfaeb5bdef
title: 文字列の最後の文字をブラケット記法で取得する
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

文字列の最後の文字を取得するには、文字列の長さから1を引くことができます。

例えば、`const firstName = "Ada"`の場合、`firstName[firstName.length - 1]`を使って文字列の最後の文字の値を取得できます。

例：

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter`は文字列`a`の値になります。

# --instructions--

<dfn>ブラケット記法</dfn>を使って、`lastName`変数の最後の文字を見つけてください。

**ヒント：** もし詰まったら、上の例を見てみてください。

# --hints--

`lastLetterOfLastName`は文字`e`であるべきです。

```js
assert(lastLetterOfLastName === 'e');
```

最後の文字を取得するには`.length`を使うべきです。

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
