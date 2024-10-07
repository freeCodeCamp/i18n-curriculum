---
id: 587d7b85367417b2b2512b39
title: Пропущені відкриваючі та закриваючі дужки
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

Змінні у поданому нижче прикладі є різними:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

У цьому випадку `varOne` є функцією `myFunction`, а `varTwo` є рядком `You rock!`.

# --instructions--

Виправте код таким чином, щоб змінна `result` отримала значення, повернене від виклику функції `getNine`.

# --hints--

Ваш код повинен виправити змінну `result` так, щоб її значення було числом, яке повертає функція `getNine`.

```js
assert(result == 9);
```

Ваш код повинен викликати функцію `getNine`.

```js
assert(__helpers.removeJSComments(code).match(/getNine\(\)/g).length == 2);
```

# --seed--

## --seed-contents--

```js
function getNine() {
  let x = 6;
  let y = 3;
  return x + y;
}

let result = getNine;
console.log(result);
```

# --solutions--

```js
function getNine() {
 let x = 6;
 let y = 3;
 return x + y;
}

let result = getNine();
console.log(result);
```
