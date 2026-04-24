---
id: bd7993c9c69feddfaeb8bdef
title: JavaScriptの配列を使って1つの変数に複数の値を格納する
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

JavaScriptの`array`変数を使うと、複数のデータを1か所に格納できます。

配列の宣言は、開き角括弧で始め、閉じ角括弧で終わり、各要素の間にカンマを入れて次のように書きます。

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

新しい配列`myArray`を、文字列と数値の両方（その順番で）を含むように変更してください。

# --hints--

`myArray`は配列である必要があります。

```js
assert(typeof myArray == 'object');
```

`myArray`の最初の要素は文字列であるべきです。

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

`myArray`の2番目の要素は数値であるべきです。

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
