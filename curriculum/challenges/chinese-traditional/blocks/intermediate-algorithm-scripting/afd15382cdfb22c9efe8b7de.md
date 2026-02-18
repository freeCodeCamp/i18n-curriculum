---
id: afd15382cdfb22c9efe8b7de
title: DNA 配對
challengeType: 1
forumTopicId: 16009
dashedName: dna-pairing
---

# --description--

DNA 鍵鏈對組成核苷酸鹼基對。鹼基對由字元 <em>AT</em> 和 <em>CG</em> 表述，這些字元形成 DNA 雙螺旋的建造區塊。

DNA 鍵鏈缺少配對元素。撰寫一個函式，為提供的 DNA 鍵鏈配對缺失的鹼基。對於提供的字串中的每個字元，尋找對應的鹼基配對字元。將結果以二維陣列傳回。

例如，對於輸入 `GCG`，傳回 `[["G", "C"], ["C","G"], ["G", "C"]]`

該字元及其配對被配對成一個陣列，所有陣列則被群組成一個封裝陣列。

# --hints--

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
