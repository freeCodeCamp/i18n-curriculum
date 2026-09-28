---
id: 68ad9821ee41baad9cb0fd4e
title: بناء دالة الفرق المتماثل
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

قارن بين مصفوفتين وأرجع مصفوفة جديدة تحتوي على أي عناصر موجودة في واحدة فقط من المصفوفتين المعطاة، وليس في كلتيهما. بعبارة أخرى، أرجع الفرق المتماثل بين المصفوفتين.

مثال:

- المصفوفة A: `["diamond", "stick", "apple"]`

- المصفوفة B: `["stick", "emerald", "bread"]`

- النتيجة: `["diamond", "apple", "emerald", "bread"]`

**الهدف:** إكمال قصص المستخدم أدناه واجتياز جميع الاختبارات لإتمام المختبر.

**قصص المستخدم:**

1. يجب أن تُرجع دالتك `diffArray` مصفوفة.
2. يجب أن تأخذ دالتك معلمتين، كلاهما مصفوفات.
3. يجب أن تستخدم دالتك طريقة `filter`.
4. يجب أن تُرجع دالتك الفرق المتماثل بين المصفوفتين.
5. يجب أن تُرجع دالتك مصفوفة فارغة إذا لم يكن هناك فرق متماثل.
6. يجب أن تُدرج دالتك العناصر الموجودة فقط في المصفوفة الأولى قبل العناصر الموجودة فقط في المصفوفة الثانية، مع الحفاظ على ترتيبها الأصلي داخل كل مصفوفة.

# --hints--

يجب أن يكون لديك دالة باسم `diffArray`.

```js
assert.isFunction(diffArray);
```

يجب أن تستخدم دالتك `diffArray` طريقة `filter`.

```js
const spy = __helpers.spyOn(Array.prototype, 'filter');
try {
  diffArray([1, 2], [2, 3]);
  assert.isAbove(spy.calls.length, 0);
} finally {
  spy.restore();
}
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

`diffArray(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` يجب أن تُرجع `[]`.

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
