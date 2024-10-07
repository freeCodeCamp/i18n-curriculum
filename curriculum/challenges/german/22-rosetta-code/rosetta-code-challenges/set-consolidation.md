---
id: 5eb3e4af7d0e7b760b46cedc
title: Konsolidierung setzen
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Wenn man zwei Sets von Gegenständen angibt, dann, wenn irgendein Gegenstand gewöhnlich ist für irgendein Set, ist das Ergebnis der Anwendung von *Konsolidierung* auf diese Sets ein Set von Sets, deren Inhalt ist:

<ul>
  <li>Die beiden Eingaben legen fest, falls kein gemeinsamer Eintrag zwischen den beiden Eingabesätzen existiert.</li>
  <li>Ein einzelnes Set zusammengesetzt aus den zwei Eingabe Sets, wenn ein gemeinsames Element existiert.</li>
</ul>

Given N sets of items where N > 2 then the result is the same as repeatedly replacing all combinations of two sets by their consolidation until no further consolidation between set pairs is possible. If N &lt; 2 then consolidation has no strict meaning and the input can be returned.

Hier sind ein paar Beispiele:

**Beispiel 1:**

Sind die beiden Sets `{A,B}` und `{C,D}` gegeben, gibt es darauf aufbauend kein gemeinsames Element zwischen den Sets und das Ergebnis ist das gleiche wie die Eingabe.

**Beispiel 2:**

Sind die beiden Sets `{A,B}` und `{B,D}` gegeben, gibt es darauf aufbauend ein gemeinsames Element `B` zwischen den Sets und das Ergebnis ist das einzelne Set `{B,D,A}`. (Beachte, dass die Reihenfolge der Artikel in einem Set unwesentlich ist: `{A,B,D}` ist das gleiche wie `{B,D,A}` und `{D,A,B}`, etc).

**Beispiel 3:**

Sind die drei Sets `{A,B}` und `{C,D}` und `{D,B}` gegeben, gibt es darauf aufbauend kein gemeinsames Element zwischen den Sets `{A,B}` und `{C,D}`, aber die Sets `{A,B}` und `{D,B}` teilen ein gemeinsames Element, was zusammengefasst wird, um das Ergebnis `{B,D,A}` zu produzieren. Bei Prüfung dieses Ergebnisses mit dem verbleibenden Set `{C,D}` teilen sie sich ein gemeinsames Element und konsolidieren so die endgültige Ausgabe des einzelnen Sets `{A,B,C,D}`

**Beispiel 4:**

Konsolidierung der fünf Sets:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}` und `{F,G,H}`

Das sind die beiden Sätze:

`{A, C, B, D}` und `{G, F, I, H, K}`

# --instructions--

Schreibe eine Funktion, die ein Array von Strings als Parameter verwendet. Jeder String repräsentiert ein Set mit den Charakteren, die die eingestellten Elemente repräsentieren. Die Funktion sollte ein 2D-Array mit den konsolidierten Sets zurückgeben. Hinweis: Jedes Set sollte sortiert werden.

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
