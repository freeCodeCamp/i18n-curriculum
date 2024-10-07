---
id: 587d7b86367417b2b2512b3c
title: ループ内の変数を再初期化する際の注意点
challengeType: 1
forumTopicId: 301194
dashedName: use-caution-when-reinitializing-variables-inside-a-loop
---

# --description--

Sometimes it's necessary to save information, increment counters, or re-set variables within a loop. A potential issue is when variables either should be reinitialized, and aren't, or vice versa. This is particularly dangerous if you accidentally reset the variable being used for the terminal condition, causing an infinite loop.

`console.log()` を使用してループの各サイクルで変数値を出力することで、変数をリセットすることに関して、または変数のリセットができないことに関して、バグを引き起こしそうな動作を明らかにすることができます。

# --instructions--

次の関数では、`m` 行 `n` 列のゼロの成分からなる二次元配列を作成する必要があります。 しかし、外側のループで `row` 変数が再初期化されていない (空の配列に戻らない) ため、残念ながら期待される出力が生成されません。 `[[0, 0], [0, 0], [0,0]]` のような正しい 3x2 の配列を返すようにコードを修正してください。

# --hints--

`matrix` 変数を、3 行 2 列のゼロからなる配列に設定する必要があります。

```js
assert(JSON.stringify(matrix) == '[[0,0],[0,0],[0,0]]');
```

`matrix` 変数を 3 行にする必要があります。

```js
assert(matrix.length == 3);
```

`matrix` 変数の各行を 2 列にする必要があります。

```js
assert(
  matrix[0].length == 2 && matrix[1].length === 2 && matrix[2].length === 2
);
```

`zeroArray(4,3)` は、4 行 3 列のゼロからなる配列を返す必要があります。

```js
assert(JSON.stringify(zeroArray(4,3)) == '[[0,0,0],[0,0,0],[0,0,0],[0,0,0]]');
```

# --seed--

## --seed-contents--

```js
function zeroArray(m, n) {
  // Creates a 2-D array with m rows and n columns of zeroes
  let newArray = [];
  let row = [];
  for (let i = 0; i < m; i++) {
    // Adds the m-th row into newArray

    for (let j = 0; j < n; j++) {
      // Pushes n zeroes into the current row to create the columns
      row.push(0);
    }
    // Pushes the current row, which now has n zeroes in it, to the array
    newArray.push(row);
  }
  return newArray;
}

let matrix = zeroArray(3, 2);
console.log(matrix);

```

# --solutions--

```js
function zeroArray(m, n) {
 // Creates a 2-D array with m rows and n columns of zeroes
 let newArray = [];
 for (let i = 0; i < m; i++) {
   let row = [];
   // Adds the m-th row into newArray

   for (let j = 0; j < n; j++) {
     // Pushes n zeroes into the current row to create the columns
     row.push(0);
   }
   // Pushes the current row, which now has n zeroes in it, to the array
   newArray.push(row);
 }
 return newArray;
}

let matrix = zeroArray(3, 2);
console.log(matrix);

```
