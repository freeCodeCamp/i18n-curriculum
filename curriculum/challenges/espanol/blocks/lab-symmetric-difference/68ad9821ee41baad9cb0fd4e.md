---
id: 68ad9821ee41baad9cb0fd4e
title: Construye una función de diferencia simétrica
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Compara dos arreglos y devuelve un nuevo arreglo con los elementos que se encuentran solo en uno de los dos arreglos dados, pero no en ambos. En otras palabras, devuelve la diferencia simétrica de los dos arreglos.

Ejemplo:

- Arreglo A: `["diamond", "stick", "apple"]`

- Arreglo B: `["stick", "emerald", "bread"]`

- Resultado: `["diamond", "apple", "emerald", "bread"]`

**Objetivo:** Cumplir con las historias de usuario a continuación y pasar todas las pruebas para completar el laboratorio.

**Historias de usuario:**

1. Tu función `diffArray` debe devolver un arreglo.
2. Tu función debe recibir dos argumentos, ambos arreglos.
3. Tu función debe usar el método `filter`.
4. Tu función debe devolver la diferencia simétrica de los dos arreglos.
5. Tu función debe devolver un arreglo vacío si no hay diferencia simétrica.
6. Tu función debe listar los elementos que se encuentran solo en el primer arreglo antes que los que se encuentran solo en el segundo arreglo, preservando su orden original dentro de cada arreglo.

# --hints--

Debes tener una función llamada `diffArray`.

```js
assert.isFunction(diffArray);
```

Tu función `diffArray` debe usar el método `filter`.

```js
const spy = __helpers.spyOn(Array.prototype, 'filter');
try {
  diffArray([1, 2], [2, 3]);
  assert.isAbove(spy.calls.length, 0);
} finally {
  spy.restore();
}
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` debería devolver `["pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` debería devolver `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` debe devolver `[]`.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` debería devolver `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` debería devolver `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` debería devolver `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` debería devolver `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` debería devolver `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` debería devolver `[]`.

```js
assert.deepEqual(diffArray(
  [],
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
