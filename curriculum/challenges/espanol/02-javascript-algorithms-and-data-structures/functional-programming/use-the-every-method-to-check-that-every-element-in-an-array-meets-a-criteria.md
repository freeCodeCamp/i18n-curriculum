---
id: 587d7dab367417b2b2512b6e
title: Usa el método "every" para comprobar que cada elemento de un arreglo atienda un criterio
challengeType: 1
forumTopicId: 301312
dashedName: use-the-every-method-to-check-that-every-element-in-an-array-meets-a-criteria
---

# --description--

The `every` method works with arrays to check if *every* element passes a particular test. It returns a Boolean value - `true` if all values meet the criteria, `false` if not.

Por ejemplo, el siguiente código comprobaría si cada elemento en el arreglo `numbers` es menor a 10:

```js
const numbers = [1, 5, 8, 0, 10, 11];

numbers.every(function(currentValue) {
  return currentValue < 10;
});
```

El método `every` devolvería `false` aquí.

# --instructions--

Utiliza el método `every` dentro de la función `checkPositive` para comprobar si cada elemento en `arr` es positivo. La función debe devolver un valor booleano.

# --hints--

Tu código debe usar el método `every`.

```js
assert(__helpers.removeJSComments(code).match(/\.every/g));
```

`checkPositive([1, 2, 3, -4, 5])` debe devolver `false`.

```js
assert.isFalse(checkPositive([1, 2, 3, -4, 5]));
```

`checkPositive([1, 2, 3, 4, 5])` debe devolver `true`.

```js
assert.isTrue(checkPositive([1, 2, 3, 4, 5]));
```

`checkPositive([1, -2, 3, -4, 5])` debe devolver `false`.

```js
assert.isFalse(checkPositive([1, -2, 3, -4, 5]));
```

# --seed--

## --seed-contents--

```js
function checkPositive(arr) {
  // Only change code below this line


  // Only change code above this line
}

checkPositive([1, 2, 3, -4, 5]);
```

# --solutions--

```js
function checkPositive(arr) {
  return arr.every(num => num > 0);
}
```
