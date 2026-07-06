---
id: afd15382cdfb22c9efe8b7de
title: اقتران الحمض النووي
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

تتكون أزواج خيوط الحمض النووي من أزواج قواعد نيكليوتيدية. تمثل أزواج القواعد بواسطة الحروف <em>AT</em> و<em>CG</em>، التي تشكل اللبنات الأساسية لللولب المزدوج للحمض النووي.

يُفتقد عنصر الاقتران في خيط الحمض النووي. اكتب دالة لتطابق أزواج القواعد المفقودة للخيط المقدم. لكل حرف في السلسلة النصية المقدمة، ابحث عن حرف زوج القاعدة المقابل. أرجع النتائج كمصفوفة ثنائية الأبعاد.

على سبيل المثال، للإدخال `GCG`، أرجع `[["G", "C"], ["C","G"], ["G", "C"]]`

يُقرن الحرف وزوجه في مصفوفة، وتُجمع كل هذه المصفوفات في مصفوفة شاملة واحدة.

# --hints--

`pairElement("ATCGA")` يجب أن تُرجع `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` يجب أن تُرجع `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` يجب أن تُرجع `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`.

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
