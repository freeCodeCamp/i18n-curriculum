---
id: af2170cad53daa0770fabdea
title: Mutationen
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Geben Sie `true` zurück, wenn der String im ersten Element des Arrays alle Buchstaben des Strings im zweiten Element des Arrays enthält.

Zum Beispiel sollte `["hello", "Hello"]` `true` zurückgeben, weil alle Buchstaben des zweiten Strings im ersten vorhanden sind, wobei die Groß- und Kleinschreibung ignoriert wird.

Die Argumente `["hello", "hey"]` sollten `false` zurückgeben, weil der String `hello` kein `y` enthält.

Schließlich sollte `["Alien", "line"]` `true` zurückgeben, weil alle Buchstaben in `line` in `Alien` vorhanden sind.

# --hints--

`mutation(["hello", "hey"])` sollte `false` zurückgeben.

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` sollte `false` zurückgeben.

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` sollte `false` zurückgeben.

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` sollte `false` zurückgeben.

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` sollte `false` zurückgeben.

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` sollte `true` zurückgeben.

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
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
