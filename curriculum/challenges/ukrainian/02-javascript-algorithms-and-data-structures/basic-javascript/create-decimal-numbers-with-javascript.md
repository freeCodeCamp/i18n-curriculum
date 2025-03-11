---
id: cf1391c1c11feddfaeb4bdef
title: Створення десяткових чисел з JavaScript
challengeType: 1
forumTopicId: 16826
dashedName: create-decimal-numbers-with-javascript
---

# --description--

We can store decimal numbers in variables too. Decimal numbers are sometimes referred to as <dfn>floating point</dfn> numbers or <dfn>floats</dfn>.

**Примітка:** під час обчислення чисел вони обчислюються зі скінченною точністю. Операції з плаваючою крапкою можуть призвести до результатів, відмінних від бажаних. Якщо ви отримуєте один із цих результатів, поділіться на <a href="https://forum.freecodecamp.org/" target="_blank" rel="noopener noreferrer nofollow">форумі freeCodeCamp</a>.

# --instructions--

Створіть змінну `myDecimal` і надайте їй десяткове значення з дробовою частиною (наприклад, `5.7`).

# --hints--

`myDecimal` повинна бути числом.

```js
assert(typeof myDecimal === 'number');
```

`myDecimal` повинна мати десяткову крапку

```js
assert(myDecimal % 1 != 0);
```

# --seed--

## --after-user-code--

```js
(function(){if(typeof myDecimal !== "undefined"){return myDecimal;}})();
```

## --seed-contents--

```js
const ourDecimal = 5.7;

// Only change code below this line

```

# --solutions--

```js
const myDecimal = 9.9;
```
