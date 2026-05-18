---
id: afd15382cdfb22c9efe8b7de
title: Einen DNA-Paar-Generator implementieren
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

In der Doppelhelix der DNA sind die Basen immer paarweise verbunden: Wenn auf einem Strang eine <em>A</em>-Base ist, befindet sich auf dem gegenüberliegenden Strang direkt davor eine <em>T</em>-Base, das andere Paar besteht aus <em>C</em> und <em>G</em>.

In diesem Labor schreiben Sie eine Funktion, die die fehlenden Basenpaare für den gegebenen DNA-Strang ermittelt. Für jedes Zeichen im übergebenen String finden Sie das passende Basenpaar.

Zum Beispiel, für die Eingabe `ATCG`, geben Sie `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]` zurück.

Die <em>A</em>-Base wird mit einer <em>T</em>-Base gepaart, die <em>T</em>-Base mit einer <em>A</em>-Base, die <em>C</em> mit der <em>G</em>-Base, und schließlich wird die <em>G</em>-Base mit einer <em>C</em>-Base gepaart.

**Ziel**: Erfüllen Sie die untenstehenden User Stories und lassen Sie alle Tests erfolgreich durchlaufen, um das Labor abzuschließen.

**User Stories:**

1. Sie sollten eine `pairElement`-Funktion haben, die einen String beliebiger Länge als Argument annimmt.
1. Die `pairElement`-Funktion sollte ein 2D-Array zurückgeben, wobei jedes innere Array zwei Strings enthält: Der erste String ist eine Base aus der Eingabe, der zweite String das gepaarte Basenpaar.
1. Wenn `A` übergeben wird, sollte die Funktion es mit `T` paaren.
1. Wenn `T` übergeben wird, sollte die Funktion es mit `A` paaren.
1. Wenn `C` übergeben wird, sollte die Funktion es mit `G` paaren.
1. Wenn `G` übergeben wird, sollte die Funktion es mit `C` paaren.

# --hints--

Sie sollten eine Funktion mit dem Namen `pairElement` erstellen.

```js
assert.isFunction(pairElement);
```

`pairElement` sollte ein einzelnes Argument annehmen.

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` sollte `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]` zurückgeben.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` sollte `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]` zurückgeben.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` sollte `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]` zurückgeben.

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
