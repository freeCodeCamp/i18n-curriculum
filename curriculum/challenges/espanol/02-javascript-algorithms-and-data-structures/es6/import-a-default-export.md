---
id: 587d7b8d367417b2b2512b59
title: Importa una exportación por defecto
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

La sintaxis difiere en un punto clave. El valor importado, `add`, no está rodeado por llaves (`{}`). `add`, aquí es simplemente un nombre de variable, para cualquiera que sea la exportación por defecto del archivo `math_functions.js`. Puedes utilizar cualquier nombre aquí, al importar un valor por defecto.

# --instructions--

El siguiente código, importa como exportación por defecto, desde el archivo `math_functions.js`, encontrado en el mismo directorio que este archivo. Da a la importación el nombre de `subtract`.

# --hints--

Debes importar correctamente `subtract` de `math_functions.js`.

```js
assert(__helpers.removeJSComments(code).match(/import\s+subtract\s+from\s+('|")\.\/math_functions\.js\1/g));
```

# --seed--

## --seed-contents--

```js

// Only change code above this line

subtract(7,4);
```

# --solutions--

```js
import subtract from "./math_functions.js";

subtract(7,4);
```
