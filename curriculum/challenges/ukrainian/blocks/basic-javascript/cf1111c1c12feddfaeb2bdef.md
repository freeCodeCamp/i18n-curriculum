---
id: cf1111c1c12feddfaeb2bdef
title: Генерація випадкових цілих чисел у заданому діапазоні
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

Ви можете згенерувати випадкове ціле число в діапазоні від нуля до заданого числа. Також можна вибрати інше нижнє число для цього діапазону.

Ви назвете своє мінімальне число `min` і максимальне число `max`.

Ця формула дає випадкове ціле число в діапазоні від `min` до `max`. Приділіть хвилину, щоб прочитати її і спробувати зрозуміти, що робить цей код:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

Створіть функцію з назвою `randomRange`, яка приймає діапазон `myMin` і `myMax` і повертає випадкове ціле число, яке є більшим або рівним `myMin` і меншим або рівним `myMax`.

# --hints--

Найнижче випадкове число, яке може згенерувати `randomRange`, має бути рівним вашому мінімальному числу, `myMin`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

Найвище випадкове число, яке може згенерувати `randomRange`, має бути рівним вашому максимальному числу, `myMax`.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

Випадкове число, згенероване `randomRange`, має бути цілим числом, а не десятковим.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange` має використовувати і `myMax`, і `myMin`, і повертати випадкове число у вашому діапазоні.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
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
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
