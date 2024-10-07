---
id: 587d7b7a367417b2b2512b12
title: Копіювання елементів масиву за допомогою slice()
challengeType: 1
forumTopicId: 301158
dashedName: copy-array-items-using-slice
---

# --description--

The next method we will cover is `slice()`. Rather than modifying an array, `slice()` copies or *extracts* a given number of elements to a new array, leaving the array it is called upon untouched. `slice()` takes only 2 parameters — the first is the index at which to begin extraction, and the second is the index at which to stop extraction (extraction will occur up to, but not including the element at this index). Consider this:

```js
let weatherConditions = ['rain', 'snow', 'sleet', 'hail', 'clear'];

let todaysWeather = weatherConditions.slice(1, 3);
```

`todaysWeather` матиме значення `['snow', 'sleet']`, хоча `weatherConditions` досі матиме `['rain', 'snow', 'sleet', 'hail', 'clear']`.

Фактично, ми створили новий масив, вилучаючи елементи з масиву, який вже існує.

# --instructions--

Ми визначили функцію `forecast`, яка приймає масив як аргумент. Змініть функцію за допомогою `slice()`, щоб вилучити інформацію з масиву аргументів і повернути новий масив, що містить елементи `warm` та `sunny`.

# --hints--

`forecast` має повернути `["warm", "sunny"]`

```js
assert.deepEqual(
  forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']),
  ['warm', 'sunny']
);
```

Функція `forecast` повинна використовувати метод `slice()`

```js
assert(/\.slice\(/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
function forecast(arr) {
  // Only change code below this line

  return arr;
}

// Only change code above this line
console.log(forecast(['cold', 'rainy', 'warm', 'sunny', 'cool', 'thunderstorms']));
```

# --solutions--

```js
function forecast(arr) {
  return arr.slice(2,4);
}
```
