---
id: 5eb3e4af7d0e7b760b46cedc
title: Консолідація множин
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Якщо є дві множини елементів, і якщо будь-який елемент є спільним для обох множин, то результат застосування *консолідації* до цих множин — це множина множин, вміст якої:

<ul>
  <li>Дві вхідні множини, якщо між ними немає спільних елементів.</li>
  <li>Одна множина, що є об’єднанням двох вхідних множин, якщо вони мають спільний елемент.</li>
</ul>

Якщо є N множин, де N > 2, то результат — це те саме, що повторне заміщення всіх пар множин їхньою консолідацією, доки подальша консолідація пар множин неможлива. Якщо N &lt; 2, то консолідація не має чіткого значення, і можна повернути вхідні дані.

Ось кілька прикладів:

**Приклад 1:**

Якщо є дві множини `{A,B}` і `{C,D}`, то між ними немає спільного елемента, і результат такий самий, як вхідні множини.

**Приклад 2:**

Якщо є дві множини `{A,B}` і `{B,D}`, то між ними є спільний елемент `B`, і результат — одна множина `{B,D,A}`. (Зверніть увагу, що порядок елементів у множині не має значення: `{A,B,D}` — це те саме, що `{B,D,A}` і `{D,A,B}` тощо).

**Приклад 3:**

Якщо є три множини `{A,B}`, `{C,D}` і `{D,B}`, то між множинами `{A,B}` і `{C,D}` немає спільних елементів, але множини `{A,B}` і `{D,B}` мають спільний елемент, що консолідується у результат `{B,D,A}`. При порівнянні цього результату з залишковою множиною `{C,D}` вони мають спільний елемент і тому консолідуються у фінальний вихід — одну множину `{A,B,C,D}`.

**Приклад 4:**

Консолідація п’яти множин:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}` і `{F,G,H}`

дає дві множини:

`{A, C, B, D}` і `{G, F, I, H, K}`

# --instructions--

Напишіть функцію, яка приймає масив рядків як параметр. Кожен рядок представляє множину, де символи — це елементи множини. Функція має повернути двовимірний масив, що містить консолідовані множини. Примітка: кожна множина має бути відсортована.

# --hints--

`setConsolidation` має бути функцією.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` має повертати масив.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` має повертати `[["C", "D"], ["A", "B"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` має повертати `[["A", "B", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` має повертати `[["A", "B", "C", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` має повертати `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`.

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
