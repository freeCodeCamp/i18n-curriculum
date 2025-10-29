---
id: 66ecdcf7c8d9a6f49094ffde
title: Passo 11
challengeType: 1
dashedName: step-11
---

# --description--

Nas lições anteriores, você aprendeu que o método `Math.round()` arredonda o valor para o inteiro mais próximo.

Aqui estão alguns exemplos:

```js
Math.round(6.7); // 7
Math.round(3.2); // 3
```

Isto difere dos métodos `Math.floor()` e `Math.ceil()`, que arredondam para baixo e para cima ao inteiro mais próximo, respectivamente.

Crie uma nova variável chamada `numRounded` e atribua o resultado do arredondamento do número `2.7`. Então, registre o valor de `numRounded` no console.

Abaixo disso, crie outra nova variável chamada `numRounded2` e atribua o resultado do arredondamento do número `11.2`. Então, registre o valor de `numRounded2` no console.

# --hints--

Você deve ter uma variável chamada `numRounded`.

```js
assert.isNotNull(numRounded);
```

Você deve atribuir o resultado do arredondamento do número `2.7` à variável `numRounded`.

```js
assert.equal(numRounded, 3);
```

Você não deve codificar o valor `3` diretamente para a variável `numRounded`. Certifique-se de que está usando o método `Math.round()`.

```js
assert.notMatch(code, /numRounded\s*=\s*3/);
```

Você deve registrar o valor de `numRounded` no console.

```js
assert.match(code, /console\.log\(\s*numRounded\s*\)/);
```

Você deve ter uma variável chamada `numRounded2`.

```js
assert.isNotNull(numRounded2);
```

Você deve atribuir o resultado do arredondamento do número `11.2` à variável `numRounded2`.

```js
assert.equal(numRounded2, 11);
```

Você não deve codificar o valor `11` diretamente para a variável `numRounded2`. Certifique-se de que está usando o método `Math.round()`.

```js
assert.notMatch(code, /numRounded2\s*=\s*11/);
```

Você deve registrar o valor de `numRounded2` no console.

```js
assert.match(code, /console\.log\(\s*numRounded2\s*\)/);
```

# --seed--

## --seed-contents--

```js
const botName = "MathBot";
const greeting = `Hi there! My name is ${botName} and I am here to teach you about the Math object!`;

console.log(greeting);

console.log("The Math.random() method returns a pseudo random number between 0 and less than 1.");

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

console.log("The Math.ceil() method rounds the value up to the nearest whole integer.");

const numRoundedUp = Math.ceil(3.2);
console.log(numRoundedUp);

console.log("The Math.round() method rounds the value to the nearest whole integer.");

--fcc-editable-region--

--fcc-editable-region--
```
