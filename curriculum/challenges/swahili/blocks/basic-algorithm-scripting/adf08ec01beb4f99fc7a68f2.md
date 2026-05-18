---
id: adf08ec01beb4f99fc7a68f2
title: Mtoaji wa thamani za uongo
challengeType: 1
forumTopicId: 16014
dashedName: falsy-bouncer
---

# --description--

Ondoa thamani zote za uongo kutoka kwenye safu ya data. Rudisha safu mpya; usibadilishe safu ya data ya awali.

Thamani za uongo katika JavaScript ni `false`, `null`, `0`, `""`, `undefined`, na `NaN`.

Kidokezo: Jaribu kubadilisha kila thamani kuwa Thamani ya kweli au siyo kweli.

# --hints--

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

Haupasi kubadilisha `arr`.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

# --seed--

## --seed-contents--

```js
function bouncer(arr) {
  return arr;
}

bouncer([7, 'ate', '', false, 9]);
```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}

bouncer([7, 'ate', '', false, 9]);
```
