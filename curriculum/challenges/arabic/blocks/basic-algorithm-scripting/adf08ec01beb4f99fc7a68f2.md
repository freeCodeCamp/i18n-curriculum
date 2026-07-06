---
id: adf08ec01beb4f99fc7a68f2
title: مُرشِّح القيم الخاطئة
challengeType: 1
forumTopicId: 16014
dashedName: falsy-bouncer
---

# --description--

احذف كل القيم الخاطئة من مصفوفة. أرجع مصفوفة جديدة؛ لا تُغيّر المصفوفة الأصلية.

القيم الخاطئة في JavaScript هي `false`، و`null`، و`0`، و`""`، و`undefined`، و`NaN`.

تلميح: جرّب تحويل كل قيمة إلى قيمة منطقية.

# --hints--

`bouncer([7, "ate", "", false, 9])` يجب أن تُرجع `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` يجب أن تُرجع `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` يجب أن تُرجع `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` يجب أن تُرجع `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

يجب ألا تُغيّر `arr`.

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
