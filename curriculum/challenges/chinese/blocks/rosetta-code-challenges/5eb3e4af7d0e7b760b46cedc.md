---
id: 5eb3e4af7d0e7b760b46cedc
title: 集的合并
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

给定两组项目，那么如果任何项目对于任何集合都是共同的，那么对这些集合应用*合并*的结果是一组集合，其内容是：

<ul>
  <li>The two input sets if no common item exists between the two input sets of items.</li>
  <li>The single set that is the union of the two input sets if they share a common item.</li>
</ul>

给定 N 组项，其中 N > 2，则结果与反复将所有两组的组合替换为它们的合并，直到不再可能对组点对进行合并相同。如果 N < 2，则合并没有严格意义，可以返回输入。

这是一些例子：

**示例 1：**

给定两个集合 `{A,B}` 和 `{C,D}` 那么集合之间没有公共元素，结果与输入相同。

**示例 2：**

给定两个集合 `{A,B}` 和 `{B,D}`，则这两个集合之间有一个公共元素 `B`，结果是单一集合 `{B,D,A}`。（注意集合中项的顺序无关紧要：`{A,B,D}` 与 `{B,D,A}` 和 `{D,A,B}` 等价）。

**示例 3：**

给定三个集合 `{A,B}`、`{C,D}` 和 `{D,B}`，那么 `{A,B}` 和 `{C,D}` 之间没有公共元素集合，但集合 `{A,B}` 和 `{D,B}` 确实共享一个公共元素，该元素合并以产生结果 `{B,D,A}`。 在用剩余的集合 `{C,D}` 检查这个结果时，它们共享一个公共元素，因此合并到最终输出的单个集合 `{A,B,C,D}`

**示例 4：**

五个集合的合并：

`{H,I,K}`、`{A,B}`、`{C,D}`、`{D,B}` 和 `{F,G,H}`

是两个集合：

`{A, C, B, D}` 和 `{G, F, I, H, K}`

# --instructions--

编写一个将字符串数组作为参数的函数。 每个字符串代表一个集合，字符代表集合元素。 该函数应返回一个包含合并集的二维数组。 注意：每组都应排序。

# --hints--

`setConsolidation` 应该是一个函数。

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` 应该返回一个数组。

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` 应该返回 `[["C", "D"], ["A", "B"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` 应该返回 `[["A", "B", "D"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` 应该返回 `[["A", "B", "C", "D"]]`。

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` 应该返回 `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`。

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
