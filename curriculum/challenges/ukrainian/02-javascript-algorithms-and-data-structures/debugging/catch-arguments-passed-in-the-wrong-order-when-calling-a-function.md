---
id: 587d7b85367417b2b2512b3a
title: Аргументи, передані у неправильному порядку
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

Функція `raiseToPower` підносить основу до степеня. На жаль, її не викликано належним чином. Виправте код так, щоб значенням `power` було 8.

# --hints--

Ваш код повинен виправити змінну `power` так, щоб вона дорівнювала 2 у 3 степені, а не 3 у 2 степені.

```js
assert(power == 8);
```

Ваш код повинен використовувати правильний порядок аргументів для виклику функції `raiseToPower`.

```js
assert(__helpers.removeJSComments(code).match(/raiseToPower\(\s*?base\s*?,\s*?exp\s*?\);/g));
```

# --seed--

## --seed-contents--

```js
function raiseToPower(b, e) {
  return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(exp, base);
console.log(power);
```

# --solutions--

```js
function raiseToPower(b, e) {
 return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(base, exp);
console.log(power);
```
