---
id: 661e17c6068359c3ccf2f4d8
title: Ejercicio de funciones básicas D
challengeType: 1
dashedName: top-basic-functions-exercise-d
---

# --description--

Escribe una función, llamada `lastLetter`, que toma una cadena como parámetro y devuelve la última letra de la cadena.

# --hints--

Debes tener una función llamada `lastLetter`.

```js
assert.isFunction(lastLetter);
```

Tu función debe tomar una cadena como parámetro.

```js
assert.match(lastLetter.toString(), /\s*lastLetter\(\s*\w+\s*\)/);
```

Debes volver la última letra de la cadena.

```js
assert.strictEqual(lastLetter('Sem'), 'm');
```


# --seed--

## --seed-contents--

```js

```

## --solutions--

```js
function lastLetter(str) {
  return str[str.length - 1];
}
```
