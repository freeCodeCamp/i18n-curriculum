---
id: 587d7b84367417b2b2512b34
title: 使用 type of 檢查變量的類型
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

控制檯將按順序顯示字符串 `string`、`number`、`object` 和 `object`。

JavaScript 有七種原始（不可變）數據類型： `Boolean`，`Null`，`Undefined`，`Number`，`String`，`Symbol` （new with ES6），`BigInt` （new with ES2020）和一種可變數據類型：`Object`。 注意：在 JavaScript 中，數組在本質上是一種對象。

# --instructions--

添加兩個 `console.log()` 語句來檢查代碼中的兩個變量 `seven` 和 `three` 的 `typeof` 值。

# --hints--

應在兩個 `console.log()` 語句中使用 `typeof` 來檢查變量的類型。

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

應使用 `typeof` 來檢查變量 `seven` 的類型。

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

應使用 `typeof` 來檢查變量 `three` 的類型。

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
