---
id: af2170cad53daa0770fabdea
title: Mutations
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Return `true` if the string in the first element of the array contains all of the letters of the string in the second element of the array.

Zum Beispiel sollte `["hello", "Hello"]` den Wert `true` zurückgeben, weil unabhängig von der Groß- und Kleinschreibung, alle Buchstaben des zweiten Strings im ersten enthalten sind.

Die Argumente `["hello", "hey"]` sollten `false` zurückgeben, weil der String `hello` kein `y` beinhaltet.

Schließlich sollte `["Alien", "line"]` den Wert `true` zurückgeben, weil alle Buchstaben von `line` in `Alien` vorhanden sind.

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
