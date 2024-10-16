---
id: 587d7b86367417b2b2512b3c
title: Реініціалізація змінних всередині циклу
challengeType: 1
forumTopicId: 301194
dashedName: use-caution-when-reinitializing-variables-inside-a-loop
---

# --description--

Sometimes it's necessary to save information, increment counters, or re-set variables within a loop. A potential issue is when variables either should be reinitialized, and aren't, or vice versa. This is particularly dangerous if you accidentally reset the variable being used for the terminal condition, causing an infinite loop.

Ви можете виявити помилкову поведінку, пов’язану зі скиданням змінної, надрукувавши значення змінної після кожного виконання циклу за допомогою `console.log()`.

# --instructions--

Подана нижче функція повинна створити двовимірний масив із `m` рядками та `n` стовпцями з нулів. На жаль, вона не виводить очікуваний результат, оскільки змінна `row` не реініціалізована (встановлена на порожній масив) у зовнішньому циклі. Виправіть код так, щоб він повертав правильний 3x2 масив з нулів, який повинен мати такий вигляд: `[[0, 0], [0, 0], [0, 0]]`.

# --hints--

Ваш код повинен встановити змінну `matrix` на масив, що містить 3 рядки по 2 стовпці кожен.

```js
assert(JSON.stringify(matrix) == '[[0,0],[0,0],[0,0]]');
```

Змінна `matrix` повинна мати 3 рядки.

```js
assert(matrix.length == 3);
```

Змінна `matrix` повинна мати 2 стовпці в кожному рядку.

```js
assert(
  matrix[0].length == 2 && matrix[1].length === 2 && matrix[2].length === 2
);
```

`zeroArray(4,3)` має повертати масив, який містить 4 рядки по 3 стовпці кожен.

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
