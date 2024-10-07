---
id: 594810f028c0303b75339ace
title: Akkumulatorenfabrik
challengeType: 1
forumTopicId: 302222
dashedName: accumulator-factory
---

# --description--

Ein von Paul Graham aufgeworfenes Problem besteht darin, eine Funktion zu erstellen, die ein einziges (numerisches) Argument annimmt und eine andere Funktion zurückgibt, die ein Akkumulator ist. Die zurückgegebene Akkumulatorfunktion wiederum nimmt ebenfalls ein einzelnes numerisches Argument und gibt die Summe aller numerischen Werte zurück, die bisher an diesen Akkumulator übergeben wurden (einschließlich des Anfangswertes, der bei der Erstellung des Akkumulators übergeben wurde).

# --instructions--

Erstelle eine Funktion, die eine Zahl $n$ annimmt und Akkumulatorfunktionen erzeugt, die die Summe aller jemals an sie übergebenen Zahlen zurückgeben.

**Regeln:**

Verwenden Sie keine globalen Variablen.

**Hinweis:**

Verschlüsse speichern den äußeren Zustand.

# --hints--

`accumulator` sollte eine Funktion sein.

```js
assert(typeof accumulator === 'function');
```

`accumulator(0)` sollte eine Funktion zurückgeben.

```js
assert(typeof accumulator(0) === 'function');
```

`accumulator(0)(2)` sollte eine Zahl zurückgeben.

```js
assert(typeof accumulator(0)(2) === 'number');
```

Das Übergeben der Werte 3, -4, 1.5 und 5 sollte 5.5 zurückgeben.

```js
assert(testFn(5) === 5.5);
```

# --seed--

## --after-user-code--

```js
const testFn = typeof accumulator(3) === 'function' && accumulator(3);
if (testFn) {
  testFn(-4);
  testFn(1.5);
}
```

## --seed-contents--

```js
function accumulator(sum) {

}
```

# --solutions--

```js
function accumulator(sum) {
  return function(n) {
    return sum += n;
  };
}
```
