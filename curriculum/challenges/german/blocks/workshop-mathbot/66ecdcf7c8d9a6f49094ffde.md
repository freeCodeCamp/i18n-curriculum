---
id: 66ecdcf7c8d9a6f49094ffde
title: Schritt 13
challengeType: 1
dashedName: step-13
---

# --description--

In den vorherigen Lektionen haben Sie gelernt, dass die `Math.round()`-Methode den Wert auf die nächste ganze Zahl rundet.

Hier sind einige Beispiele:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Dies unterscheidet sich von den `Math.floor()`- und `Math.ceil()`-Methoden, die jeweils auf die nächstniedrigere bzw. nächsthöhere ganze Zahl runden.

Erstellen Sie eine neue Variable namens `numRounded` und weisen Sie das Ergebnis der Rundung der Zahl `2.7` zu. Geben Sie dann den Wert von `numRounded` in der Konsole aus.

Erstellen Sie darunter eine weitere neue Variable namens `numRounded2` und weisen Sie das Ergebnis der Rundung der Zahl `11.2` zu. Geben Sie dann den Wert von `numRounded2` in der Konsole aus.

# --hints--

Sie sollten eine Variable namens `numRounded` haben.

```js
const explorer = await __helpers.Explorer(code);
assert.exists(explorer.variables.numRounded);
```

Sie sollten das Ergebnis der Rundung der Zahl `2.7` der Variable `numRounded` zuweisen.

```js
assert.equal(numRounded, 3);
```

Sie sollten den Wert von `3` nicht für die Variable `numRounded` fest codieren. Stellen Sie sicher, dass Sie die `Math.round()`-Methode verwenden.

```js
const explorer = await __helpers.Explorer(code);
const numRounded = explorer.variables.numRounded;
assert.notEqual(numRounded?.value?.toString(), "3");
```

Sie sollten den Wert von `numRounded` in der Konsole ausgeben.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

Sie sollten eine Variable namens `numRounded2` haben.

```js
const explorer = await __helpers.Explorer(code);
assert.exists(explorer.variables.numRounded2);
```

Sie sollten das Ergebnis der Rundung der Zahl `11.2` der Variable `numRounded2` zuweisen.

```js
assert.equal(numRounded2, 11);
```

Sie sollten den Wert von `11` nicht für die Variable `numRounded2` fest codieren. Stellen Sie sicher, dass Sie die `Math.round()`-Methode verwenden.

```js
const explorer = await __helpers.Explorer(code);
const numRounded2 = explorer.variables.numRounded2;
assert.notEqual(numRounded2?.value?.toString(), "11");
```

Sie sollten den Wert von `numRounded2` in der Konsole ausgeben.

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
