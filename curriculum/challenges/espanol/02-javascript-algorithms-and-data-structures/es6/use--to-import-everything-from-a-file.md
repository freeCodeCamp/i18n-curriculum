---
id: 587d7b8c367417b2b2512b57
title: Use * para importar todo de un archivo
challengeType: 1
forumTopicId: 301210
dashedName: use--to-import-everything-from-a-file
---

# --description--

Suppose you have a file and you wish to import all of its contents into the current file. This can be done with the `import * as` syntax. Here's an example where the contents of a file named `math_functions.js` are imported into a file in the same directory:

```js
import * as myMathModule from "./math_functions.js";
```

La anterior declaración `import`, crea un objeto llamado `myMathModule`. Esto es, sólo el nombre de una variable, puedes nombrarlo de cualquier manera. El objeto contiene todas las exportaciones de `math_functions.js`, así puedes acceder a las funciones, como haces con cualquier propiedad del objeto. A continuación puedes usar las funciones importadas `add` y `subtract`:

```js
myMathModule.add(2,3);
myMathModule.subtract(5,3);
```

# --instructions--

El código actual, requiere los contenidos del archivo: `string_functions.js`, ubicado en el mismo directorio que el archivo actual. Usa la sintaxis `import * as`, para importar todo del archivo, en un objeto llamado `stringFunctions`.

# --hints--

Tu código debe utilizar apropiadamente la sintaxis `import * as`.

```js
assert(
  __helpers.removeJSComments(code).match(
    /import\s*\*\s*as\s+stringFunctions\s+from\s*('|")\.\/string_functions\.js\1/g
  )
);
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

stringFunctions.uppercaseString("hello");
stringFunctions.lowercaseString("WORLD!");
```

# --solutions--

```js
import * as stringFunctions from "./string_functions.js";

// add code above this line
stringFunctions.uppercaseString("hello");
stringFunctions.lowercaseString("WORLD!");
```
