---
id: 66ecdcf7c8d9a6f49094ffde
title: Hatua 13
challengeType: 1
dashedName: step-13
---

# --description--

Katika mafundisho yaliyopita, ulijifunza kwamba njia ya `Math.round()` inazungusha thamani hadi nambari kamili iliyo karibu zaidi.

Hapa kuna mifano kadhaa:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Hii ni tofauti na njia za `Math.floor()` na `Math.ceil()`, ambazo huzungusha chini na juu hadi nambari kamili iliyo karibu zaidi, mtawalia.

Tengeneza kigezo kipya kinachoitwa `numRounded` na weka thamani ya matokeo ya kuzungusha nambari `2.7`. Kisha, andika thamani ya `numRounded` kwenye konsoli.

Chini ya hapo, tengeneza kigezo kingine kipya kinachoitwa `numRounded2` na weka thamani ya matokeo ya kuzungusha nambari `11.2`. Kisha, andika thamani ya `numRounded2` kwenye konsoli.

# --hints--

Unapaswa kuwa na kigezo kinachoitwa `numRounded`.

```js
assert.isNotNull(numRounded);
```

Unapaswa kuweka thamani ya matokeo ya kuzungusha nambari `2.7` kwenye kigezo `numRounded`.

```js
assert.equal(numRounded, 3);
```

Usiweka thamani ya `3` moja kwa moja kwa kigezo `numRounded`. Hakikisha unatumia njia ya `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

Unapaswa kuandika thamani ya `numRounded` kwenye konsoli.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

Unapaswa kuwa na kigezo kinachoitwa `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

Unapaswa kuweka thamani ya matokeo ya kuzungusha nambari `11.2` kwenye kigezo `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

Usiweka thamani ya `11` moja kwa moja kwa kigezo `numRounded2`. Hakikisha unatumia njia ya `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

Unapaswa kuandika thamani ya `numRounded2` kwenye konsoli.

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
