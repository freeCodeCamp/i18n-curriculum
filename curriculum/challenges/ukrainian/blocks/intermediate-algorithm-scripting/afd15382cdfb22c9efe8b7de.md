---
id: afd15382cdfb22c9efe8b7de
title: Парування ДНК
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

Пари ниток ДНК складаються з пар нуклеобаз. Пара основ представлена символами <em>AT</em> та <em>CG</em>, які утворюють будівельні блоки подвійної спіралі ДНК.

У нитці ДНК бракує парного елемента. Напишіть функцію, щоб підібрати відсутні пари основ для заданої нитки ДНК. Для кожного символу у наданому рядку знайдіть символ парної основи. Поверніть результати у вигляді двовимірного масиву.

Наприклад, для вхідних даних `GCG` поверніть `[["G", "C"], ["C","G"], ["G", "C"]]`

Символ і його пара згруповані в масив, а всі ці масиви об’єднані в один загальний масив.

# --hints--

`pairElement("ATCGA")` має повертати `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` має повертати `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` має повертати `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

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
