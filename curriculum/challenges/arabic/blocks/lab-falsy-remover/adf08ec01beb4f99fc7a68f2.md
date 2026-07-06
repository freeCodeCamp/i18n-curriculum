---
id: adf08ec01beb4f99fc7a68f2
title: تنفيذ دالة لإزالة القيم الخاطئة
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

في هذا المختبر ستنشئ دالة تزيل كل القيم الخاطئة من مصفوفة.

القيم الخاطئة في JavaScript هي `false`، `null`، `0`، `""`، `undefined`، و `NaN`.

**الهدف**: نفذ قصص المستخدم أدناه واجعل كل الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تملك دالة `bouncer` تأخذ مصفوفة كمعلمة.
1. يجب أن تُرجع دالة `bouncer` مصفوفة جديدة تحتوي نفس عناصر المصفوفة الممررة كمعلمة مع إزالة العناصر الخاطئة.
1. يجب ألا تغير دالة `bouncer` المصفوفة الممررة كمعلمة.

تلميح: جرّب تحويل كل قيمة إلى قيمة منطقية.

# --hints--

يجب أن تملك دالة `bouncer`.

```js
assert.isFunction(bouncer);
```

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

يجب ألا تغير دالة `bouncer` المصفوفة الممررة كمعلمة.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` يجب أن تُرجع `[]`.

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
