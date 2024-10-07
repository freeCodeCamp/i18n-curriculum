---
id: 587d7b85367417b2b2512b3a
title: 调用函数时，捕获以错误顺序传递的参数
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

函数 `raiseToPower` 返回基数 (base) 的指数 (exponent) 次幂。 不幸的是，它没有被正确调用 — 修改代码，使 `power` 的值为 8。

# --hints--

你应修复变量 `power`，使其等于 2 的 3 次方，而不是 3 的 2 次方。

```js
assert(power == 8);
```

你调用 `raiseToPower` 函数时，传递参数的顺序应正确。

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
