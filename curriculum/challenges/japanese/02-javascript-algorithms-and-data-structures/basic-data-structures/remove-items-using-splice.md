---
id: 587d78b2367417b2b2512b10
title: Splice() によるアイテムの削除
challengeType: 1
forumTopicId: 301166
dashedName: remove-items-using-splice
---

# --description--

Ok, so we've learned how to remove elements from the beginning and end of arrays using `shift()` and `pop()`, but what if we want to remove an element from somewhere in the middle? Or remove more than one element at once? Well, that's where `splice()` comes in. `splice()` allows us to do just that: **remove any number of consecutive elements** from anywhere in an array.

`splice()` は最大で 3 つのパラメーターを受け取ることができますが、ここでは最初の 2 つだけに注目しましょう。 `splice()` の最初の 2 つのパラメーターは、`splice()` が呼び出されている配列内の要素のインデックス (または位置) を表す整数です。 すでに説明したように、配列は*インデックスがゼロから始まる*ため、配列の最初の要素を指定する場合は `0` を使用します。 `splice()` の最初のパラメーターは、要素の削除を開始する配列上のインデックスを表します。 一方、2 番目のパラメータは、削除する要素の数を示します。 例えば、次のように記述できます。

```js
let array = ['today', 'was', 'not', 'so', 'great'];

array.splice(2, 2);
```

ここでは、3 番目の要素 (インデックスが 2) から始まる 2 つの要素を削除しています。 `array` の値は `['today', 'was', 'great']` になります。

`splice()` は、呼び出されている配列を変更するだけでなく、削除された要素の値を含む新しい配列も返します。

```js
let array = ['I', 'am', 'feeling', 'really', 'happy'];

let newArray = array.splice(3, 2);
```

`newArray` の値は `['really', 'happy']` になります。

# --instructions--

配列 `arr` が初期化されています。 `splice()` を使用して `arr` から要素を削除し、値の合計が `10` となる要素のみを含むようにしてください。

# --hints--

`const arr = [2, 4, 5, 1, 7, 5, 2, 1];` の元の順序を変更しないでください。

```js
assert(
  __helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/constarr=\[2,4,5,1,7,5,2,1\];?/)
);
```

`arr` には合計が `10` となる要素のみを含める必要があります。

```js
assert.strictEqual(
  arr.reduce((a, b) => a + b),
  10
);
```

コードでは、`arr` に対して `splice()` メソッドを使用する必要があります。

```js
assert(__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(/));
```

splice は `arr` から要素を削除するのみで、`arr` にどんな新しい要素も追加しないものとします。

```js
assert(
  !__helpers.removeWhiteSpace(__helpers.removeJSComments(code)).match(/arr\.splice\(\d+,\d+,\d+.*\)/g)
);
```

# --seed--

## --seed-contents--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
// Only change code below this line

// Only change code above this line
console.log(arr);
```

# --solutions--

```js
const arr = [2, 4, 5, 1, 7, 5, 2, 1];
arr.splice(1, 4);
```
