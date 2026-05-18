---
id: af2170cad53daa0770fabdea
title: Implementieren Sie den Mutationsalgorithmus
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**Ziel:** Erfüllen Sie die untenstehenden User Stories und bestehen Sie alle Tests, um das Labor abzuschließen.

**User Stories:**

1. Erstellen Sie eine Funktion namens `mutation`, die ein Array als Argument erhält.
1. `mutation` soll `true` zurückgeben, wenn der String im ersten Element des Arrays alle Buchstaben des Strings im zweiten Element des Arrays enthält, und `false` andernfalls. Zum Beispiel:
    - `mutation(["hello", "Hello"])` soll `true` zurückgeben, weil alle Buchstaben des zweiten Strings im ersten vorhanden sind, ohne Berücksichtigung der Groß- und Kleinschreibung.
    - `mutation(["hello", "hey"])` soll `false` zurückgeben, weil der String `hello` kein `y` enthält.
    - `mutation(["Alien", "line"])` soll `true` zurückgeben, weil alle Buchstaben in `line` in `Alien` enthalten sind.

# --hints--

`mutation(["hello", "hey"])` soll `false` zurückgeben.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` soll `false` zurückgeben.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` soll `false` zurückgeben.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` soll `false` zurückgeben.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` soll `false` zurückgeben.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` soll `true` zurückgeben.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
