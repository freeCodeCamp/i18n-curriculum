---
id: 587d78b2367417b2b2512b0e
title: push() と unshift() による配列へのアイテムの追加
challengeType: 1
forumTopicId: 301151
dashedName: add-items-to-an-array-with-push-and-unshift
---

# --description--

An array's length, like the data types it can contain, is not fixed. Arrays can be defined with a length of any number of elements, and elements can be added or removed over time; in other words, arrays are <dfn>mutable</dfn>. In this challenge, we will look at two methods with which we can programmatically modify an array: `Array.push()` and `Array.unshift()`.

どちらのメソッドもパラメーターとして 1 つ以上の要素を受け取り、メソッド呼び出しの対象の配列にそれらの要素を追加します。`push()` メソッドは要素を配列の末尾に追加し、`unshift()` メソッドは要素を配列の先頭に追加します。 以下の例について考えてみましょう。

```js
let twentyThree = 'XXIII';
let romanNumerals = ['XXI', 'XXII'];

romanNumerals.unshift('XIX', 'XX');
```

この場合、`romanNumerals` の値は `['XIX', 'XX', 'XXI', 'XXII']` になります。

```js
romanNumerals.push(twentyThree);
```

この場合、`romanNumerals` の値は `['XIX', 'XX', 'XXI', 'XXII', 'XXIII']` になります。 ここでは変数を渡すこともできることに注目してください。これにより、配列データの動的な変更がさらに柔軟に行えます。

# --instructions--

関数 `mixedNumbers`を定義しました。引数として配列を渡しています。 `push()` と `unshift()` を使用してこの関数を変更してください。`'I', 2, 'three'` を配列の先頭に、`7, 'VIII', 9` を末尾に追加して、数字 1～9 が順番に表示される配列を返すようにします。

# --hints--

ここでは、`mixedNumbers(["IV", 5, "six"])` は `["I", 2, "three", "IV", 5, "six", 7, "VIII", 9]` を返す必要があります。

```js
assert.deepEqual(mixedNumbers(['IV', 5, 'six']), [
  'I',
  2,
  'three',
  'IV',
  5,
  'six',
  7,
  'VIII',
  9
]);
```

`mixedNumbers` 関数で `push()` メソッドを使用する必要があります。

```js
assert(mixedNumbers.toString().match(/\.push/));
```

`mixedNumbers` 関数で `unshift()` メソッドを使用する必要があります。

```js
assert(mixedNumbers.toString().match(/\.unshift/));
```

# --seed--

## --seed-contents--

```js
function mixedNumbers(arr) {
  // Only change code below this line

  // Only change code above this line
  return arr;
}

console.log(mixedNumbers(['IV', 5, 'six']));
```

# --solutions--

```js
function mixedNumbers(arr) {
  arr.push(7,'VIII',9);
  arr.unshift('I',2,'three');
  return arr;
}
```
