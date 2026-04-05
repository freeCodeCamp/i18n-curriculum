---
id: 66ecdcf7c8d9a6f49094ffde
title: 13단계
challengeType: 1
dashedName: step-13
---

# --description--

이전 수업에서 `Math.round()` 메서드가 값을 가장 가까운 정수로 반올림한다는 것을 배웠습니다.

다음은 몇 가지 예시입니다:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

이는 각각 가장 가까운 정수로 내림과 올림을 하는 `Math.floor()` 및 `Math.ceil()` 메서드와 다릅니다.

`numRounded`라는 새 변수를 만들고 숫자 `2.7`를 반올림한 결과를 할당하세요. 그런 다음 `numRounded`의 값을 콘솔에 출력하세요.

그 아래에 `numRounded2`라는 또 다른 새 변수를 만들고 숫자 `11.2`를 반올림한 결과를 할당하세요. 그런 다음 `numRounded2`의 값을 콘솔에 출력하세요.

# --hints--

`numRounded`라는 변수가 있어야 합니다.

```js
assert.isNotNull(numRounded);
```

숫자 `2.7`를 반올림한 결과를 `numRounded` 변수에 할당해야 합니다.

```js
assert.equal(numRounded, 3);
```

`3` 변수에 `numRounded` 값을 하드코딩하지 마세요. `Math.round()` 메서드를 사용하고 있는지 확인하세요.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

`numRounded` 값을 콘솔에 출력해야 합니다.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

`numRounded2`라는 변수가 있어야 합니다.

```js
assert.isNotNull(numRounded2);
```

숫자 `11.2`를 반올림한 결과를 `numRounded2` 변수에 할당해야 합니다.

```js
assert.equal(numRounded2, 11);
```

`11` 변수에 `numRounded2` 값을 하드코딩하지 마세요. `Math.round()` 메서드를 사용하고 있는지 확인하세요.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

`numRounded2` 값을 콘솔에 출력해야 합니다.

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
