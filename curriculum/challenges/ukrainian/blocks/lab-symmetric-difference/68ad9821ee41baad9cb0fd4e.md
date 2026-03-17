---
id: 68ad9821ee41baad9cb0fd4e
title: Побудувати функцію симетричної різниці
challengeType: 26
dashedName: lab-symmetric-difference
---

# --description--

Порівняйте два масиви та поверніть новий масив із елементами, які зустрічаються лише в одному з двох заданих масивів, але не в обох одночасно. Іншими словами, поверніть симетричну різницю двох масивів.

Приклад:

- Масив A: `["diamond", "stick", "apple"]`

- Масив B: `["stick", "emerald", "bread"]`

Результат: `["diamond", "apple", "emerald", "bread"]`

**Мета:** Виконайте наведені нижче історії користувача та пройдіть усі тести, щоб завершити лабораторну роботу.

**Історії користувача:**

1. Ваша функція `diffArray` повинна повертати масив.
2. Ваша функція повинна приймати два аргументи, обидва з яких є масивами.
3. Ваша функція повинна використовувати метод `filter`.
4. Ваша функція повинна повертати симетричну різницю двох масивів.  
5. Ваша функція повинна повертати порожній масив, якщо симетрична різниця відсутня.


# --hints--

У вас має бути функція з назвою `diffArray`.

```js
assert.isFunction(diffArray);
```

Функція `diffArray` повинна використовувати метод `filter` для фільтрації елементів, які присутні в обох масивах.

```js
assert(/\.filter\(/.test(diffArray.toString()));
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

`diffArray` має повертати порожній масив при виклику з двома ідентичними масивами.

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
