---
id: 661e151f068359c3ccf2f4d7
title: Ejercicio de funciones básicas C
challengeType: 1
dashedName: top-basic-functions-exercise-c
---

# --description--

Escribe una función, llamada `capitalize`, que toma una cadena como un parámetro y devuelve una nueva cadena con la primer letra en mayúscula.

# --hints--

Debes tener una función llamada `capitalize`.

```js
assert.isFunction(capitalize);
```

Tu función debe tomar una cadena como parámetro.

```js
assert.match(capitalize.toString(), /\s*capitalize\(\s*\w+\s*\)/);
```

Tu función debe devolver una nueva cadena con la primer letra en mayúscula.

```js
assert.strictEqual(capitalize('sem'), 'Sem');
```


# --seed--

## --seed-contents--

```js

```

## --solutions--

```js
function capitalize(str) {
  return str[0].toUpperCase() + str.slice(1);
}
```
