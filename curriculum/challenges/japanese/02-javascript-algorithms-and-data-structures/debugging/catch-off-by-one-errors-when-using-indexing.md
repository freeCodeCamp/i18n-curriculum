---
id: 587d7b86367417b2b2512b3b
title: インデックスの使用時のオフバイワンエラーを理解する
challengeType: 1
forumTopicId: 301189
dashedName: catch-off-by-one-errors-when-using-indexing
---

# --description--

<dfn>Off by one errors</dfn> (sometimes called OBOE) crop up when you're trying to target a specific index of a string or array (to slice or access a segment), or when looping over the indices of them. JavaScript indexing starts at zero, not one, which means the last index is always one less than the length of the item. If you try to access an index equal to the length, the program may throw an "index out of range" reference error or print `undefined`.

引数としてインデックスの範囲を受け取る文字列メソッドや配列メソッドを使用する場合は、ドキュメントを確認して、それらがインクルーシブ (対象のインデックスのアイテムも返される一部となる) かどうかを把握しておくと役に立ちます。 オフバイワンエラーの例を次に示します。

```js
let alphabet = "abcdefghijklmnopqrstuvwxyz";
let len = alphabet.length;
for (let i = 0; i <= len; i++) {
  console.log(alphabet[i]);
}
for (let j = 1; j < len; j++) {
  console.log(alphabet[j]);
}
for (let k = 0; k < len; k++) {
  console.log(alphabet[k]);
}
```

最初の例ではループが 1 回多く繰り返され、2 つ目の例ではループが 1 回少なく繰り返されます (最初のインデックスである 0 が欠落しています)。 3つ 目は正しい例です。

# --instructions--

次の関数で 2 つのインデックスエラーを修正して、1 から 5 までのすべての数字がコンソールに出力されるようにしてください。

# --hints--

ループが最初のインデックスから開始するように、ループの初期条件を設定します。

```js
assert(__helpers.removeJSComments(code).match(/i\s*?=\s*?0\s*?;/g).length == 1);
```

インデックスが 0 から始まるように、ループの初期条件を修正します。

```js
assert(!__helpers.removeJSComments(code).match(/i\s?=\s*?1\s*?;/g));
```

ループが最後のインデックスで止まるように、ループの終了条件を設定します。

```js
assert(__helpers.removeJSComments(code).match(/i\s*<\s*len\s*;|i\s*<=\s*len\s*-\s*1\s*;/g).length == 1);
```

ループが length の 1 つ前で止まるように、ループの終了条件を修正します。

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?<=\s*?len;/g));
```

# --seed--

## --seed-contents--

```js
function countToFive() {
  let firstFive = "12345";
  let len = firstFive.length;
  // Only change code below this line
  for (let i = 1; i <= len; i++) {
  // Only change code above this line
    console.log(firstFive[i]);
  }
}

countToFive();
```

# --solutions--

```js
function countToFive() {
 let firstFive = "12345";
 let len = firstFive.length;
 // Only change code below this line
 for (let i = 0; i < len; i++) {
 // Only change code above this line
   console.log(firstFive[i]);
 }
}

countToFive();
```
