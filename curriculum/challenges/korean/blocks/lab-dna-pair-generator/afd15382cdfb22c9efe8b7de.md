---
id: afd15382cdfb22c9efe8b7de
title: DNA 염기쌍 생성기 구현하기
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

DNA의 이중 나선에서 염기들은 항상 쌍을 이룹니다: 한 가닥에 <em>A</em> 염기가 있으면, 바로 맞은편 다른 가닥에는 <em>T</em> 염기가 있고, 다른 쌍은 <em>C</em>와 <em>G</em>입니다.

이 실습에서는 주어진 DNA 가닥에 대해 누락된 염기쌍을 찾아주는 함수를 작성할 것입니다. 주어진 문자열의 각 문자에 대해 염기쌍 문자를 찾으세요.

예를 들어, 입력이 `ATCG`일 때, `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`을 반환해야 합니다.

<em>A</em> 염기는 <em>T</em> 염기와 쌍을 이루고, <em>T</em> 염기는 <em>A</em> 염기와 쌍을 이루며, <em>C</em>는 <em>G</em> 염기와, 마지막으로 <em>G</em> 염기는 <em>C</em> 염기와 쌍을 이룹니다.

**목표**: 아래 사용자 스토리를 모두 충족하고 모든 테스트를 통과하여 실습을 완료하세요.

**사용자 스토리:**

1. `pairElement`라는 이름의 함수를 작성해야 하며, 이 함수는 임의 길이의 문자열을 인수로 받습니다.
1. `pairElement` 함수는 2차원 배열을 반환해야 하며, 각 내부 배열은 두 개의 문자열을 포함합니다. 첫 번째 문자열은 입력의 한 염기이고, 두 번째 문자열은 쌍을 이루는 염기입니다.
1. `A`가 주어지면, 함수는 `T`와 쌍을 이루어야 합니다.
1. `T`가 주어지면, 함수는 `A`와 쌍을 이루어야 합니다.
1. `C`가 주어지면, 함수는 `G`와 쌍을 이루어야 합니다.
1. `G`가 주어지면, 함수는 `C`와 쌍을 이루어야 합니다.

# --hints--

`pairElement`라는 이름의 함수를 만드세요.

```js
assert.isFunction(pairElement);
```

`pairElement`는 하나의 인수를 받아야 합니다.

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")`는 `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`를 반환해야 합니다.

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

`pairElement("CTCTA")`는 `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`를 반환해야 합니다.

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
