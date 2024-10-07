---
id: 587d7b85367417b2b2512b3a
title: Captura argumentos pasados en el orden incorrecto al llamar a una función
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

La función `raiseToPower` eleva una base a un exponente. Desafortunadamente, no se llama correctamente - corrige el código para que el valor de `power` sea el 8 esperado.

# --hints--

Tu código debe arreglar la variable `power` para que sea igual a 2 elevado a la 3ª potencia, no a 3 elevado a la 2ª potencia.

```js
assert(power == 8);
```

Tu código debe utilizar el orden correcto de los argumentos para la llamada a la función `raiseToPower`.

```js
assert(__helpers.removeJSComments(code).match(/raiseToPower\(\s*?base\s*?,\s*?exp\s*?\);/g));
```

# --seed--

## --seed-contents--

```js
function raiseToPower(b, e) {
  return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(exp, base);
console.log(power);
```

# --solutions--

```js
function raiseToPower(b, e) {
 return Math.pow(b, e);
}

let base = 2;
let exp = 3;
let power = raiseToPower(base, exp);
console.log(power);
```
