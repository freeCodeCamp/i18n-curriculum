---
id: afd15382cdfb22c9efe8b7de
title: DNA-Paarung
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

Paare von DNA-Strängen bestehen aus Nukleobasenpaaren. Basenpaare werden durch die Zeichen <em>AT</em> und <em>CG</em> dargestellt, die die Bausteine der DNA-Doppelhelix bilden.

Dem DNA-Strang fehlt das passende Gegenstück. Schreiben Sie eine Funktion, die die fehlenden Basenpaare für den gegebenen DNA-Strang findet. Für jedes Zeichen im gegebenen String finden Sie das passende Basenpaarzeichen. Geben Sie die Ergebnisse als zweidimensionales Array zurück.

Zum Beispiel, für die Eingabe `GCG`, geben Sie `[["G", "C"], ["C","G"], ["G", "C"]]` zurück.

Das Zeichen und sein Paar werden in einem Array zusammengefasst, und alle diese Arrays werden in einem übergeordneten Array gruppiert.

# --hints--

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
function pairElement(str) {
  return str;
}

pairElement("GCG");
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
