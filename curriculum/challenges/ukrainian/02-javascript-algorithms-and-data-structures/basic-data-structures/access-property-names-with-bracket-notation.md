---
id: 587d7b7c367417b2b2512b1a
title: Доступ до назв властивостей за допомогою дужкової нотації
challengeType: 1
forumTopicId: 301150
dashedName: access-property-names-with-bracket-notation
---

# --description--

In the first object challenge we mentioned the use of bracket notation as a way to access property values using the evaluation of a variable. For instance, imagine that our `foods` object is being used in a program for a supermarket cash register. We have some function that sets the `selectedFood` and we want to check our `foods` object for the presence of that food. This might look like:

```js
let selectedFood = getCurrentFood(scannedItem);
let inventory = foods[selectedFood];
```

Цей код оцінить значення, яке зберігається у змінній `selectedFood` та поверне значення цього ключа в об’єкт `foods`, або `undefined`, якщо він відсутній. Дужкова нотація дуже корисна, оскільки іноді властивості об’єкта невідомі до часу виконання або нам потрібно отримати до них доступ більш динамічним способом.

# --instructions--

Ми визначили функцію `checkInventory`, яка отримує просканований товар як аргумент. Поверніть поточне значення ключа `scannedItem` в об’єкті `foods`. Можна припустити, що тільки дійсні ключі будуть надані як аргумент для `checkInventory`.

# --hints--

`checkInventory` має бути функцією.

```js
assert.strictEqual(typeof checkInventory, 'function');
```

Об’єкт `foods` повинен мати лише такі пари «ключ-значення»: `apples: 25`, `oranges: 32`, `plums: 28`, `bananas: 13`, `grapes: 35`, `strawberries: 27`.

```js
assert.deepEqual(foods, {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
});
```

`checkInventory("apples")` має повернути `25`.

```js
assert.strictEqual(checkInventory('apples'), 25);
```

`checkInventory("bananas")` має повернути `13`.

```js
assert.strictEqual(checkInventory('bananas'), 13);
```

`checkInventory("strawberries")` має повернути `27`.

```js
assert.strictEqual(checkInventory('strawberries'), 27);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  // Only change code below this line

  // Only change code above this line
}

console.log(checkInventory("apples"));
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

function checkInventory(scannedItem) {
  return foods[scannedItem];
}
```
