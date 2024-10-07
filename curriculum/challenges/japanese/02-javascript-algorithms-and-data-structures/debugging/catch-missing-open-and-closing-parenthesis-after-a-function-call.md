---
id: 587d7b85367417b2b2512b39
title: 関数呼び出しの後の足りない開始括弧や終了括弧をキャッチする
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

次の例の変数は異なる結果になります。

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

この例では、`varOne` は関数 `myFunction` になり、`varTwo` は文字列 `You rock!` になります。

# --instructions--

変数 `result` が、関数 `getNine` の呼び出しにより返される値に設定されるようにコードを修正してください。

# --hints--

変数 `result` が、関数 `getNine` が返す値に設定されるようにコードを修正します。

```js
assert(result == 9);
```

`getNine` 関数を呼び出す必要があります。

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
