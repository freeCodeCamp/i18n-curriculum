---
id: a302f7aae1aa3152a5b413bc
title: 計算整數的階乘
challengeType: 1
forumTopicId: 16013
dashedName: factorialize-a-number
---

# --description--

Return the factorial of the provided integer.

對於整數 `n`，n 的階乘就是所有小於等於 `n` 的正整數的乘積。

階乘通常用符號 `n!` 來表示。

For example: `5! = 1 * 2 * 3 * 4 * 5 = 120`

在這個挑戰中，只有非負整數會作爲參數傳入函數。

# --hints--

`factorialize(5)` 應返回一個數字。

```js
assert.isNumber(factorialize(5));
```

`factorialize(5)` 應該返回 `120`。

```js
assert.strictEqual(factorialize(5), 120);
```

`factorialize(10)` 應該返回 `3628800`。

```js
assert.strictEqual(factorialize(10), 3628800);
```

`factorialize(20)` 應該返回 `2432902008176640000`。

```js
assert.strictEqual(factorialize(20), 2432902008176640000);
```

`factorialize(0)` 應該返回 `1`。

```js
assert.strictEqual(factorialize(0), 1);
```

# --seed--

## --seed-contents--

```js
function factorialize(num) {
  return num;
}

factorialize(5);
```

# --solutions--

```js
function factorialize(num) {
  return num < 1 ? 1 : num * factorialize(num - 1);
}

factorialize(5);
```
