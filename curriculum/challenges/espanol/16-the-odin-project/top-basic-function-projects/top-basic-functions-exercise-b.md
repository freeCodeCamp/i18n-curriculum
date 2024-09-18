---
id: 661e131f068359c3ccf2f4d6
title: Ejercicio de funciones básicas B
challengeType: 1
dashedName: top-basic-functions-exercise-b
---

# --description--

Escribe una función, llamada `multiply`, que tome dos parámetros y devuelva su producto.

# --hints--

Debes tener una función llamada `multiply`.

```js
assert.isFunction(multiply);
```

Tu función debe recibir dos enteros como argumentos.

```js
assert.match(multiply.toString(), /\s*multiply\(\s*\w+\s*,\s*\w+\s*\)/);
```

Debes devolver el producto de los dos enteros.

```js
assert.strictEqual(multiply(10, 10), 100);
```


# --seed--

## --seed-contents--

```js

```

## --solutions--

```js 
function multiply(a, b) {
  return a * b;
}
```
