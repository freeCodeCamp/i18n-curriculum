---
id: ae9defd7acaf69703ab432ea
title: Implemente um Calculador de MMC Baseado em Intervalo
challengeType: 26
dashedName: implement-a-range-based-lcm-calculator
---

# --description--

Neste laboratório, você criará uma função que recebe um array de dois números e retorna o mínimo múltiplo comum (MMC) desses dois números e de todos os números entre eles.

**Objetivo**: Cumprir as user stories abaixo e fazer com que todos os testes passem para completar o laboratório.

**Histórias de Usuário**

1. Você deve ter uma função `smallestCommons` que aceita um array de dois números como argumento.
1. A função `smallestCommons` deve retornar o menor múltiplo comum que seja divisível uniformemente por ambos os números e por todos os números sequenciais no intervalo entre eles.
1. A função deve lidar com entradas onde os dois números não estão em ordem numérica.

# --hints--

Você deve ter uma função `smallestCommons`.

```js
assert.isFunction(smallestCommons);
```

`smallestCommons([1, 5])` deve retornar um número.

```js
assert.isNumber(smallestCommons([1, 5]));
```

`smallestCommons([1, 5])` deve retornar `60`.

```js
assert.strictEqual(smallestCommons([1, 5]), 60);
```

`smallestCommons([5, 1])` deve retornar `60`.

```js
assert.strictEqual(smallestCommons([5, 1]), 60);
```

`smallestCommons([2, 10])` deve retornar `2520`.

```js
assert.strictEqual(smallestCommons([2, 10]), 2520);
```

`smallestCommons([1, 13])` deve retornar `360360`.

```js
assert.strictEqual(smallestCommons([1, 13]), 360360);
```

`smallestCommons([23, 18])` deve retornar `6056820`.

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
