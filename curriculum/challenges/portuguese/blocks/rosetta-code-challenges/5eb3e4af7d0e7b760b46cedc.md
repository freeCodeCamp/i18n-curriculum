---
id: 5eb3e4af7d0e7b760b46cedc
title: Definir consolidação
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Dado dois conjuntos de itens, se algum item for comum a qualquer conjunto, então o resultado da aplicação de *consolidation* a esses conjuntos é um conjunto de conjuntos cujo conteúdo é:

<ul>
  <li>The two input sets if no common item exists between the two input sets of items.</li>
  <li>The single set that is the union of the two input sets if they share a common item.</li>
</ul>

Given N sets of items where N > 2 then the result is the same as repeatedly replacing all combinations of two sets by their consolidation until no further consolidation between set pairs is possible. If N &lt; 2 then consolidation has no strict meaning and the input can be returned.

Aqui estão alguns exemplos:

**Exemplo 1:**

Dados os dois conjuntos `{A,B}` e `{C,D}`, não há elemento comum entre os conjuntos e o resultado é o mesmo que a entrada.

**Exemplo 2:**

Dado os dois conjuntos `{A,B}` e `{B,D}` então há um elemento comum `B` entre os conjuntos e o resultado é o conjunto único `{B,D,A}`. (Observe que a ordem dos itens em um conjunto é irrelevante: `{A,B,D}` é o mesmo que `{B,D,A}` e `{D,A,B}`, etc).

**Exemplo 3:**

Dados os três conjuntos `{A,B}`, `{C,D}` e `{D,B}` não há elemento comum entre os conjuntos `{A,B}` e `{C,D}`, mas os conjuntos `{A,B}` e `{D,B}` compartilham um elemento comum que é consolidado, produzindo o resultado `{B,D,A}`.Ao analisar este resultado com o conjunto restante, `{C,D}`, eles compartilham um elemento comum e assim são consolidados na saída final do conjunto único `{A,B,C,D}`

**Exemplo 4:**

A consolidação dos cinco conjuntos:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}` e `{F,G,H}`

São os dois conjuntos:

`{A, C, B, D}` e `{G, F, I, H, K}`

# --instructions--

Escreva uma função que receba um array de strings como parâmetro.Cada string representa um conjunto com os caracteres que representam os elementos do conjunto.A função deve retornar um array 2D contendo os conjuntos consolidados.Observação: cada conjunto deve ser ordenado.

# --hints--

`setConsolidation` deve ser uma função.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` deve retornar um array.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` deve retornar `[["C", "D"], ["A", "B"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` deve retornar `[["A", "B", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` deve retornar `[["A", "B", "C", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` deve retornar `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`.

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
