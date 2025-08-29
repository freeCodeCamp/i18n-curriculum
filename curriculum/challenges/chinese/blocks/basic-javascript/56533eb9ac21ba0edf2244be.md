---
id: 56533eb9ac21ba0edf2244be
title: 全局作用域和函数
challengeType: 1
forumTopicId: 18193
dashedName: global-scope-and-functions
---

# --description--

In JavaScript, <dfn>scope</dfn> refers to the visibility of variables. Variables which are defined outside of a function block have <dfn>Global</dfn> scope. This means, they can be seen everywhere in your JavaScript code.

未使用 `let` 或 `const` 关键字声明的变量会在 `global` 范围内自动创建。 当在代码其他地方无意间定义了一个变量，刚好变量名与全局变量相同，这时会产生意想不到的后果。 你应该总是用 `let` 或 `const` 声明你的变量。

# --instructions--

使用 `let` 或 `const`，在任何函数之外声明一个名为 `myGlobal` 的全局变量。 并给它一个初始值 `10`。

在函数 `fun1`中，赋值 `5` 给 `oopsGlobal`，***不使用*** `var`、`let` 或 `const` 关键字。

# --before-each--

```js
var oopsGlobal;
```

# --hints--

应定义 `myGlobal`。

```js
assert(typeof myGlobal != 'undefined');
```

`myGlobal` 的值应为 `10`。

```js
assert(myGlobal === 10);
```

`myGlobal` 应该使用 `let` 或 `const` 关键字声明

```js
assert(/(let|const)\s+myGlobal/.test(__helpers.removeJSComments(code)));
```

`oopsGlobal` 应为全局变量，值为 `5`。

```js
fun1();
assert(typeof oopsGlobal != 'undefined');
```

# --seed--

## --seed-contents--

```js
// Declare the myGlobal variable below this line


function fun1() {
  // Assign 5 to oopsGlobal here

}

// Only change code above this line

function fun2() {
  let output = "";
  if (typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if (typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```

# --solutions--

```js
const myGlobal = 10;

function fun1() {
  oopsGlobal = 5;
}

function fun2() {
  let output = "";
  if(typeof myGlobal != "undefined") {
    output += "myGlobal: " + myGlobal;
  }
  if(typeof oopsGlobal != "undefined") {
    output += " oopsGlobal: " + oopsGlobal;
  }
  console.log(output);
}
```
