---
id: 587d8255367417b2b2512c73
title: Usar notas y saltos para ES5 Set() Integración
challengeType: 1
forumTopicId: 301720
dashedName: use-spread-and-notes-for-es5-set-integration
---

# --description--

¿Te acordas del operador de espacios ES6 `...`?

`...` puede tomar objetos iterables en ES6 y convertirlos en arrays.

Vamos a crear un Conjunto y revisar la función de propagación.

```js
var set = new Set([1,2,3]);
var setToArr = [...set]
console.log(setToArr) // returns [ 1, 2, 3 ]
```

# --instructions--

En este ejercicio pasaremos un objeto establecido a la función `checkSet`. Debe devolver una matriz que contenga los valores del Set.

Ahora has aprendido con éxito cómo usar el objeto ES6 `Set()`, ¡buen trabajo!

# --hints--

`checkSet(new Set([1,2,3,4,5,6,7])` debe devolver `[1, 2, 3, 4, 5, 6, 7]`.

```js
var test = checkSet(new Set([1, 2, 3, 4, 5, 6, 7]));
assert.deepEqual(test, [1, 2, 3, 4, 5, 6, 7]);
```

# --seed--

## --seed-contents--

```js
function checkSet(set){
   // Only change code below this line

   // Only change code above this line
}
```

# --solutions--

```js
function checkSet(set){
return [...set];}
```
