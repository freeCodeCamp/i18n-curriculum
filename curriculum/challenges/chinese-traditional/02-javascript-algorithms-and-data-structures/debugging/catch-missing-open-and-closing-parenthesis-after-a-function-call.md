---
id: 587d7b85367417b2b2512b39
title: 捕捉函數調用後缺少的左括號和右括號
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

下面示例中的兩個變量是不同的:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

這裏 `varOne` 是函數 `myFunction` ，`varTwo` 是字符串 `You rock!`

# --instructions--

修復代碼，將變量 `result` 設置爲調用函數 `getNine` 返回的值。

# --hints--

你應該修復變量 `result` 使其爲函數 `getNine` 的返回的 number 值。

```js
assert(result == 9);
```

你應該調用 `getNine` 函數。

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
