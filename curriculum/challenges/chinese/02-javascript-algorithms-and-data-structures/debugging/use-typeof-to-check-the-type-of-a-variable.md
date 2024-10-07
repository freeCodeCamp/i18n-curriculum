---
id: 587d7b84367417b2b2512b34
title: 使用 type of 检查变量的类型
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

下面是使用 `typeof` 的一些示例：

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

控制台将按顺序显示字符串 `string`、`number`、`object` 和 `object`。

JavaScript 有七种原始（不可变）数据类型： `Boolean`，`Null`，`Undefined`，`Number`，`String`，`Symbol` （new with ES6），`BigInt` （new with ES2020）和一种可变数据类型：`Object`。 注意：在 JavaScript 中，数组在本质上是一种对象。

# --instructions--

添加两个 `console.log()` 语句来检查代码中的两个变量 `seven` 和 `three` 的 `typeof` 值。

# --hints--

应在两个 `console.log()` 语句中使用 `typeof` 来检查变量的类型。

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

应使用 `typeof` 来检查变量 `seven` 的类型。

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

应使用 `typeof` 来检查变量 `three` 的类型。

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
