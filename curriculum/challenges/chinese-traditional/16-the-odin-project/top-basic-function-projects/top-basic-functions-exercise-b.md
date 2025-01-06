---
id: 661e131f068359c3ccf2f4d6
title: 基本函數練習 B
challengeType: 1
dashedName: top-basic-functions-exercise-b
---

# --description--

編寫一個名爲 `multiply` 的函數，該函數採用兩個參數並返回它們的乘積。

# --hints--

你應該有一個名爲 `multiply` 的函數。

```js
assert.isFunction(multiply);
```

你的函數應該接受兩個整數作爲參數。

```js
assert.match(multiply.toString(), /\s*multiply\(\s*\w+\s*,\s*\w+\s*\)/);
```

你應該返回兩個整數的乘積。

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
