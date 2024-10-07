---
id: 587d7b8c367417b2b2512b56
title: Використання export для спільного використання блоку коду
challengeType: 1
forumTopicId: 301219
dashedName: use-export-to-share-a-code-block
---

# --description--

Imagine a file called `math_functions.js` that contains several functions related to mathematical operations. One of them is stored in a variable, `add`, that takes in two numbers and returns their sum. You want to use this function in several different JavaScript files. In order to share it with these other files, you first need to `export` it.

```js
export const add = (x, y) => {
  return x + y;
}
```

Зверху подано звичайний спосіб експорту однієї функції, але можна зробити і так:

```js
const add = (x, y) => {
  return x + y;
}

export { add };
```

Змінну чи функцію можна імпортувати в інший файл при експорті і використовувати їх без необхідності переписувати код. Ви можете експортувати декілька об’єктів, повторюючи перший приклад для кожного об’єкту, який хочете експортувати, або ж розмістивши їх усіх в експортній інструкції другого прикладу:

```js
export { add, subtract };
```

# --instructions--

У редакторі є дві функції, пов’язані з рядком. Експортуйте обидві, використовуючи один з методів на ваш вибір.

# --hints--

Ви повинні правильно експортувати `uppercaseString`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+uppercaseString|export\s*{\s*(uppercaseString[^}]*|[^,]*,\s*uppercaseString\s*)})/g
  )
);
```

Ви повинні правильно експортувати `lowercaseString`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /(export\s+const\s+lowercaseString|export\s*{\s*(lowercaseString[^}]*|[^,]*,\s*lowercaseString\s*)})/g
  )
);
```

# --seed--

## --seed-contents--

```js
const uppercaseString = (string) => {
  return string.toUpperCase();
}

const lowercaseString = (string) => {
  return string.toLowerCase()
}
```

# --solutions--

```js
export const uppercaseString = (string) => {
  return string.toUpperCase();
}

export const lowercaseString = (string) => {
  return string.toLowerCase()
}
```
