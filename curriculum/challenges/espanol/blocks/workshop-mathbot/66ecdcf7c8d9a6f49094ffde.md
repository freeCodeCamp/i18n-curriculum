---
id: 66ecdcf7c8d9a6f49094ffde
title: Paso 13
challengeType: 1
dashedName: step-13
---

# --description--

En lecciones anteriores, aprendiste que el método `Math.round()` redondea el valor al entero más cercano.

Aquí hay algunos ejemplos:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Esto difiere de los métodos `Math.floor()` y `Math.ceil()`, que redondean hacia abajo y hacia arriba al entero más cercano, respectivamente.

Crea una nueva variable llamada `numRounded` y asigna el resultado de redondear el número `2.7`. Luego, registra el valor de `numRounded` en la consola.

Debajo de eso, crea otra nueva variable llamada `numRounded2` y asigna el resultado de redondear el número `11.2`. Luego, registra el valor de `numRounded2` en la consola.

# --hints--

Debes tener una variable llamada `numRounded`.

```js
assert.isNotNull(numRounded);
```

Debes asignar el resultado de redondear el número `2.7` a la variable `numRounded`.

```js
assert.equal(numRounded, 3);
```

No debes codificar manualmente el valor de `3` para la variable `numRounded`. Asegúrate de utilizar el método `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

Debes registrar el valor de `numRounded` en la consola.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

Debes tener una variable llamada `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

Debes asignar el resultado de redondear el número `11.2` a la variable `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

No debes codificar manualmente el valor de `11` para la variable `numRounded2`. Asegúrate de utilizar el método `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

Debes registrar el valor de `numRounded2` en la consola.

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
