---
id: 5eb3e4af7d0e7b760b46cedc
title: 집합 통합
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

두 개의 항목 집합이 주어졌을 때, 두 집합에 공통된 항목이 하나라도 있으면 *통합*을 적용한 결과는 다음 내용을 포함하는 집합들의 집합입니다:

<ul>
  <li>두 입력 집합 사이에 공통 항목이 없으면 두 입력 집합 그대로입니다.</li>
  <li>공통 항목이 있으면 두 입력 집합의 합집합인 단일 집합입니다.</li>
</ul>

N > 2인 N개의 집합이 주어지면, 두 집합 조합을 반복적으로 통합하여 더 이상 통합할 수 없을 때까지 이 과정을 계속한 결과가 됩니다. N < 2이면 통합의 엄밀한 의미가 없으므로 입력을 그대로 반환할 수 있습니다.

예시는 다음과 같습니다:

**예시 1:**

두 집합 `{A,B}` 와 `{C,D}` 이 주어졌을 때, 두 집합 사이에 공통 요소가 없으므로 결과는 입력과 같습니다.

**예시 2:**

두 집합 `{A,B}` 와 `{B,D}` 이 주어졌을 때, 두 집합 사이에 공통 요소 `B` 가 있으므로 결과는 단일 집합 `{B,D,A}` 입니다. (집합 내 항목 순서는 중요하지 않습니다: `{A,B,D}` 는 `{B,D,A}` 와 `{D,A,B}` 와 동일합니다.)

**예시 3:**

세 집합 `{A,B}` 와 `{C,D}` 와 `{D,B}` 이 주어졌을 때, `{A,B}` 와 `{C,D}` 사이에는 공통 요소가 없지만 `{A,B}` 와 `{D,B}` 는 공통 요소가 있어 통합되어 `{B,D,A}` 결과를 만듭니다. 이 결과와 남은 집합 `{C,D}` 을 비교하면 공통 요소가 있어 최종 출력은 단일 집합 `{A,B,C,D}` 입니다.

**예시 4:**

다섯 집합

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}`, 그리고 `{F,G,H}`

의 통합 결과는 두 집합

`{A, C, B, D}`, 그리고 `{G, F, I, H, K}`

입니다.

# --instructions--

문자열 배열을 매개변수로 받는 함수를 작성하세요. 각 문자열은 집합을 나타내며, 문자는 집합 요소를 나타냅니다. 함수는 통합된 집합들을 포함하는 2차원 배열을 반환해야 합니다. 참고: 각 집합은 정렬되어 있어야 합니다.

# --hints--

`setConsolidation` 는 함수여야 합니다.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` 는 배열을 반환해야 합니다.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` 는 `[["C", "D"], ["A", "B"]]` 를 반환해야 합니다.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` 는 `[["A", "B", "D"]]` 를 반환해야 합니다.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` 는 `[["A", "B", "C", "D"]]` 를 반환해야 합니다.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` 는 `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]` 를 반환해야 합니다.

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
