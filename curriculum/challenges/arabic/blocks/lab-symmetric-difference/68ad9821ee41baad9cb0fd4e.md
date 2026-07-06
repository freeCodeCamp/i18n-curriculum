---
id: 68ad9821ee41baad9cb0fd4e
title: بناء دالة الفرق المتماثل
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

قارن بين مصفوفتين وأرجع مصفوفة جديدة تحتوي على العناصر الموجودة في إحداهما فقط، وليس في كلتيهما. بعبارة أخرى، أرجع الفرق المتماثل بين المصفوفتين.

مثال:

- المصفوفة A: `["diamond", "stick", "apple"]`

- المصفوفة B: `["stick", "emerald", "bread"]`

النتيجة: `["diamond", "apple", "emerald", "bread"]`

**الهدف:** حقق قصص المستخدم أدناه واجعل جميع الاختبارات تنجح لإكمال المختبر.

**قصص المستخدم:**

1. يجب أن تُرجع دالتك `diffArray` مصفوفة.
2. يجب أن تأخذ دالتك معلمتين، كلاهما مصفوفات.
3. يجب أن تستخدم دالتك طريقة `filter`.
4. يجب أن تُرجع دالتك الفرق المتماثل بين المصفوفتين.  
5. يجب أن تُرجع دالتك مصفوفة فارغة إذا لم يكن هناك فرق متماثل.


# --hints--

يجب أن يكون لديك دالة باسم `diffArray`.

```js
assert.isFunction(diffArray);
```

يجب أن تستخدم دالة `diffArray` طريقة `filter` لتصفية العناصر الموجودة في كلتا المصفوفتين.

```js
assert(/\.filter\(/.test(diffArray.toString()));
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` يجب أن تُرجع `["pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` يجب أن تُرجع `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

يجب أن تُرجع `diffArray` مصفوفة فارغة عند استدعائها بمصفوفتين متطابقتين.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` يجب أن تُرجع `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` يجب أن تُرجع `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` يجب أن تُرجع `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` يجب أن تُرجع `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` يجب أن تُرجع `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` يجب أن تُرجع `[]`.

```js
assert.deepEqual(diffArray(
  [], 
  []
), []);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function diffArray(arr1, arr2) {
  return arr1
    .filter(item => !arr2.includes(item))
    .concat(arr2.filter(item => !arr1.includes(item)));
}
```
