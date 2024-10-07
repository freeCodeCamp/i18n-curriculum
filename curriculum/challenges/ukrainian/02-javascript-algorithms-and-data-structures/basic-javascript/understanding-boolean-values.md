---
id: bd7123c9c441eddfaeb5bdef
title: Булеві значення
challengeType: 1
videoUrl: 'https://scrimba.com/c/c9Me8t4'
forumTopicId: 301176
dashedName: understanding-boolean-values
---

# --description--

Another data type is the <dfn>Boolean</dfn>. Booleans may only be one of two values: `true` or `false`. They are basically little on-off switches, where `true` is on and `false` is off. These two states are mutually exclusive.

**Примітка:** булеві значення завжди записують без лапок. Рядки `"true"` та `"false"` не є булевими та не мають особливого значення у JavaScript.

# --instructions--

Змініть функцію `welcomeToBooleans` так, щоб вона повертала `true` замість `false`.

# --hints--

Функція `welcomeToBooleans()` повинна повертати булеве значення (`true` або `false`).

```js
assert(typeof welcomeToBooleans() === 'boolean');
```

`welcomeToBooleans()` має повертати `true`.

```js
assert(welcomeToBooleans() === true);
```

# --seed--

## --after-user-code--

```js
welcomeToBooleans();
```

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
