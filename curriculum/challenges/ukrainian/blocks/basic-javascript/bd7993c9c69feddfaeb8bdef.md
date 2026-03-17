---
id: bd7993c9c69feddfaeb8bdef
title: Зберігання кількох значень в одній змінній за допомогою масивів JavaScript
challengeType: 1
forumTopicId: 18309
dashedName: store-multiple-values-in-one-variable-using-javascript-arrays
---

# --description--

За допомогою змінних JavaScript `array` ми можемо зберігати кілька даних в одному місці.

Оголошення масиву починається з відкриваючої квадратної дужки, закінчується закриваючою квадратною дужкою, а між кожним елементом ставиться кома, ось так:

```js
const sandwich = ["peanut butter", "jelly", "bread"];
```

# --instructions--

Змініть новий масив `myArray`, щоб він містив і рядок, і число (у такому порядку).

# --hints--

`myArray` має бути масивом.

```js
assert(typeof myArray == 'object');
```

Перший елемент у `myArray` має бути рядком.

```js
assert(typeof myArray[0] !== 'undefined' && typeof myArray[0] == 'string');
```

Другий елемент у `myArray` має бути числом.

```js
assert(typeof myArray[1] !== 'undefined' && typeof myArray[1] == 'number');
```

# --seed--

## --seed-contents--

```js
// Only change code below this line
const myArray = [];
```

# --solutions--

```js
const myArray = ["The Answer", 42];
```
