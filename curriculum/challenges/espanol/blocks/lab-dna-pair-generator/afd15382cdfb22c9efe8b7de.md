---
id: afd15382cdfb22c9efe8b7de
title: Implementa un Generador de Pares de ADN
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

En la doble hélice del ADN, las bases siempre están emparejadas: si en una hebra hay una base <em>A</em>, en la hebra opuesta directamente enfrente hay una base <em>T</em>, la otra pareja es <em>C</em> y <em>G</em>.

En este laboratorio, escribirás una función para encontrar las bases complementarias faltantes de la cadena de ADN proporcionada. Para cada carácter en la cadena proporcionada, encuentra el carácter de la base complementaria.

Por ejemplo, para la entrada `ATCG`, devuelve `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

La base <em>A</em> se empareja con una base <em>T</em>, la base <em>T</em> se empareja con una base <em>A</em>, la base <em>C</em> se empareja con la base <em>G</em>, y finalmente la base <em>G</em> se empareja con una base <em>C</em>.

**Objetivo**: Cumple las historias de usuario a continuación y logra que todas las pruebas pasen para completar el laboratorio.

**Historias de usuario:**

1. Deberías tener una función `pairElement` que tome una cadena de cualquier longitud como argumento.
1. La función `pairElement` debe devolver un arreglo 2d, donde cada arreglo interno tiene dos cadenas dentro, la primera cadena es una base del input, y la segunda cadena la base emparejada.
1. Cuando se recibe `A`, la función debe emparejarlo con `T`.
1. Cuando se recibe `T`, la función debe emparejarlo con `A`.
1. Cuando se recibe `C`, la función debe emparejarlo con `G`.
1. Cuando se recibe `G`, la función debe emparejarlo con `C`.

# --hints--

Debes crear una función llamada `pairElement`.

```js
assert.isFunction(pairElement);
```

`pairElement` debe tomar un solo argumento.

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` debe devolver `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` debe devolver `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` debe devolver `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

```js
assert.deepEqual(pairElement('CTCTA'), [
  ['C', 'G'],
  ['T', 'A'],
  ['C', 'G'],
  ['T', 'A'],
  ['A', 'T']
]);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var lookup = Object.create(null);
lookup.A = 'T';
lookup.T = 'A';
lookup.C = 'G';
lookup.G = 'C';

function pairElement(str) {
 return str.split('').map(function(p) {return [p, lookup[p]];});
}
```
