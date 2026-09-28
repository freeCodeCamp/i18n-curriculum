---
id: 68ad9821ee41baad9cb0fd4e
title: Побудувати функцію симетричної різниці
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Порівняйте два масиви та поверніть новий масив із тими елементами, які є лише в одному з двох заданих масивів, але не в обох одночасно. Іншими словами, поверніть симетричну різницю двох масивів.

Приклад:

- Масив A: `["diamond", "stick", "apple"]`

- Масив B: `["stick", "emerald", "bread"]`

- Результат: `["diamond", "apple", "emerald", "bread"]`

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історія користувача:**

1. Ваша функція `diffArray` має повертати масив.
2. Ваша функція має приймати два аргументи, обидва з яких є масивами.
3. Ваша функція має використовувати метод `filter`.
4. Ваша функція має повертати симетричну різницю двох масивів.
5. Ваша функція має повертати порожній масив, якщо симетричної різниці немає.
6. Ваша функція має спочатку перелічувати елементи, які є лише в першому масиві, а потім ті, що є лише в другому, зберігаючи їхній початковий порядок у кожному масиві.

# --hints--

У вас має бути функція з назвою `diffArray`.

```js
assert.isFunction(diffArray);
```

Ваша функція `diffArray` має використовувати метод `filter`.

```js
const spy = __helpers.spyOn(Array.prototype, 'filter');
try {
  diffArray([1, 2], [2, 3]);
  assert.isAbove(spy.calls.length, 0);
} finally {
  spy.restore();
}
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["diorite", "andesite", "grass", "dirt", "dead shrub"])` має повертати `["pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["diorite", "andesite", "grass", "dirt", "dead shrub"]
), ["pink wool"]);
```

`diffArray(["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` має повертати `["diorite", "pink wool"]`.

```js
assert.deepEqual(diffArray(
  ["diorite", "andesite", "grass", "dirt", "pink wool", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), ["diorite", "pink wool"]);
```

`diffArray(["andesite", "grass", "dirt", "dead shrub"], ["andesite", "grass", "dirt", "dead shrub"])` має повертати `[]`.

```js
assert.deepEqual(diffArray(
  ["andesite", "grass", "dirt", "dead shrub"],
  ["andesite", "grass", "dirt", "dead shrub"]
), []);
```

`diffArray(["pen", "book"], ["book", "pencil", "notebook"])` має повертати `["pen", "pencil", "notebook"]`.

```js
assert.deepEqual(diffArray(
  ["pen", "book"],
  ["book", "pencil", "notebook"]
), ["pen", "pencil", "notebook"]);
```

`diffArray(["car", "bike", "bus"], ["bike", "train", "plane", "bus"])` має повертати `["car", "train", "plane"]`.

```js
assert.deepEqual(diffArray(
  ["car", "bike", "bus"],
  ["bike", "train", "plane", "bus"]
), ["car", "train", "plane"]);
```

`diffArray(["apple", "orange"], ["apple", "orange", "banana", "grape"])` має повертати `["banana", "grape"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "orange"],
  ["apple", "orange", "banana", "grape"]
), ["banana", "grape"]);
```

`diffArray([], ["apple", "banana"])` має повертати `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  [],
  ["apple", "banana"]
), ["apple", "banana"]);
```

`diffArray(["apple", "banana"], [])` має повертати `["apple", "banana"]`.

```js
assert.deepEqual(diffArray(
  ["apple", "banana"],
  []
), ["apple", "banana"]);
```

`diffArray([], [])` має повертати `[]`.

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
