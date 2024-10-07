---
id: 587d78b2367417b2b2512b0f
title: Видалення елементів з масиву за допомогою pop() та shift()
challengeType: 1
forumTopicId: 301165
dashedName: remove-items-from-an-array-with-pop-and-shift
---

# --description--

Both `push()` and `unshift()` have corresponding methods that are nearly functional opposites: `pop()` and `shift()`. As you may have guessed by now, instead of adding, `pop()` *removes* an element from the end of an array, while `shift()` removes an element from the beginning. The key difference between `pop()` and `shift()` and their cousins `push()` and `unshift()`, is that neither method takes parameters, and each only allows an array to be modified by a single element at a time.

Розглянемо приклад:

```js
let greetings = ['whats up?', 'hello', 'see ya!'];

greetings.pop();
```

`greetings` матиме значення `['whats up?', 'hello']`.

```js
greetings.shift();
```

`greetings` матиме значення `['hello']`.

Ми також можемо повернути значення видаленого елемента за допомогою будь-якого з цих методів:

```js
let popped = greetings.pop();
```

`greetings` матиме значення `[]`, а `popped` матиме значення `hello`.

# --instructions--

Ми визначили функцію `popShift`, яка приймає масив як аргумент і повертає новий масив. Змініть функцію, використовуючи `pop()` й `shift()`, щоб видалити перший та останній елементи масиву аргументів і призначити видалені елементи до відповідних змінних, щоб повернутий масив містив їхні значення.

# --hints--

`popShift(["challenge", "is", "not", "complete"])` має повернути `["challenge", "complete"]`

```js
assert.deepEqual(popShift(['challenge', 'is', 'not', 'complete']), [
  'challenge',
  'complete'
]);
```

Функція `popShift` повинна використовувати метод `pop()`

```js
assert.notStrictEqual(popShift.toString().search(/\.pop\(/), -1);
```

Функція `popShift` повинна використовувати метод `shift()`

```js
assert.notStrictEqual(popShift.toString().search(/\.shift\(/), -1);
```

# --seed--

## --seed-contents--

```js
function popShift(arr) {
  let popped; // Change this line
  let shifted; // Change this line
  return [shifted, popped];
}

console.log(popShift(['challenge', 'is', 'not', 'complete']));
```

# --solutions--

```js
function popShift(arr) {
  let popped = arr.pop(); // Change this line
  let shifted = arr.shift(); // Change this line
  return [shifted, popped];
}
```
