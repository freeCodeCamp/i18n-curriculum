---
id: afd15382cdfb22c9efe8b7de
title: 实现一个 DNA 点对生成器
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

在 DNA 的双螺旋中，碱基总是成对结合：如果一条链上有一个 <em>A</em> 碱基，另一条链正对面就有一个 <em>T</em> 碱基，另一对是 <em>C</em> 和 <em>G</em>。

在本实验中，你将编写一个函数来匹配所提供 DNA 链中缺失的碱基点对。对于所提供字串中的每个字符，查找对应的碱基点对字符。

例如，对于输入 `ATCG`，返回 `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

<em>A</em> 碱基与 <em>T</em> 碱基形成点对，<em>T</em> 碱基与 <em>A</em> 碱基形成点对，<em>C</em> 与 <em>G</em> 碱基形成点对，最后 <em>G</em> 碱基与 <em>C</em> 碱基形成点对。

**目标**：完成以下用户故事并通过所有测试以完成实验。

**用户故事：**

1. 你应该有一个 `pairElement` 函数，它接受任意长度的字串作为参数。
1. `pairElement` 函数应返回一个二维数组，其中每个内部数组包含两个字串，第一个字串是来自输入的一个碱基，第二个字串是配对的碱基。
1. 当给定 `A` 时，函数应将其与 `T` 配对。
1. 当给定 `T` 时，函数应将其与 `A` 配对。
1. 当给定 `C` 时，函数应将其与 `G` 配对。
1. 当给定 `G` 时，函数应将其与 `C` 配对。

# --hints--

你应该创建一个名为 `pairElement` 的函数。

```js
assert.isFunction(pairElement);
```

`pairElement` 应该接受一个单一参数。

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` 应返回 `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`。

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` 应返回 `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`。

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` 应返回 `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`。

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
