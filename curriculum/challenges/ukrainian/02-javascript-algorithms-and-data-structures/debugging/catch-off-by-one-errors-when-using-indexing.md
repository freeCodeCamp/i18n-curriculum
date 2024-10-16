---
id: 587d7b86367417b2b2512b3b
title: Помилка неврахованої одиниці при індексуванні
challengeType: 1
forumTopicId: 301189
dashedName: catch-off-by-one-errors-when-using-indexing
---

# --description--

<dfn>Off by one errors</dfn> (sometimes called OBOE) crop up when you're trying to target a specific index of a string or array (to slice or access a segment), or when looping over the indices of them. JavaScript indexing starts at zero, not one, which means the last index is always one less than the length of the item. If you try to access an index equal to the length, the program may throw an "index out of range" reference error or print `undefined`.

Якщо ви використовуєте методи рядка чи масиву, які приймають діапазон індексу як аргумент, варто прочитати документацію та зрозуміти, чи вони враховують всі елементи (тобто елемент за заданим індексом є частиною отриманого результату). Ось кілька прикладів помилок неврахованої одиниці:

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

Перший приклад створює цикл забагато разів, а другий цикл є занадто коротким (оскільки пропущений перший індекс, 0). Третій приклад правильний.

# --instructions--

Виправіть дві помилки індексування у поданій функції таким чином, щоб усі числа від 1 до 5 були виведені на консоль.

# --hints--

Ваш код повинен встановити початкову умову циклу так, щоб він починався з першого індексу.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?=\s*?0\s*?;/g).length == 1);
```

Ваш код повинен виправити початкову умову циклу таким чином, щоб індекс починався з 0.

```js
assert(!__helpers.removeJSComments(code).match(/i\s?=\s*?1\s*?;/g));
```

Ваш код повинен встановити кінцеву умову циклу так, щоб він закінчувався на останньому індексі.

```js
assert(__helpers.removeJSComments(code).match(/i\s*<\s*len\s*;|i\s*<=\s*len\s*-\s*1\s*;/g).length == 1);
```

Ваш код повинен встановити кінцеву умову циклу таким чином, щоб він зупинявся на одиниці від довжини.

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
