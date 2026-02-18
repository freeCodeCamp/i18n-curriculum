---
id: 5eb3e4af7d0e7b760b46cedc
title: 設定合併
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

給定兩組項目，若任一項目在任一組中共有，則對這些組套用 *consolidation* 的結果是一組組，其內容為：

<ul>
  <li>The two input sets if no common item exists between the two input sets of items.</li>
  <li>The single set that is the union of the two input sets if they share a common item.</li>
</ul>

給定 N 組項目，其中 N > 2，結果與反覆將所有兩組項目的組合替換為其合併結果直到無法再進行組合合併相同。如果 N < 2，則合併沒有嚴格意義，且可以傳回輸入。

以下是一些範例：

**範例 1：**

給定兩個集合 `{A,B}` 和 `{C,D}`，則這兩個集合之間沒有共同元素，結果與輸入相同。

**範例 2：**

給定兩個集合 `{A,B}` 和 `{B,D}`，則這兩個集合之間有一個共同的元素 `B`，結果是單一集合 `{B,D,A}`。（注意集合中條款的順序不重要：`{A,B,D}` 與 `{B,D,A}` 和 `{D,A,B}` 等同。）

**範例 3：**

給定三組集合 `{A,B}`、`{C,D}` 和 `{D,B}`，則集合 `{A,B}` 和 `{C,D}` 之間沒有共同元素，但集合 `{A,B}` 和 `{D,B}` 確實共享一個共同元素，並合併產生結果 `{B,D,A}`。在將此結果與剩餘集合 `{C,D}` 進行比較時，它們共享一個共同元素，因此合併為最終輸出單一集合 `{A,B,C,D}`。

**範例 4：**

五組的合併：

`{H,I,K}`、`{A,B}`、`{C,D}`、`{D,B}` 和 `{F,G,H}`

是這兩組：

`{A, C, B, D}` 和 `{G, F, I, H, K}`

# --instructions--

撰寫一個函式，該函式以字串陣列作為參數。每個字串表述一個集合，字元表現集合元素。該函式應傳回一個包含合併後集合的二維陣列。注意：每個集合應該排序。

# --hints--

`setConsolidation` 應該是一個函式（程式）。

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` 應該傳回一個陣列。

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` 應該傳回 `[["C", "D"], ["A", "B"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` 應該傳回 `[["A", "B", "D"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` 應該傳回 `[["A", "B", "C", "D"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` 應該傳回 `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`。

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
