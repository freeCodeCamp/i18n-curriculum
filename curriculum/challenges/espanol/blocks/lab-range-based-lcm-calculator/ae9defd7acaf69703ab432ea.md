---
id: ae9defd7acaf69703ab432ea
title: Implementa una calculadora de MCM basada en rangos
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

En este laboratorio, crearás una función que recibe un arreglo de dos números y devuelve el mínimo común múltiplo (LCM) de esos dos números y de todos los números entre ellos.

**Objetivo**: Cumple las historias de usuario a continuación y logra que todas las pruebas pasen para completar el laboratorio.

**Historias de Usuario**

1. Debes tener una función `smallestCommons` que acepte un arreglo de dos números como argumento.
1. La función `smallestCommons` debe devolver el múltiplo común más pequeño que sea divisible de manera uniforme por ambos números y por todos los números secuenciales en el rango entre ellos.
1. La función debe manejar la entrada donde los dos números no están en orden numérico.

# --hints--

Deberías tener una función `smallestCommons`.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` debe devolver un número.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` debería devolver `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` debería devolver `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` debería devolver `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` debería devolver `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` debería devolver `6056820`.

```js
assert.strictEqual(smallestCommons([23, 18]), 6056820);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function smallestCommons(arr) {
  let [min, max] = arr.sort((a, b) => a - b);

  function gcd(a, b) {
    return b === 0 ? a : gcd(b, a % b);
  }

  function lcm(a, b) {
    return (a * b) / gcd(a, b);
  }

  let multiple = min;

  for (let i = min + 1; i <= max; i++) {
    multiple = lcm(multiple, i);
  }

  return multiple;
}
```
