---
id: 5eb3e4af7d0e7b760b46cedc
title: Muungano wa seti
challengeType: 1
forumTopicId: 385319
dashedName: set-consolidation
---

# --description--

Ikiwa kuna seti mbili za vitu na ikiwa kitu chochote kiko katika seti yoyote ya hizo mbili, basi matokeo ya kutumia *muungano* kwa seti hizo ni seti ya seti ambazo zina:

<ul>
  <li>Seti mbili za ingizo ikiwa hakuna kitu chochote kinachoshirikiwa kati ya seti hizo mbili za vitu.</li>
  <li>Seti moja ambayo ni muungano wa seti hizo mbili za ingizo ikiwa zinashiriki kitu chochote.</li>
</ul>

Ikiwa kuna seti N za vitu ambapo N > 2 basi matokeo ni sawa na kubadilisha mara kwa mara mchanganyiko wote wa seti mbili kwa muungano wao hadi muungano zaidi kati ya jozi za seti hauwezekani tena. Ikiwa N &lt; 2 basi muungano haina maana kali na ingizo linaweza kurudishwa kama lilivyo.

Hapa kuna mifano:

**Mfano 1:**

Ikiwa seti mbili `{A,B}` na `{C,D}` basi hakuna kipengele chochote kinachoshirikiwa kati ya seti hizo na matokeo ni sawa na ingizo.

**Mfano 2:**

Ikiwa seti mbili `{A,B}` na `{B,D}` basi kuna kipengele kinachoshirikiwa `B` kati ya seti hizo na matokeo ni seti moja `{B,D,A}`. (Kumbuka kuwa mpangilio wa vitu katika seti hauna maana: `{A,B,D}` ni sawa na `{B,D,A}` na `{D,A,B}`, nk).

**Mfano 3:**

Ikiwa seti tatu `{A,B}` na `{C,D}` na `{D,B}` basi hakuna kipengele kinachoshirikiwa kati ya seti `{A,B}` na `{C,D}` lakini seti `{A,B}` na `{D,B}` zinashiriki kipengele kinachounganisha kutoa matokeo `{B,D,A}`. Kwa kuchunguza matokeo haya na seti iliyobaki, `{C,D}`, zinashiriki kipengele na hivyo kuungana kuwa matokeo ya mwisho ya seti moja `{A,B,C,D}`

**Mfano 4:**

Muungano wa seti tano:

`{H,I,K}`, `{A,B}`, `{C,D}`, `{D,B}`, na `{F,G,H}`

Ni seti mbili:

`{A, C, B, D}`, na `{G, F, I, H, K}`

# --instructions--

Andika kitendakazi kinachopokea safu ya mfuatano wa herufi kama kigezo. Kila mfuatano wa herufi unawakilisha seti na herufi zinawakilisha vitu vya seti hiyo. Kitendakazi kinapaswa kurudisha safu ya safu za data zenye seti zilizounganishwa. Kumbuka: Kila seti inapaswa kupangwa kwa mpangilio.

# --hints--

`setConsolidation` inapaswa kuwa kitendakazi.

```js
assert(typeof setConsolidation === 'function');
```

`setConsolidation(["AB", "CD"])` inapaswa kurudisha safu ya data.

```js
assert(Array.isArray(setConsolidation(['AB', 'CD'])));
```

`setConsolidation(["AB", "CD"])` inapaswa kurudisha `[["C", "D"], ["A", "B"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD']), [
  ['C', 'D'],
  ['A', 'B']
]);
```

`setConsolidation(["AB", "BD"])` inapaswa kurudisha `[["A", "B", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'BD']), [['A', 'B', 'D']]);
```

`setConsolidation(["AB", "CD", "DB"])` inapaswa kurudisha `[["A", "B", "C", "D"]]`.

```js
assert.deepEqual(setConsolidation(['AB', 'CD', 'DB']), [['A', 'B', 'C', 'D']]);
```

`setConsolidation(["HIK", "AB", "CD", "DB", "FGH"])` inapaswa kurudisha `[["F", "G", "H", "I", "K"], ["A", "B", "C", "D"]]`.

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
