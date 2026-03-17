---
id: afd15382cdfb22c9efe8b7de
title: implementare un generatore di coppie di DNA
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

Nella doppia elica del DNA, le basi sono sempre accoppiate insieme: se su un filamento c’è una base <em>A</em>, sul filamento opposto direttamente di fronte c’è una base <em>T</em>, l’altra coppia è <em>C</em> e <em>G</em>.

In questo laboratorio, scriverai una funzione per abbinare le basi mancanti per il filamento di DNA fornito. Per ogni carattere nella stringa fornita, trova il carattere della base accoppiata.

Per esempio, per l’input `ATCG`, restituisci `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

La base <em>A</em> si abbina con la base <em>T</em>, la base <em>T</em> si abbina con la base <em>A</em>, la base <em>C</em> si abbina con la base <em>G</em>, e infine la base <em>G</em> si abbina con la base <em>C</em>.

**Obiettivo**: soddisfa le storie utente qui sotto e fai superare tutti i test per completare il laboratorio.

**Storie utente:**

1. Dovresti avere una funzione `pairElement` che prende una stringa di qualsiasi lunghezza come argomento.
1. La funzione `pairElement` dovrebbe restituire un array 2d, dove ogni array interno contiene due stringhe, la prima stringa è una base dell’input e la seconda stringa è la base accoppiata.
1. Quando riceve `A`, la funzione dovrebbe abbinarla con `T`.
1. Quando riceve `T`, la funzione dovrebbe abbinarla con `A`.
1. Quando riceve `C`, la funzione dovrebbe abbinarla con `G`.
1. Quando riceve `G`, la funzione dovrebbe abbinarla con `C`.

# --hints--

Dovresti creare una funzione chiamata `pairElement`.

```js
assert.isFunction(pairElement);
```

`pairElement` dovrebbe prendere un solo argomento.

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` dovrebbe restituire `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` dovrebbe restituire `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` dovrebbe restituire `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

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
