---
id: 587d7b84367417b2b2512b34
title: Використання typeof для перевірки типу змінної
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

Ось декілька прикладів використання `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

Консоль по порядку відображатиме рядки `string`, `number`, `object` та `object`.

JavaScript розпізнає сім примітивних (незмінних) типів даних: `Boolean`, `Null`, `Undefined`, `Number`, `String`, `Symbol` (новий з ES6) та `BigInt` (новий з ES2020), та один тип для змінних елементів: `Object`. Зверніть увагу, що масиви у JavaScript технічно є типом об’єкту.

# --instructions--

Додайте дві інструкції `console.log()`, щоб перевірити тип (`typeof`) двох змінних: `seven` та `three`.

# --hints--

Ваш код повинен використати оператор `typeof` у двох інструкціях `console.log()`, щоб перевірити тип змінних.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

Ваш код повинен використати оператор `typeof`, щоб перевірити тип змінної `seven`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

Ваш код повинен використати оператор `typeof`, щоб перевірити тип змінної `three`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
