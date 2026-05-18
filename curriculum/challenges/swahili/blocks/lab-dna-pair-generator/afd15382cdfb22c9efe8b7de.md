---
id: afd15382cdfb22c9efe8b7de
title: Tekeleza kizalishaji cha jozi za DNA
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

Katika heliksi mara mbili ya DNA, misingi huwa imeunganishwa pamoja kila wakati: ikiwa kwenye tawi moja kuna msingi wa <em>A</em>, kwenye tawi lingine moja kwa moja mbele kuna msingi wa <em>T</em>, jozi nyingine ni <em>C</em> na <em>G</em>.

Katika maabara hii, utaandika kitendakazi cha kuoanisha misingi iliyokosekana ya jozi kwa tawi la DNA lililotolewa. Kwa kila herufi katika mfuatano wa herufi uliotolewa, tafuta msingi wa jozi.

Kwa mfano, kwa ingizo `ATCG`, rudisha `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

Msingi wa <em>A</em> unaoanishwa na msingi wa <em>T</em>, msingi wa <em>T</em> unaoanishwa na msingi wa <em>A</em>, <em>C</em> unaoanishwa na msingi wa <em>G</em>, na hatimaye msingi wa <em>G</em> unaoanishwa na msingi wa <em>C</em>.

**Lengo**: Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara.

**Hadithi za watumizi:**

1. Unapaswa kuwa na kitendakazi cha `pairElement` kinachopokea mfuatano wa herufi wa urefu wowote kama hoja.
1. Kitendakazi cha `pairElement` kinapaswa kurudisha safu ya data ya 2d, ambapo kila safu ndogo ina mfuatano wa herufi mbili ndani, mfuatano wa kwanza ni msingi mmoja kutoka kwenye ingizo, na mfuatano wa pili ni msingi wa jozi.
1. Ukipokea `A`, kitendakazi kinapaswa kuoanisha na `T`.
1. Ukipokea `T`, kitendakazi kinapaswa kuoanisha na `A`.
1. Ukipokea `C`, kitendakazi kinapaswa kuoanisha na `G`.
1. Ukipokea `G`, kitendakazi kinapaswa kuoanisha na `C`.

# --hints--

Unapaswa kuunda kitendakazi kinachoitwa `pairElement`.

```js
assert.isFunction(pairElement);
```

`pairElement` inapaswa kupokea hoja moja.

```js
assert.lengthOf(pairElement, 1);
```

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
