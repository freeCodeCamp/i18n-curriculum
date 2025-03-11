---
id: 587d7b7e367417b2b2512b22
title: Використання функції parseInt з розрядом
challengeType: 1
forumTopicId: 301182
dashedName: use-the-parseint-function-with-a-radix
---

# --description--

The `parseInt()` function parses a string and returns an integer. It takes a second argument for the radix, which specifies the base of the number in the string. The radix can be an integer between 2 and 36.

Виклик функції виглядає так:

```js
parseInt(string, radix);
```

Ось приклад:

```js
const a = parseInt("11", 2);
```

Змінна розряду каже, що `11` знаходиться у двійковій системі, або у базі 2. Цей приклад перетворює рядок `11` на ціле число `3`.

# --instructions--

Використайте `parseInt()` у функції `convertToInteger`, щоб двійкове число перетворилось на ціле число і повернулось.

# --hints--

`convertToInteger` має використовувати функцію `parseInt()`

```js
assert(/parseInt/g.test(__helpers.removeJSComments(code)));
```

`convertToInteger("10011")` має повертати число

```js
assert(typeof convertToInteger('10011') === 'number');
```

`convertToInteger("10011")` має повертати 19

```js
assert(convertToInteger('10011') === 19);
```

`convertToInteger("111001")` має повертати 57

```js
assert(convertToInteger('111001') === 57);
```

`convertToInteger("JamesBond")` має повертати `NaN`

```js
assert.isNaN(convertToInteger('JamesBond'));
```

# --seed--

## --seed-contents--

```js
function convertToInteger(str) {

}

convertToInteger("10011");
```

# --solutions--

```js
function convertToInteger(str) {
  return parseInt(str, 2);
}
```
