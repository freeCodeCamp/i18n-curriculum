---
id: 5eb3e4af7d0e7b760b46cedc
title: دمج المجموعات
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

عند وجود مجموعتين من العناصر، إذا كان هناك أي عنصر مشترك بين أي مجموعة، فإن نتيجة تطبيق *الدمج* على تلك المجموعات هي مجموعة من المجموعات التي تحتوي على:

<ul>
<li>المجموعتان المدخلتان إذا لم يوجد عنصر مشترك بينهما.</li>
  <li>المجموعة الواحدة التي تمثل اتحاد المجموعتين المدخلتين إذا كانتا تشتركان في عنصر.</li>
</ul>

عند وجود N مجموعة من العناصر حيث N > 2، تكون النتيجة هي نفسها عند استبدال كل تركيبات المجموعتين بدمجهما بشكل متكرر حتى لا يمكن دمج المزيد من أزواج المجموعات. إذا كانت N &lt; 2، فلا معنى صارم للدمج ويمكن إرجاع المدخل كما هو.

إليك بعض الأمثلة:

**المثال 1:**

عند وجود المجموعتين `{A,B}` و `{C,D}`، لا يوجد عنصر مشترك بين المجموعتين، والنتيجة هي نفسها المدخل.

**المثال 2:**

عند وجود المجموعتين `{A,B}` و `{B,D}`، يوجد عنصر مشترك `B` بين المجموعتين، والنتيجة هي المجموعة الواحدة `{B,D,A}`. (لاحظ أن ترتيب العناصر في المجموعة غير مهم: `{A,B,D}` هي نفسها `{B,D,A}` و `{D,A,B}`، وهكذا).

**المثال 3:**

عند وجود المجموعات الثلاث `{A,B}` و `{C,D}` و `{D,B}`، لا يوجد عنصر مشترك بين المجموعتين `{A,B}` و `{C,D}`، لكن المجموعتين `{A,B}` و `{D,B}` تشتركان في عنصر مشترك يدمجهما لإنتاج النتيجة `{B,D,A}`. عند فحص هذه النتيجة مع المجموعة المتبقية `{C,D}`، يتشاركان في عنصر مشترك فيتم دمجهما إلى النتيجة النهائية وهي المجموعة الواحدة `{A,B,C,D}`.

**المثال 4:**

دمج المجموعات الخمس:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}`, و `{F,G,H}`

هي المجموعتان:

`{A, C, B, D}`, و `{G, F, I, H, K}`

# --instructions--

اكتب دالة تأخذ مصفوفة من السلاسل النصية كمعلمة. كل سلسلة تمثل مجموعة حيث تمثل الأحرف عناصر المجموعة. يجب أن تُرجع الدالة مصفوفة ثنائية الأبعاد تحتوي على المجموعات المدمجة. ملاحظة: يجب ترتيب كل مجموعة.

# --hints--

`setConsolidation` يجب أن تكون دالة.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` يجب أن تُرجع مصفوفة.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` يجب أن تُرجع `[["C", "D"], ["A", "B"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` يجب أن تُرجع `[["A", "B", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` يجب أن تُرجع `[["A", "B", "C", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` يجب أن تُرجع `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`.

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
