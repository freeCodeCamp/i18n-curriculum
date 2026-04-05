---
id: afd15382cdfb22c9efe8b7de
title: DNA 염기쌍 맞추기
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

DNA 가닥 쌍은 뉴클레오베이스 쌍으로 구성됩니다. 염기쌍은 DNA 이중 나선의 구성 요소를 이루는 문자 <em>AT</em>와 <em>CG</em>로 나타냅니다.

DNA 가닥에 짝이 되는 염기가 빠져 있습니다. 주어진 DNA 가닥에 대해 빠진 염기쌍을 맞추는 함수를 작성하세요. 주어진 문자열의 각 문자에 대해 짝이 되는 염기 문자를 찾아야 합니다. 결과는 2차원 배열로 반환하세요.

예를 들어, 입력 `GCG`에 대해 `[["G", "C"], ["C","G"], ["G", "C"]]`을 반환하세요.

문자와 그 짝이 배열로 묶이고, 모든 배열이 하나의 큰 배열로 그룹화됩니다.

# --hints--

`pairElement("ATCGA")`는 `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`을 반환해야 합니다.

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")`는 `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`를 반환해야 합니다.

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")`는 `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`을 반환해야 합니다.

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
