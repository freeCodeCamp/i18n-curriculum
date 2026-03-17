---
id: 66ecdcf7c8d9a6f49094ffde
title: Passaggio 13
challengeType: 1
dashedName: step-13
---

# --description--

Nelle lezioni precedenti, hai imparato che il metodo `Math.round()` arrotonda il valore all'intero più vicino.

Ecco alcuni esempi:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Questo è diverso dai metodi `Math.floor()` e `Math.ceil()`, che arrotondano rispettivamente per difetto e per eccesso all'intero più vicino.

Crea una nuova variabile chiamata `numRounded` e assegna il risultato dell'arrotondamento del numero `2.7`. Poi, stampa il valore di `numRounded` nella console.

Sotto, crea un'altra nuova variabile chiamata `numRounded2` e assegna il risultato dell'arrotondamento del numero `11.2`. Poi, stampa il valore di `numRounded2` nella console.

# --hints--

Dovresti avere una variabile chiamata `numRounded`.

```js
assert.isNotNull(numRounded);
```

Dovresti assegnare il risultato dell'arrotondamento del numero `2.7` alla variabile `numRounded`.

```js
assert.equal(numRounded, 3);
```

Non dovresti inserire manualmente il valore di `3` per la variabile `numRounded`. Assicurati di usare il metodo `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

Dovresti stampare il valore di `numRounded` nella console.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

Dovresti avere una variabile chiamata `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

Dovresti assegnare il risultato dell'arrotondamento del numero `11.2` alla variabile `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

Non dovresti inserire manualmente il valore di `11` per la variabile `numRounded2`. Assicurati di usare il metodo `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

Dovresti stampare il valore di `numRounded2` nella console.

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
