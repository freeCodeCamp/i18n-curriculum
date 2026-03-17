---
id: cf1111c1c11feddfaeb1bdef
title: Ітерувати за допомогою циклів while у JavaScript
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

Ви можете запускати один і той самий код кілька разів, використовуючи цикл.

Перший тип циклу, який ми вивчимо, називається циклом `while`, тому що він виконується, поки задана умова є істинною, і зупиняється, коли ця умова перестає бути істинною.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

У наведеному вище прикладі коду цикл `while` виконається 5 разів і додасть числа від 0 до 4 у `ourArray`.

Давайте спробуємо змусити цикл while працювати, додаючи значення до масиву.

# --instructions--

Додайте числа від 5 до 0 (включно) у спадному порядку до `myArray` за допомогою циклу `while`.

# --hints--

Вам слід використовувати цикл `while` для цього.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray` має дорівнювати `[5, 4, 3, 2, 1, 0]`.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
