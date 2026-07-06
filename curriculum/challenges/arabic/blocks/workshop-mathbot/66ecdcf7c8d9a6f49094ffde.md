---
id: 66ecdcf7c8d9a6f49094ffde
title: الخطوة 13
challengeType: 1
dashedName: step-13
---

# --description--

في الدروس السابقة، تعلمت أن الطريقة `Math.round()` تُقرب القيمة إلى أقرب عدد صحيح كامل.

إليك بعض الأمثلة:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

هذا يختلف عن الطريقتين `Math.floor()` و `Math.ceil()`، اللتين تُقربان العدد إلى الأسفل والأعلى إلى أقرب عدد صحيح كامل، على التوالي.

أنشئ متغيرًا جديدًا اسمه `numRounded` وقم بتعيين نتيجة تقريب الرقم `2.7`. ثم سجّل قيمة `numRounded` في وحدة التحكم.

أسفل ذلك، أنشئ متغيرًا جديدًا آخر اسمه `numRounded2` وقم بتعيين نتيجة تقريب الرقم `11.2`. ثم سجّل قيمة `numRounded2` في وحدة التحكم.

# --hints--

يجب أن يكون لديك متغير اسمه `numRounded`.

```js
assert.isNotNull(numRounded);
```

يجب أن تعيّن نتيجة تقريب الرقم `2.7` إلى المتغير `numRounded`.

```js
assert.equal(numRounded, 3);
```

لا يجب أن تُدخل القيمة `3` مباشرةً للمتغير `numRounded`. تأكد من استخدام الطريقة `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

يجب أن تسجل قيمة `numRounded` في وحدة التحكم.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

يجب أن يكون لديك متغير اسمه `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

يجب أن تعيّن نتيجة تقريب الرقم `11.2` إلى المتغير `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

لا يجب أن تُدخل القيمة `11` مباشرةً للمتغير `numRounded2`. تأكد من استخدام الطريقة `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

يجب أن تسجل قيمة `numRounded2` في وحدة التحكم.

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
