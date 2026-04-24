---
id: 5eb3e4af7d0e7b760b46cedc
title: セットの統合
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

2つのアイテムのセットが与えられたとき、もしどちらかのセットに共通のアイテムがあれば、それらのセットに*統合*を適用した結果は、以下の内容を持つセットのセットになります：

<ul>
  <li>2つの入力セットの間に共通のアイテムが存在しない場合は、2つの入力セットそのもの。</li>
  <li>共通のアイテムがある場合は、2つの入力セットの和集合となる単一のセット。</li>
</ul>

N > 2 のN個のセットが与えられた場合、結果は2つのセットのすべての組み合わせを繰り返し統合し、これ以上統合できるセットのペアがなくなるまで続けたものと同じです。N < 2 の場合は統合に厳密な意味はなく、入力をそのまま返してかまいません。

いくつか例を示します：

**例1：**

2つのセット `{A,B}` と `{C,D}` が与えられた場合、セット間に共通要素がなく、結果は入力と同じです。

**例2：**

2つのセット `{A,B}` と `{B,D}` が与えられた場合、セット間に共通要素 `B` があり、結果は単一のセット `{B,D,A}` です。（セット内のアイテムの順序は重要ではありません：`{A,B,D}` は `{B,D,A}` や `{D,A,B}` と同じです）

**例3：**

3つのセット `{A,B}`、`{C,D}`、`{D,B}` が与えられた場合、セット `{A,B}` と `{C,D}` の間に共通要素はありませんが、セット `{A,B}` と `{D,B}` は共通要素を持ち、統合されて結果 `{B,D,A}` となります。この結果と残りのセット `{C,D}` を比較すると共通要素があり、最終的に単一のセット `{A,B,C,D}` に統合されます。

**例4：**

5つのセット：

`{H,I,K}`、`{A,B}`、`{C,D}`、`{D,B}`、および `{F,G,H}`

の統合結果は2つのセット：

`{A, C, B, D}` と `{G, F, I, H, K}`

となります。

# --instructions--

文字列の配列をパラメータとして受け取る関数を書いてください。各文字列はセットを表し、文字がセットの要素を表します。関数は統合されたセットを含む2次元配列を返す必要があります。注意：各セットはソートされている必要があります。

# --hints--

`setConsolidation` は関数であるべきです。

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` は配列を返すべきです。

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` は `[["C", "D"], ["A", "B"]]` を返すべきです。

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` は `[["A", "B", "D"]]` を返すべきです。

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` は `[["A", "B", "C", "D"]]` を返すべきです。

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` は `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]` を返すべきです。

```js
assert.deepEqual(setConsolidation(['HIK', 'AB', 'CD', 'DB', 'FGH']), [
  ['F', 'G', 'H', 'I', 'K'],
  ['A', 'B', 'C', 'D']
]);
```

# --seed--

## --seed-contents--

```js
function setConsolidation(sets) {

}
```

# --solutions--

```js
function setConsolidation(sets) {
  function addAll(l1, l2) {
    l2.forEach(function(e) {
      if (l1.indexOf(e) == -1) l1.push(e);
    });
  }

  function consolidate(sets) {
    var r = [];
    for (var i = 0; i < sets.length; i++) {
      var s = sets[i];
      {
        var new_r = [];
        new_r.push(s);
        for (var j = 0; j < r.length; j++) {
          var x = r[j];
          {
            if (
              !(function(c1, c2) {
                for (var i = 0; i < c1.length; i++) {
                  if (c2.indexOf(c1[i]) >= 0) return false;
                }
                return true;
              })(s, x)
            ) {
              (function(l1, l2) {
                addAll(l1, l2);
              })(s, x);
            } else {
              new_r.push(x);
            }
          }
        }
        r = new_r;
      }
    }
    return r;
  }

  function consolidateR(sets) {
    if (sets.length < 2) return sets;
    var r = [];
    r.push(sets[0]);
    {
      var arr1 = consolidateR(sets.slice(1, sets.length));
      for (var i = 0; i < arr1.length; i++) {
        var x = arr1[i];
        {
          if (
            !(function(c1, c2) {
              for (var i = 0; i < c1.length; i++) {
                if (c2.indexOf(c1[i]) >= 0) return false;
              }
              return true;
            })(r[0], x)
          ) {
            (function(l1, l2) {
              return l1.push.apply(l1, l2);
            })(r[0], x);
          } else {
            r.push(x);
          }
        }
      }
    }
    return r;
  }

  function hashSetList(set) {
    var r = [];
    for (var i = 0; i < set.length; i++) {
      r.push([]);
      for (var j = 0; j < set[i].length; j++)
        (function(s, e) {
          if (s.indexOf(e) == -1) {
            s.push(e);
            return true;
          } else {
            return false;
          }
        })(r[i], set[i].charAt(j));
    }
    return r;
  }

  var h1 = consolidate(hashSetList(sets)).map(function(e) {
    e.sort();
    return e;
  });
  return h1;
}
```
