---
id: afd15382cdfb22c9efe8b7de
title: Kuunganisha jozi za DNA
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

Jozi za safu za DNA zinaundwa na jozi za misingi ya nucleobase. Jozi za misingi zinawakilishwa na herufi <em>AT</em> na <em>CG</em>, ambazo huunda vipande vya msingi vya heliksi mbili ya DNA.

Safu ya DNA inakosa kipengele cha kuunganisha jozi. Andika kitendakazi cha kuoanisha jozi za misingi zilizokosekana kwa safu ya DNA iliyotolewa. Kwa kila herufi katika mfuatano wa herufi uliotolewa, tafuta herufi ya jozi yake ya msingi. Rudisha matokeo kama safu ya data ya vipande viwili.

Kwa mfano, kwa ingizo `GCG`, rudisha `[["G", "C"], ["C","G"], ["G", "C"]]`

Herufi na jozi yake huunganishwa katika safu ya data, na safu zote huunganishwa pamoja katika safu moja kubwa.

# --hints--

`pairElement("ATCGA")` inapaswa kurudisha `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` inapaswa kurudisha `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` inapaswa kurudisha `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

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
