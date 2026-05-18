---
id: adf08ec01beb4f99fc7a68f2
title: Tekeleza kitendakazi cha kuondoa thamani za uongo
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

Katika maabara hii utaunda kitendakazi kinachoondoa thamani zote za uongo kutoka kwenye safu ya data.

Thamani za uongo katika JavaScript ni `false`, `null`, `0`, `""`, `undefined`, na `NaN`.

**Lengo**: Timiza hadithi za watumizi zilizo hapa chini na upite vipimo vyote ili kumaliza maabara hii.

**Hadithi za watumizi:**

1. Unapaswa kuwa na kitendakazi `bouncer` kinachopokea safu ya data kama hoja.
1. Kitendakazi `bouncer` kinapaswa kurudisha safu mpya yenye vitu sawa na safu iliyotolewa kama hoja lakini thamani za uongo zimetolewa.
1. Kitendakazi `bouncer` hakipaswi kubadilisha safu iliyotolewa kama hoja.

Kidokezo: Jaribu kubadilisha kila thamani kuwa Thamani ya kweli au siyo kweli.

# --hints--

Unapaswa kuwa na kitendakazi `bouncer`.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` inapaswa kurudisha `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` inapaswa kurudisha `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` inapaswa kurudisha `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` inapaswa kurudisha `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

Kitendakazi `bouncer` hakipaswi kubadilisha safu iliyotolewa kama hoja.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` inapaswa kurudisha `[]`.  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
