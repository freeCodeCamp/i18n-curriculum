---
id: 587d7b85367417b2b2512b39
title: إدراك أقواس (Parenthesis) الفتح والإغلاق المفقودة بعد تفعيل وظيفة (Function)
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

فتختلف المتغيرات الواردة في المثال التالي:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

تكون `varOne` الوظيفة (function) هنا مسمى `myFunction`، ويكون `varTwo` المقطع نصي (string) من `You rock!`.

# --instructions--

أصلح الكود بحيث يتم تعيين المتغير (variable) المسمى `result` بقيمة الناتحة من تفعيل الوظيفة (function) مسمى `getNine`.

# --hints--

يجب أن يصلح الوظيفة المتغير (variable) مسمى `result` حيث يتم تعيينه الرَّقْم الذي ينتج الوظيفة (function) مسمى `getNine`.

```js
assert(result == 9);
```

يجب أن يفعيل كودك وظيفة `getNine`.

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
