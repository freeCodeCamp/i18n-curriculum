---
id: 66ecdcf7c8d9a6f49094ffde
title: 步骤 13
challengeType: 1
dashedName: step-13
---

# --description--

在之前的课程中，你学到了 `Math.round()` 方法会将值四舍五入到最接近的整数。

这是一些例子：

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

这不同于`Math.floor()`和 `Math.ceil()` 方法，它们分别向下和向上取整到最接近的整数。

创建一个名为 `numRounded` 的新变量，将 `2.7` 的四舍五入结果赋值给它。 然后，将 `numRounded` 的值记录到控制台。

在下面创建另一个名为 `numRounded2` 的新变量，将 `11.2` 的四舍五入结果赋值给它。 然后，将 `numRounded2` 的值记录到控制台。

# --hints--

你应该有一个名为 `numRounded` 的变量。

```js
assert.isNotNull(numRounded);
```

你应将数字 `2.7` 的四舍五入结果赋值给变量 `numRounded`。

```js
assert.equal(numRounded, 3);
```

你不应将 `numRounded` 变量的值硬编码为 `3`。 确保你使用的是 `Math.round()` 方法。

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

你应该将 `numRounded` 的值输出到控制台。

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

你应该有一个名为 `numRounded2` 的变量。

```js
assert.isNotNull(numRounded2);
```

你应将数字 `11.2` 的四舍五入结果赋值给变量 `numRounded2`。

```js
assert.equal(numRounded2, 11);
```

你不应将 `numRounded2` 变量的值硬编码为 `11`。 确保你使用的是 `Math.round()` 方法。

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

你应该将 `numRounded2` 的值输出到控制台。

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
