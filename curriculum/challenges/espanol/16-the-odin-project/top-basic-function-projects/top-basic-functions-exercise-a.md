---
id: 6619240f46cec8e04d77e03a
title: Ejercicio de funciones básicas A
challengeType: 1
dashedName: top-basic-functions-exercise-a
---

# --description--

Crea una función que tome un número entero. Esta función debe volver el `integer + 7` dado si el entero es menos de `10`. Si el entero es mayor o igual a `10`, debe volver el `integer - 3` dado.

El nombre de la función debe ser `addOrSubtract`.

# --hints--

Debes tener una función llamada `addOrSubtract`.

```js
assert.isFunction(addOrSubtract);
```

Tu función debe tomar un número entero como argumento.

```js
assert.match(addOrSubtract.toString(), /\s*addOrSubtract\(\s*\w+\s*\)/);
```

Tu función debe volver el número entero dado + 7 si el número entero es menor que 10.

```js
assert.strictEqual(addOrSubtract(5), 12);
```

Tu función debe volver el número entero dado - 3 si el número entero es mayor o igual a 10.

```js
assert.strictEqual(addOrSubtract(10), 7);
```




# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function addOrSubtract(num) {
  if (num < 10) {
    return num + 7;
  } else {
    return num - 3;
  }
}
```
