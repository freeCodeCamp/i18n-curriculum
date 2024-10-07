---
id: 587d7b86367417b2b2512b3c
title: 重新初始化循环中的变量时要小心
challengeType: 1
forumTopicId: 301194
dashedName: use-caution-when-reinitializing-variables-inside-a-loop
---

# --description--

Sometimes it's necessary to save information, increment counters, or re-set variables within a loop. A potential issue is when variables either should be reinitialized, and aren't, or vice versa. This is particularly dangerous if you accidentally reset the variable being used for the terminal condition, causing an infinite loop.

使用`console.log()`在每个循环中打印变量值可以发现与重置相关的错误或者重置变量失败。

# --instructions--

以下函数应该创建一个具有`m`行和`n`列“零”的二维数组。 不幸的是，它没有产生预期的输出，因为`row`变量没有在外部循环中重新初始化（设置回空数组）。 修改代码，使其正确地返回包含 3 行 2 列“零”的二维数组，即`[[0, 0], [0, 0], [0, 0]]`。

# --hints--

应将变量 `matrix` 设置为 3 行 2 列“零”的二维数组。

```js
assert(JSON.stringify(matrix) == '[[0,0],[0,0],[0,0]]');
```

变量 `matrix` 应有 3 行。

```js
assert(matrix.length == 3);
```

变量 `matrix` 每行应有 2 列。

```js
assert(
  matrix[0].length == 2 && matrix[1].length === 2 && matrix[2].length === 2
);
```

`zeroArray(4,3)` 应该返回一个包含 4 行、每行 3 列零的数组。

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
