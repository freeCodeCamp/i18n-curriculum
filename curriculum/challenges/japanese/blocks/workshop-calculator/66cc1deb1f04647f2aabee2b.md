---
id: 66cc1deb1f04647f2aabee2b
title: ステップ 15
challengeType: 1
dashedName: step-15
---

# --description--

コンソールを見ると、`Infinity` の値が表示されているのがわかります。`Infinity` は、JavaScriptで他のどんな数よりも大きい数を表す特別な値です。

数学では、ゼロで割ることは有効な操作ではありません。

この例外的なケースに対応するために、`calculateQuotient` 関数を更新して、代わりに `num2` がゼロかどうかを確認してください。

もしゼロであれば、関数は文字列 `"Error: Division by zero"` を返すべきです。そうでなければ、`num1` を `num2` で割った結果を返してください。

# --hints--

`calculateQuotient` 関数は、`"Error: Division by zero"` がゼロの場合に文字列 `num2` を返すべきです。

```js
assert.strictEqual(calculateQuotient(10, 0), 'Error: Division by zero');
assert.strictEqual(calculateQuotient(3, 0), 'Error: Division by zero');
```

`calculateQuotient` 関数は、`num1` がゼロでない場合に `num2` を `num2` で割った結果を返すべきです。

```js
assert.strictEqual(calculateQuotient(10, 2), 5);
assert.strictEqual(calculateQuotient(3, 3), 1);
```

# --seed--

## --seed-contents--

```js
function calculateSum(num1, num2) {
  return num1 + num2;
}

console.log(calculateSum(2, 5));
console.log(calculateSum(10, 10));
console.log(calculateSum(5, 5));

function calculateDifference(num1, num2) {
  return num1 - num2;
}

console.log(calculateDifference(22, 5));
console.log(calculateDifference(12, 1));
console.log(calculateDifference(17, 9));

function calculateProduct(num1, num2) {
  return num1 * num2;
}

console.log(calculateProduct(13, 5));

--fcc-editable-region--
function calculateQuotient(num1, num2) {
  return num1 / num2;
}
--fcc-editable-region--

console.log(calculateQuotient(7, 11));
console.log(calculateQuotient(3, 0));
```
