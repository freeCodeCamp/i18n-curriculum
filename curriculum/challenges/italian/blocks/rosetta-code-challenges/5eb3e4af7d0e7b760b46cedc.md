---
id: 5eb3e4af7d0e7b760b46cedc
title: Consolidamento di insiemi
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Dato due insiemi di elementi, se un elemento è comune a entrambi, il risultato dell'applicazione del *consolidamento* a quegli insiemi è un insieme di insiemi il cui contenuto è:

<ul>
  <li>I due insiemi di input se non esiste alcun elemento comune tra i due insiemi di elementi.</li>
  <li>Il singolo insieme che è l'unione dei due insiemi di input se condividono un elemento comune.</li>
</ul>

Dato N insiemi di elementi con N > 2, il risultato è lo stesso di sostituire ripetutamente tutte le combinazioni di due insiemi con il loro consolidamento finché non è più possibile consolidare ulteriormente coppie di insiemi. Se N &lt; 2, il consolidamento non ha un significato preciso e si può restituire l'input.

Ecco alcuni esempi:

**Esempio 1:**

Dato i due insiemi `{A,B}` e `{C,D}` non esiste alcun elemento comune tra gli insiemi e il risultato è uguale all'input.

**Esempio 2:**

Dato i due insiemi `{A,B}` e `{B,D}` esiste un elemento comune `B` tra gli insiemi e il risultato è il singolo insieme `{B,D,A}`. (Nota che l'ordine degli elementi in un insieme non ha importanza: `{A,B,D}` è uguale a `{B,D,A}` e `{D,A,B}`, ecc.).

**Esempio 3:**

Dato i tre insiemi `{A,B}` e `{C,D}` e `{D,B}` non esiste alcun elemento comune tra gli insiemi `{A,B}` e `{C,D}` ma gli insiemi `{A,B}` e `{D,B}` condividono un elemento comune che si consolida per produrre il risultato `{B,D,A}`. Esaminando questo risultato con l'insieme rimanente, `{C,D}`, condividono un elemento comune e quindi si consolidano nell'output finale del singolo insieme `{A,B,C,D}`

**Esempio 4:**

Il consolidamento dei cinque insiemi:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}` e `{F,G,H}`

è costituito dai due insiemi:

`{A, C, B, D}` e `{G, F, I, H, K}`

# --instructions--

Scrivi una funzione che prende un array di stringhe come parametro. Ogni stringa rappresenta un insieme con i caratteri che rappresentano gli elementi dell'insieme. La funzione deve restituire un array 2D contenente gli insiemi consolidati. Nota: ogni insieme deve essere ordinato.

# --hints--

`setConsolidation` dovrebbe essere una funzione.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` dovrebbe restituire un array.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` dovrebbe restituire `[["C", "D"], ["A", "B"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` dovrebbe restituire `[["A", "B", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` dovrebbe restituire `[["A", "B", "C", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` dovrebbe restituire `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`.

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
