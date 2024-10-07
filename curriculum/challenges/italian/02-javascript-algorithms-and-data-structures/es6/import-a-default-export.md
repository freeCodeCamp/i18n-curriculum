---
id: 587d7b8d367417b2b2512b59
title: Importare un'esportazione predefinita
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

La sintassi differisce in un punto chiave. Il valore importato, `add`, non è circondato da parentesi graffe (`{}`). `add` qui è semplicemente il nome di una variabile per qualunque sia l'esportazione predefinita del file `math_functions.js`. È possibile utilizzare qualsiasi nome qui quando importi un valore predefinito.

# --instructions--

Nel codice seguente, importa l'esportazione predefinita dal file `math_functions.js`, che si trova nella stessa directory di questo file. Dai all'import il nome `subtract`.

# --hints--

Dovresti importare correttamente `subtract` da `math_functions.js`.

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
