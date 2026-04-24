---
id: 66ecdcf7c8d9a6f49094ffde
title: ステップ 13
challengeType: 1
dashedName: step-13
---

# --description--

前のレッスンで、`Math.round()` メソッドが値を最も近い整数に丸めることを学びました。

いくつか例を示します：

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

これは、`Math.floor()` と `Math.ceil()` メソッドとは異なり、それぞれ最も近い整数に切り下げと切り上げを行います。

`numRounded` の数値を丸めた結果を代入する `2.7` という新しい変数を作成してください。その後、`numRounded` の値をコンソールに出力してください。

その下に、`numRounded2` の数値を丸めた結果を代入する `11.2` という別の新しい変数を作成してください。その後、`numRounded2` の値をコンソールに出力してください。

# --hints--

`numRounded` という変数があるはずです。

```js
assert.isNotNull(numRounded);
```

`2.7` の数値を丸めた結果を `numRounded` という変数に代入してください。

```js
assert.equal(numRounded, 3);
```

`3` の変数に `numRounded` の値をハードコードしないでください。`Math.round()` メソッドを使っていることを確認してください。

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

`numRounded` の値をコンソールに出力してください。

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

`numRounded2` という変数があるはずです。

```js
assert.isNotNull(numRounded2);
```

`11.2` の数値を丸めた結果を `numRounded2` という変数に代入してください。

```js
assert.equal(numRounded2, 11);
```

`11` の変数に `numRounded2` の値をハードコードしないでください。`Math.round()` メソッドを使っていることを確認してください。

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

`numRounded2` の値をコンソールに出力してください。

```js
assert.match(code, /console\.log\(\s*numRounded2\s*\)/);
```

# --seed--

## --seed-contents--

```js
const botName = "MathBot";
const greeting = `Hi there! My name is ${botName} and I am here to teach you about the Math object!`;

console.log(greeting);

console.log("The Math.random() method returns a pseudo random number greater than or equal to 0 and less than 1.");

const randomNum = Math.random();
console.log(randomNum);

console.log("Now, generate a random number between two values.");

const min = 1;
const max = 100;

const randomNum2 = Math.random() * (max - min) + min;
console.log(randomNum2);

console.log("The Math.floor() method rounds the value down to the nearest whole integer.");

const numRoundedDown = Math.floor(6.7);
console.log(numRoundedDown);

console.log("Now, generate a random integer between two values.");

const randomInt = Math.floor(Math.random() * (max - min) + min);
console.log(randomInt);

console.log("The Math.ceil() method rounds the value up to the nearest whole integer.");

const numRoundedUp = Math.ceil(3.2);
console.log(numRoundedUp);

console.log("The Math.round() method rounds the value to the nearest whole integer.");

--fcc-editable-region--

--fcc-editable-region--
```
