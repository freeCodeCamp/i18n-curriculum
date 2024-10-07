---
id: 587d7dab367417b2b2512b6e
title: Використання методу every для перевірки всіх елементів на відповідність критеріям
challengeType: 1
forumTopicId: 301312
dashedName: use-the-every-method-to-check-that-every-element-in-an-array-meets-a-criteria
---

# --description--

The `every` method works with arrays to check if *every* element passes a particular test. It returns a Boolean value - `true` if all values meet the criteria, `false` if not.

Наприклад, наступний код перевіряє, чи всі елементи в масиві `numbers` менші за 10:

```js
const numbers = [1, 5, 8, 0, 10, 11];

numbers.every(function(currentValue) {
  return currentValue < 10;
});
```

Метод `every` поверне `false`.

# --instructions--

Використайте метод `every` всередині функції `checkPositive`, щоб перевірити, чи всі елементи в `arr` додатні. Функція повинна повертати булеве значення.

# --hints--

Ваш код повинен використовувати метод `every`.

```js
assert(__helpers.removeJSComments(code).match(/\.every/g));
```

`checkPositive([1, 2, 3, -4, 5])` має повертати `false`.

```js
assert.isFalse(checkPositive([1, 2, 3, -4, 5]));
```

`checkPositive([1, 2, 3, 4, 5])` має повертати `true`.

```js
assert.isTrue(checkPositive([1, 2, 3, 4, 5]));
```

`checkPositive([1, -2, 3, -4, 5])` має повертати `false`.

```js
assert.isFalse(checkPositive([1, -2, 3, -4, 5]));
```

# --seed--

## --seed-contents--

```js
function checkPositive(arr) {
  // Only change code below this line


  // Only change code above this line
}

checkPositive([1, 2, 3, -4, 5]);
```

# --solutions--

```js
function checkPositive(arr) {
  return arr.every(num => num > 0);
}
```
