---
id: 5eb3e4af7d0e7b760b46cedc
title: Mengen-Konsolidierung
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Gegeben sind zwei Mengen von Elementen. Wenn ein Element in beiden Mengen vorkommt, dann ist das Ergebnis der *Konsolidierung* dieser Mengen eine Menge von Mengen, deren Inhalt Folgendes ist:

<ul>
  <li>Die beiden Eingabemengen, falls kein gemeinsames Element zwischen den beiden Eingabemengen existiert.</li>
  <li>Die einzelne Menge, die die Vereinigung der beiden Eingabemengen ist, falls sie ein gemeinsames Element teilen.</li>
</ul>

Gegeben sind N Mengen von Elementen, wobei N > 2 gilt. Dann ist das Ergebnis dasselbe, als ob man wiederholt alle Kombinationen von zwei Mengen durch ihre Konsolidierung ersetzt, bis keine weitere Konsolidierung zwischen Mengenpaaren möglich ist. Falls N &lt; 2 gilt, hat Konsolidierung keine strikte Bedeutung und die Eingabe kann zurückgegeben werden.

Hier sind einige Beispiele:

**Beispiel 1:**

Gegeben sind die beiden Mengen `{A,B}` und `{C,D}`. Es gibt kein gemeinsames Element zwischen den Mengen, und das Ergebnis ist dasselbe wie die Eingabe.

**Beispiel 2:**

Gegeben sind die beiden Mengen `{A,B}` und `{B,D}`. Es gibt ein gemeinsames Element `B` zwischen den Mengen, und das Ergebnis ist die einzelne Menge `{B,D,A}`. (Beachten Sie, dass die Reihenfolge der Elemente in einer Menge unerheblich ist: `{A,B,D}` ist dasselbe wie `{B,D,A}` und `{D,A,B}` usw.).

**Beispiel 3:**

Gegeben sind die drei Mengen `{A,B}`, `{C,D}` und `{D,B}`. Es gibt kein gemeinsames Element zwischen den Mengen `{A,B}` und `{C,D}`, aber die Mengen `{A,B}` und `{D,B}` teilen ein gemeinsames Element, das konsolidiert wird und das Ergebnis `{B,D,A}` erzeugt. Wenn man dieses Ergebnis mit der verbleibenden Menge `{C,D}` betrachtet, teilen sie ein gemeinsames Element und konsolidieren daher zur endgültigen Ausgabe der einzelnen Menge `{A,B,C,D}`.

**Beispiel 4:**

Die Konsolidierung der fünf Mengen:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}` und `{F,G,H}`

ist die zwei Mengen:

`{A, C, B, D}` und `{G, F, I, H, K}`

# --instructions--

Schreiben Sie eine Funktion, die ein Array von Strings als Parameter erhält. Jeder String stellt eine Menge dar, wobei die Zeichen die Elemente der Menge repräsentieren. Die Funktion soll ein zweidimensionales Array mit den konsolidierten Mengen zurückgeben. Hinweis: Jede Menge sollte sortiert sein.

# --hints--

`setConsolidation` sollte eine Funktion sein.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` sollte ein Array zurückgeben.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` sollte `[["C", "D"], ["A", "B"]]` zurückgeben.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` sollte `[["A", "B", "D"]]` zurückgeben.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` sollte `[["A", "B", "C", "D"]]` zurückgeben.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` sollte `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]` zurückgeben.

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
