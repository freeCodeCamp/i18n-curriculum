---
id: 587d7b85367417b2b2512b39
title: 捕捉函数调用后缺少的左括号和右括号
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

下面示例中的两个变量是不同的:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

这里 `varOne` 是函数 `myFunction` ，`varTwo` 是字符串 `You rock!`

# --instructions--

修复代码，将变量 `result` 设置为调用函数 `getNine` 返回的值。

# --hints--

你应该修复变量 `result` 使其为函数 `getNine` 的返回的 number 值。

```js
assert(result == 9);
```

你应该调用 `getNine` 函数。

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
