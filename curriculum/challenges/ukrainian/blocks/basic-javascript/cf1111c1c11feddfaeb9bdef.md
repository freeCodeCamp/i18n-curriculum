---
id: cf1111c1c11feddfaeb9bdef
title: Згенерувати випадкові дроби за допомогою JavaScript
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

Випадкові числа корисні для створення випадкової поведінки.

JavaScript має `Math.random()` функцію, яка генерує випадкове десяткове число між `0` (включно) та `1` (виключно). Отже, `Math.random()` може повернути `0`, але ніколи не поверне `1`.

**Примітка:** Як і в <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">збереженні значень за допомогою оператора присвоєння</a>, усі виклики функцій будуть виконані до того, як `return` виконається, тому ми можемо `return` значення `Math.random()` функції.

# --instructions--

Змініть `randomFraction`, щоб вона повертала випадкове число замість повернення `0`.

# --hints--

`randomFraction` має повертати випадкове число.

```js
assert(typeof randomFraction() === 'number');
```

Число, яке повертає `randomFraction`, має бути десятковим.

```js
assert((randomFraction() + '').match(/\./g));
```

Ви маєте використовувати `Math.random` для генерації випадкового десяткового числа.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
