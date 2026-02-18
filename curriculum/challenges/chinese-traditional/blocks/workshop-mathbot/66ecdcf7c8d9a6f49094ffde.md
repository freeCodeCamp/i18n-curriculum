---
id: 66ecdcf7c8d9a6f49094ffde
title: 步驟 13
challengeType: 1
dashedName: step-13
---

# --description--

在之前的課程中，你學到 `Math.round()` 方法會將數值四捨五入到最接近的整數。

以下是一些範例：

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

這與 `Math.floor()` 和 `Math.ceil()` 方法不同，後者分別向下和向上取整到最接近的整數。

創建一個名為 `numRounded` 的新變數，並指定將數字 `2.7` 四捨五入的結果。然後，將 `numRounded` 的值記錄到主控台。

在那下面，創建另一個名為 `numRounded2` 的新變數，並指定將數字 `11.2` 四捨五入的結果。然後，將 `numRounded2` 的值記錄到主控台。

# --hints--

你應該有一個名為 `numRounded` 的變數。

```js
assert.isNotNull(numRounded);
```

你應該將將數字 `2.7` 四捨五入的結果指定到變數 `numRounded`。

```js
assert.equal(numRounded, 3);
```

你不應該為變數 `numRounded` 硬編碼數值 `3`。請確保你正在使用 `Math.round()` 方法。

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

你應該將 `numRounded` 的值記錄到主控台。

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

你應該有一個名為 `numRounded2` 的變數。

```js
assert.isNotNull(numRounded2);
```

你應該將將數字 `11.2` 四捨五入的結果指定給變數 `numRounded2`。

```js
assert.equal(numRounded2, 11);
```

你不應該為變數 `numRounded2` 硬編碼數值 `11`。請確保你正在使用 `Math.round()` 方法。

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

你應該將 `numRounded2` 的值記錄到主控台。

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
