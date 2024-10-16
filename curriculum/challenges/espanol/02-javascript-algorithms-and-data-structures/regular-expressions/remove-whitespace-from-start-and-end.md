---
id: 587d7dbb367417b2b2512bac
title: Elimina espacio en blanco del inicio y final
challengeType: 1
forumTopicId: 301362
dashedName: remove-whitespace-from-start-and-end
---

# --description--

Sometimes whitespace characters around strings are not wanted but are there. Typical processing of strings is to remove the whitespace at the start and end of it.

# --instructions--

Escribe una expresión regular y usa los métodos de cadena apropiados para eliminar espacios en blanco al principio y al final de las cadenas.

**Nota:** El método `String.prototype.trim()` funcionará aquí, pero necesitarás completar este desafío usando expresiones regulares.

# --hints--

`result` debe ser igual a la cadena `Hello, World!`

```js
assert(result === 'Hello, World!');
```

Tu solución no debe usar el método `String.prototype.trim()`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?trim/));
```

La variable `result` no debe ser igual a una cadena

```js
assert(!__helpers.removeJSComments(code).match(/result\s*=\s*["'`].*?["'`]/));
```

El valor de la variable `hello` no debe modificarse.

```js
assert(hello === '   Hello, World!  ');
```

# --seed--

## --seed-contents--

```js
let hello = "   Hello, World!  ";
let wsRegex = /change/; // Change this line
let result = hello; // Change this line
```

# --solutions--

```js
let hello = "   Hello, World!  ";
let wsRegex = /^(\s+)(.+[^\s])(\s+)$/;
let result = hello.replace(wsRegex, '$2');
```
