---
id: bd7123c9c549eddfaeb5bdef
title: 文字列の最初の文字を取得するためにブラケット記法を使う
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>ブラケット記法</dfn>は、文字列の特定のインデックスにある文字を取得する方法です。

JavaScriptのような多くの現代的なプログラミング言語は、人間のように1から数え始めるのではなく、0から数え始めます。これを<dfn>ゼロベース</dfn>インデックスと呼びます。

例えば、単語`Charles`のインデックス0にある文字は`C`です。つまり、`const firstName = "Charles"`の場合、文字列の最初の文字の値は`firstName[0]`を使って取得できます。

例：

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter`は文字列`C`の値になります。

# --instructions--

ブラケット記法を使って、`lastName`変数の最初の文字を見つけ、`firstLetterOfLastName`に代入してください。

**ヒント:** もし詰まったら、上の例を見てみてください。

# --hints--

`firstLetterOfLastName`変数は`L`の値を持つべきです。

```js
assert(firstLetterOfLastName === 'L');
```

ブラケット記法を使う必要があります。

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
