---
id: 68ad9821ee41baad9cb0fd4e
title: Eine Funktion für die symmetrische Differenz erstellen
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Vergleichen Sie zwei Arrays und geben Sie ein neues Array zurück, das alle Elemente enthält, die nur in einem der beiden Arrays vorkommen, aber nicht in beiden. Anders gesagt: Geben Sie die symmetrische Differenz der beiden Arrays zurück.

Beispiel:

- Array A: `["diamond", "stick", "apple"]`

- Array B: `["stick", "emerald", "bread"]`

Ergebnis: `["diamond", "apple", "emerald", "bread"]`

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests, um die Aufgabe abzuschließen.

**User Stories:**

1. Ihre Funktion `diffArray` sollte ein Array zurückgeben.
2. Ihre Funktion sollte zwei Argumente annehmen, von denen beide Arrays sind.
3. Ihre Funktion sollte die Methode `filter` verwenden.
4. Ihre Funktion sollte die symmetrische Differenz der beiden Arrays zurückgeben.  
5. Ihre Funktion sollte ein leeres Array zurückgeben, wenn keine symmetrische Differenz vorliegt.


# --hints--

Sie sollten eine Funktion mit dem Namen `diffArray` haben.

```js
assert.isFunction(diffArray);
```

Die Funktion `diffArray` sollte die Methode `filter` verwenden, um Elemente herauszufiltern, die in beiden Arrays vorhanden sind.

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` sollte `["pink wool"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` sollte `["diorite", "pink wool"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray` sollte ein leeres Array zurückgeben, wenn sie mit zwei identischen Arrays aufgerufen wird.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` sollte `["pen", "pencil", "notebook"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` sollte `["car", "train", "plane"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` sollte `["banana", "grape"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` sollte `["apple", "banana"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` sollte `["apple", "banana"]` zurückgeben.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` sollte `[]` zurückgeben.

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
