---
id: afd15382cdfb22c9efe8b7de
title: 實作一個 DNA 配對產生器
challengeType: 26
dashedName: implement-a-dna-pair-generator
---

# --description--

在 DNA 的雙螺旋中，鹼基總是成對組合：如果在一條鏈上有一個 <em>A</em> 鹼基，則在正對面的另一條鏈上有一個 <em>T</em> 鹼基，另一對組合是 <em>C</em> 和 <em>G</em>。

在本實驗中，你將撰寫一個函式，為提供的 DNA 鍵配對缺失的鹼基。對於提供的字串中的每個字元，尋找對應的鹼基配對字元。

例如，對於輸入 `ATCG`，傳回 `[["A", "T"], ["T", "A"], ["C", "G"], ["G", "C"]]`

<em>A</em> 鹼基與 <em>T</em> 鹼基配對、對組，<em>T</em> 鹼基與 <em>A</em> 鹼基配對、對組，<em>C</em> 與 <em>G</em> 鹼基配對、對組，最後 <em>G</em> 鹼基與 <em>C</em> 鹼基配對、對組。

**目標**：完成以下使用者故事並通過所有測試以完成實驗。

**使用者故事：**

1. 你應該有一個 `pairElement` 函式（程式），它接受任意長度的字串作為引數。
1. `pairElement` 函式（程式）應該傳回一個二維陣列，其中每個內部陣列包含兩個字串，第一個字串是輸入中的一個鹼基，第二個字串是配對的鹼基。
1. 當給定 `A` 時，該函式應將它與 `T` 配對。
1. 當給定 `T` 時，該函式應將它與 `A` 配對。
1. 當給定 `C` 時，該函式（程式）應將它與 `G` 配對。
1. 當給定 `G` 時，該函式（程式）應將它與 `C` 配對。

# --hints--

你應該創建一個名為 `pairElement` 的函式（程式）。

```js
assert.isFunction(pairElement);
```

`pairElement` 應該接受單一引數。

```js
assert.lengthOf(pairElement, 1);
```

`pairElement("ATCGA")` 應該傳回 `[["A","T"],["T","A"],["C","G"],["G","C"],["A","T"]]`。

```js
assert.deepEqual(pairElement('ATCGA'), [
  ['A', 'T'],
  ['T', 'A'],
  ['C', 'G'],
  ['G', 'C'],
  ['A', 'T']
]);
```

`pairElement("TTGAG")` 應該傳回 `[["T","A"],["T","A"],["G","C"],["A","T"],["G","C"]]`。

```js
assert.deepEqual(pairElement('TTGAG'), [
  ['T', 'A'],
  ['T', 'A'],
  ['G', 'C'],
  ['A', 'T'],
  ['G', 'C']
]);
```

`pairElement("CTCTA")` 應該傳回 `[["C","G"],["T","A"],["C","G"],["T","A"],["A","T"]]`。

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
