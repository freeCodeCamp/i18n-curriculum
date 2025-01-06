---
id: 661e131f068359c3ccf2f4d6
title: 基本函数练习 B
challengeType: 1
dashedName: top-basic-functions-exercise-b
---

# --description--

编写一个名为 `multiply` 的函数，该函数采用两个参数并返回它们的乘积。

# --hints--

你应该有一个名为 `multiply` 的函数。

```js
assert.isFunction(multiply);
```

你的函数应该接受两个整数作为参数。

```js
assert.match(multiply.toString(), /\s*multiply\(\s*\w+\s*,\s*\w+\s*\)/);
```

你应该返回两个整数的乘积。

```js
assert.strictEqual(multiply(10, 10), 100);
```


# --seed--

## --seed-contents--

```js

```

## --solutions--

```js 
function multiply(a, b) {
  return a * b;
}
```
