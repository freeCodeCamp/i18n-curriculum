---
id: 587d7b85367417b2b2512b3a
title: Capturar argumentos passados na ordem errada ao chamar uma função
challengeType: 1
forumTopicId: 301184
dashedName: catch-arguments-passed-in-the-wrong-order-when-calling-a-function
---

# --description--

Continuing the discussion on calling functions, the next bug to watch out for is when a function's arguments are supplied in the incorrect order. If the arguments are different types, such as a function expecting an array and an integer, this will likely throw a runtime error. If the arguments are the same type (all integers, for example), then the logic of the code won't make sense. Make sure to supply all required arguments, in the proper order to avoid these issues.

# --instructions--

A função `raiseToPower` eleva uma base para um expoente. Infelizmente, não é chamada corretamente - corrija o código para que o valor de `power` seja o 8 esperado.

# --hints--

O código deve corrigir a variável `power` para que seja igual a 2 elevado a 3ª potência, e não 3 elevado a 2ª potência.

```js
assert(power == 8);
```

O código deve usar a ordem correta dos argumentos para a chamada da função `raiseToPower`.

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
