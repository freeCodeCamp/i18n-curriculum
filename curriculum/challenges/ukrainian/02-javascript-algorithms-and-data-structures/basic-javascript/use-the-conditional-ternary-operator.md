---
id: 587d7b7e367417b2b2512b24
title: Використання умовного (тернарного) оператора
challengeType: 1
forumTopicId: 301181
dashedName: use-the-conditional-ternary-operator
---

# --description--

The <dfn>conditional operator</dfn>, also called the <dfn>ternary operator</dfn>, can be used as a one line if-else expression.

The syntax is `a ? b : c`, where `a` is the condition, `b` is the code to run when the condition returns `true`, and `c` is the code to run when the condition returns `false`.

Ця функція використовує інструкцію `if/else`, щоб перевірити умову:

```js
function findGreater(a, b) {
  if(a > b) {
    return "a is greater";
  }
  else {
    return "b is greater or equal";
  }
}
```

Її можна переписати, використовуючи умовний оператор:

```js
function findGreater(a, b) {
  return a > b ? "a is greater" : "b is greater or equal";
}
```

# --instructions--

Використайте умовний оператор у функції `checkEqual`, щоб перевірити, чи два числа рівні. Функція повинна повернути рядок `Equal` або рядок `Not Equal`.

# --hints--

`checkEqual` має використовувати умовний оператор

```js
assert(/.+?\s*?\?\s*?.+?\s*?:\s*?.+?/.test(__helpers.removeJSComments(code)));
```

`checkEqual(1, 2)` має повертати рядок `Not Equal`

```js
assert(checkEqual(1, 2) === 'Not Equal');
```

`checkEqual(1, 1)` має повертати рядок `Equal`

```js
assert(checkEqual(1, 1) === 'Equal');
```

`checkEqual(1, -1)` має повертати рядок `Not Equal`

```js
assert(checkEqual(1, -1) === 'Not Equal');
```

# --seed--

## --seed-contents--

```js
function checkEqual(a, b) {

}

checkEqual(1, 2);
```

# --solutions--

```js
function checkEqual(a, b) {
  return a === b ? "Equal" : "Not Equal";
}
```
