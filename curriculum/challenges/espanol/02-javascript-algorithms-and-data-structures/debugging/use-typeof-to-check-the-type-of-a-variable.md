---
id: 587d7b84367417b2b2512b34
title: Utiliza typeof para comprobar el tipo de una variable
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

Aquí hay algunos ejemplos que utilizan `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

En orden, la consola mostrará las cadenas `string`, `number`, `object`, y `object`.

JavaScript reconoce siete tipos de datos primitivos (inmutables): `Boolean`, `Null`, `Undefined`, `Number`, `String`, `Symbol` (nuevo con ES6), y `BigInt` (nuevo con ES2020), y un tipo para elementos mutables: `Object`. Ten en cuenta que en JavaScript, los arreglos son técnicamente un tipo de objeto.

# --instructions--

Agrega dos sentencias `console.log()` para comprobar el `typeof` de cada una de las dos variables `seven` y `three` en el código.

# --hints--

Tu código debe utilizar `typeof` en dos sentencias `console.log()` para comprobar el tipo de las variables.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

Tu código debe utilizar `typeof` para comprobar el tipo de la variable `seven`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

Tu código debe utilizar `typeof` para comprobar el tipo de la variable `three`.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
