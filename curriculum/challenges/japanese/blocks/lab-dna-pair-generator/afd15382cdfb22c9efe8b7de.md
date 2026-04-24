---
id: afd15382cdfb22c9efe8b7de
title: DNAペアジェネレーターを実装する
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

DNAの二重らせんでは、塩基は常にペアになっています。片方の鎖に<em>A</em>塩基があれば、向かい合うもう一方の鎖には<em>T</em>塩基があり、もう一方のペアは<em>C</em>と<em>G</em>です。

このラボでは、与えられたDNA鎖の欠けている塩基ペアを見つける関数を書きます。与えられた文字列の各文字に対して、対応する塩基ペアの文字を見つけてください。

例えば、入力が`ATCG`の場合、`[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`を返します。

<em>A</em>塩基は<em>T</em>塩基とペアになり、<em>T</em>塩基は<em>A</em>塩基とペアになり、<em>C</em>は<em>G</em>塩基とペアになり、最後に<em>G</em>塩基は<em>C</em>塩基とペアになります。

**目的**：以下のユーザーストーリーを満たし、すべてのテストに合格してラボを完了してください。

**ユーザーストーリー：**

1. `pairElement`という名前の関数があり、任意の長さの文字列を引数として受け取る必要があります。
1. `pairElement`関数は2次元配列を返す必要があり、各内側の配列には2つの文字列が含まれます。最初の文字列は入力の1つの塩基で、2番目の文字列はペアの塩基です。
1. `A`が与えられた場合、関数は`T`とペアにする必要があります。
1. `T`が与えられた場合、関数は`A`とペアにする必要があります。
1. `C`が与えられた場合、関数は`G`とペアにする必要があります。
1. `G`が与えられた場合、関数は`C`とペアにする必要があります。

# --hints--

`pairElement`という名前の関数を作成してください。

```js
assert.isFunction(pairElement);
```

`pairElement`は1つの引数を取る必要があります。

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")`は`[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`を返す必要があります。

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")`は`[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`を返す必要があります。

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")`は`[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`を返す必要があります。

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
