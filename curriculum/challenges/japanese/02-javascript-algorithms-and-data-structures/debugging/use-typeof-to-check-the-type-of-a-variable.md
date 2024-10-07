---
id: 587d7b84367417b2b2512b34
title: typeof を使用して変数の型を確認する
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

`typeof` を使用した例をいくつか示します。

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

コンソールには、文字列 `string`、`number`、`object`、`object` が順番に表示されます。

JavaScript は 7 つのプリミティブな (イミュータブル) データ型として、`Boolean`、`Null`、`Undefined`、`Number`、`String`、`Symbol` (ES6 で追加)、および `BigInt` (ES2020 で追加) を認識します。また、ミュータブルアイテムのための型の 1 つである `Object` も認識します。 JavaScript では、配列は厳密にはオブジェクトの一種であることに注意してください。

# --instructions--

コード内の `seven` と `three` の 2 つの変数について、それぞれの `typeof` を確認する、2 つの `console.log()` ステートメントを追加してください。

# --hints--

2 つの `console.log()` ステートメントで `typeof` を使用して変数の型を確認する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

`typeof` を使用して変数 `seven` の型を確認する必要があります。

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

`typeof` を使用して変数 `three` の型を確認する必要があります。

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
