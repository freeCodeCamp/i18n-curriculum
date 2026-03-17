---
id: bd7123c9c441eddfaeb5bdef
title: Розуміння булевих значень
challengeType: 1
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Ще одним типом даних є <dfn>булевий</dfn>. Булеві значення можуть бути лише одним із двох значень: `true` або `false`. Вони фактично є маленькими перемикачами вкл/викл, де `true` означає вкл, а `false` — викл. Ці два стани є взаємовиключними.

**Примітка:** Булеві значення ніколи не пишуться в лапках. Рядки `"true"` і `"false"` не є булевими і не мають особливого значення в JavaScript.

# --instructions--

Змініть функцію `welcomeToBooleans` так, щоб вона повертала `true` замість `false`.

# --hints--

Функція `welcomeToBooleans()` має повертати булеве (`true` або `false`) значення.

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` має повертати `true`.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --seed-contents--

```js
function welcomeToBooleans() {
  // Only change code below this line

  return false; // Change this line

  // Only change code above this line
}
```

# --solutions--

```js
function welcomeToBooleans() {
  return true; // Change this line
}
```
