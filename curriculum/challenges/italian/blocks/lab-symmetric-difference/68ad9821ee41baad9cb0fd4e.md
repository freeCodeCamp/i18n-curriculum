---
id: 68ad9821ee41baad9cb0fd4e
title: Crea una funzione per la differenza simmetrica
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Confronta due array e restituisci un nuovo array con tutti gli elementi presenti solo in uno dei due array dati, ma non in entrambi. In altre parole, restituisci la differenza simmetrica dei due array.

Esempio:

- Array A: `["diamond", "stick", "apple"]`

- Array B: `["stick", "emerald", "bread"]`

Risultato: `["diamond", "apple", "emerald", "bread"]`

**Obiettivo:** Completa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. La tua funzione `diffArray` dovrebbe restituire un array.
2. La tua funzione dovrebbe prendere due argomenti, entrambi array.
3. La tua funzione dovrebbe usare il metodo `filter`.
4. La tua funzione dovrebbe restituire la differenza simmetrica dei due array.  
5. La tua funzione dovrebbe restituire un array vuoto se non c’è differenza simmetrica.


# --hints--

Dovresti avere una funzione chiamata `diffArray`.

```js
assert.isFunction(diffArray);
```

La funzione `diffArray` dovrebbe usare il metodo `filter` per filtrare gli elementi presenti in entrambi gli array.

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` dovrebbe restituire `["pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` dovrebbe restituire `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray` dovrebbe restituire un array vuoto se chiamata con due array identici.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` dovrebbe restituire `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` dovrebbe restituire `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` dovrebbe restituire `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` dovrebbe restituire `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` dovrebbe restituire `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` dovrebbe restituire `[]`.

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
