---
id: 587d7b85367417b2b2512b3a
title: 調用函數時，捕獲以錯誤順序傳遞的參數
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

函數 `raiseToPower` 返回基數 (base) 的指數 (exponent) 次冪。 不幸的是，它沒有被正確調用 — 修改代碼，使 `power` 的值爲 8。

# --hints--

你應修復變量 `power`，使其等於 2 的 3 次方，而不是 3 的 2 次方。

```js
assert(power == 8);
```

你調用 `raiseToPower` 函數時，傳遞參數的順序應正確。

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
