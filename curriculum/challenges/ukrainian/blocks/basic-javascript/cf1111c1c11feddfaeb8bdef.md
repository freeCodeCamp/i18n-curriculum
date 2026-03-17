---
id: cf1111c1c11feddfaeb8bdef
title: змінити дані масиву за індексами
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

На відміну від рядків, записи масивів є <dfn>змінними</dfn> і їх можна вільно змінювати, навіть якщо масив було оголошено з `const`.

**Приклад**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray` тепер має значення `[15, 40, 30]`.

**Примітка:** Між ім’ям масиву та квадратними дужками не повинно бути пробілів, як у `array [0]`. Хоча JavaScript може обробити це правильно, це може збити з пантелику інших програмістів, які читають ваш код.

# --instructions--

Змініть дані, що зберігаються за індексом `0` у `myArray`, на значення `45`.

# --hints--

`myArray` тепер має бути `[45, 64, 99]`.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

Ви повинні використовувати правильний індекс, щоб змінити значення в `myArray`.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
