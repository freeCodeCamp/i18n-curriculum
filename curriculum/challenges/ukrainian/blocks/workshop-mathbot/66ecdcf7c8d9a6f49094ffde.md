---
id: 66ecdcf7c8d9a6f49094ffde
title: Крок 13
challengeType: 1
dashedName: step-13
---

# --description--

У попередніх уроках ви дізналися, що метод `Math.round()` округлює значення до найближчого цілого числа.

Ось кілька прикладів:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Це відрізняється від методів `Math.floor()` та `Math.ceil()`, які відповідно округлюють вниз і вгору до найближчого цілого числа.

Створіть нову змінну з назвою `numRounded` і призначте їй результат округлення числа `2.7`. Потім виведіть значення `numRounded` у консоль.

Нижче створіть ще одну нову змінну з назвою `numRounded2` і призначте їй результат округлення числа `11.2`. Потім виведіть значення `numRounded2` у консоль.

# --hints--

У вас має бути змінна з назвою `numRounded`.

```js
assert.isNotNull(numRounded);
```

Ви повинні призначити результат округлення числа `2.7` змінній `numRounded`.

```js
assert.equal(numRounded, 3);
```

Не слід жорстко кодувати значення `3` для змінної `numRounded`. Переконайтеся, що ви використовуєте метод `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

Виведіть значення `numRounded` у консоль.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

У вас має бути змінна з назвою `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

Ви повинні призначити результат округлення числа `11.2` змінній `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

Не слід жорстко кодувати значення `11` для змінної `numRounded2`. Переконайтеся, що ви використовуєте метод `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

Виведіть значення `numRounded2` у консоль.

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
