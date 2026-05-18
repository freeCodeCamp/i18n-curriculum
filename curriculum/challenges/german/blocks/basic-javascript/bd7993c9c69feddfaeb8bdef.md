---
id: bd7993c9c69feddfaeb8bdef
title: Mehrere Werte in einer Variable mit JavaScript-Arrays speichern
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

Mit JavaScript `array` Variablen können wir mehrere Daten an einem Ort speichern.

Sie beginnen eine Array-Deklaration mit einer öffnenden eckigen Klammer, beenden sie mit einer schließenden eckigen Klammer und setzen ein Komma zwischen jede Eintragung, so:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

Ändern Sie das neue Array `myArray` so, dass es sowohl einen String als auch eine Zahl (in dieser Reihenfolge) enthält.

# --hints--

`myArray` sollte ein Array sein.

```js
assert(typeof myArray == 'object');
```

Das erste Element in `myArray` sollte ein String sein.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

Das zweite Element in `myArray` sollte eine Zahl sein.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
