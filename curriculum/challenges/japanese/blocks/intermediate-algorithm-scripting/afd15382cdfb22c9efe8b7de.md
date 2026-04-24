---
id: afd15382cdfb22c9efe8b7de
title: DNAの塩基対
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

DNAの鎖は塩基対のペアで構成されています。塩基対は文字で表され、<em>AT</em> と <em>CG</em> がDNA二重らせんの構成要素となっています。

DNAの鎖には対になる塩基が欠けています。与えられたDNA鎖の欠けている塩基対を見つける関数を書いてください。与えられた文字列の各文字に対して、対応する塩基対の文字を見つけてください。結果は2次元配列として返してください。

例えば、入力が `GCG` の場合、 `[["G", "C"], ["C","G"], ["G", "C"]]` を返します。

文字とその対になる塩基は配列でペアにされ、すべてのペア配列は1つの大きな配列にまとめられます。

# --hints--

`pairElement("ATCGA")` は `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]` を返すべきです。

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` は `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]` を返すべきです。

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` は `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]` を返すべきです。

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
