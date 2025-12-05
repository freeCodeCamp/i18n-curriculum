---
id: adf08ec01beb4f99fc7a68f2
title: Implementa un Removedor de Falsy
challengeType: 26
dashedName: implement-a-falsy-remover
---

# --description--

En este laboratorio crearás una función que elimina todos los valores falsos de un array.

Los valores falsos en JavaScript son `false`, `null`, `0`, `""`, `undefined` y `NaN`.

**Objetivo**: Cumple las historias de usuario a continuación y logra que todas las pruebas pasen para completar el laboratorio.

**Historias de usuario:**

1. Debes tener una función `bouncer` que tome un arreglo como argumento.
1. La función `bouncer` debe devolver un nuevo arreglo que contenga los mismos elementos que el arreglo pasado como argumento, pero con los elementos falsy eliminados.
1. La función `bouncer` no debe cambiar el arreglo pasado como argumento.

Sugerencia: Intenta convertir cada valor a booleano.

# --hints--

Debes tener una función `bouncer`.

```js
assert.isFunction(bouncer);
```

`bouncer([7, "ate", "", false, 9])` debe devolver `[7, "ate", 9]`.

```js
assert.deepEqual(bouncer([7, 'ate', '', false, 9]), [7, 'ate', 9]);
```

`bouncer(["a", "b", "c"])` debe devolver `["a", "b", "c"]`.

```js
assert.deepEqual(bouncer(['a', 'b', 'c']), ['a', 'b', 'c']);
```

`bouncer([false, null, 0, NaN, undefined, ""])` debe devolver `[]`.

```js
assert.deepEqual(bouncer([false, null, 0, NaN, undefined, '']), []);
```

`bouncer([null, NaN, 1, 2, undefined])` debe devolver `[1, 2]`.

```js
assert.deepEqual(bouncer([null, NaN, 1, 2, undefined]), [1, 2]);
```

La función `bouncer` no debe mutar el arreglo pasado como argumento.

```js
const arr = ['a', false, 0, 'Naomi'];
bouncer(arr);
assert.deepEqual(arr, ['a', false, 0, 'Naomi']);
```

`bouncer([])` debería devolver `[]`.  

```js  
assert.deepEqual(bouncer([]), []);  
```  

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
function bouncer(arr) {
  return arr.filter(e => e);
}
```
