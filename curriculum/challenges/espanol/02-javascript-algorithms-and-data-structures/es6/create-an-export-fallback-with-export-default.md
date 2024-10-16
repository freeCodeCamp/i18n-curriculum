---
id: 587d7b8c367417b2b2512b58
title: Crear un fallback de exportación con export default
challengeType: 1
forumTopicId: 301199
dashedName: create-an-export-fallback-with-export-default
---

# --description--

In the `export` lesson, you learned about the syntax referred to as a <dfn>named export</dfn>. This allowed you to make multiple functions and variables available for use in other files.

Aquí hay otra sintaxis `export` que necesitas saber, conocida como <dfn>export default</dfn>. Usualmente utilizarás esta sintaxis, si es sólo un valor el que está siendo exportado desde un archivo. También es utilizado para crear valores fallback para un archivo o módulo.

A continuación hay ejemplos usando `export default`:

```js
export default function add(x, y) {
  return x + y;
}

export default function(x, y) {
  return x + y;
}
```

La primera es una función nombrada, y la segunda es una función anónima.

Ya que `export default` es usado para declarar un valor fallback para un módulo o archivo, sólo puedes tener un valor que sea exportación por defecto en cada módulo o archivo. Además, no puedes usar `export default` con `var`, `let`, o `const`

# --instructions--

La siguiente función debe ser el valor fallback para el módulo. Por favor, añade el código necesario para hacerlo.

# --hints--

Tu código debe utilizar un `export` fallback.

```js
assert(
  __helpers.removeJSComments(code).match(
    /export\s+default\s+function(\s+subtract\s*|\s*)\(\s*x,\s*y\s*\)\s*{/g
  )
);
```

# --seed--

## --seed-contents--

```js
function subtract(x, y) {
  return x - y;
}
```

# --solutions--

```js
export default function subtract(x, y) {
  return x - y;
}
```
