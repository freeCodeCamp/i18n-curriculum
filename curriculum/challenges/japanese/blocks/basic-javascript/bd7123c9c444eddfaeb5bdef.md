---
id: bd7123c9c444eddfaeb5bdef
title: 文字列変数を宣言する
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

以前は次のコードを使って変数を宣言しました：

```js
var myName;
```

しかし、文字列変数は次のように宣言することもできます：

```js
var myName = "your name";
```

`"your name"` は <dfn>文字列</dfn>の <dfn>リテラル</dfn>と呼ばれます。文字列リテラル、または文字列とは、シングルクォートまたは二重引用符で囲まれた0文字以上の文字の並びです。

# --instructions--

2つの新しい文字列変数、`myFirstName` と `myLastName` を作成し、それぞれ自分の名前と苗字の値を代入してください。

# --hints--

`myFirstName` は少なくとも1文字以上の文字列である必要があります。

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` は少なくとも1文字以上の文字列である必要があります。

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
