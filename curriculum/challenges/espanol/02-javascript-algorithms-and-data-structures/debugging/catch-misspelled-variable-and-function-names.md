---
id: 587d7b84367417b2b2512b35
title: Captura nombres de variables y funciones mal escritos
challengeType: 1
forumTopicId: 301186
dashedName: catch-misspelled-variable-and-function-names
---

# --description--

The `console.log()` and `typeof` methods are the two primary ways to check intermediate values and types of program output. Now it's time to get into the common forms that bugs take. One syntax-level issue that fast typers can commiserate with is the humble spelling error.

Los caracteres transpuestos, omitidos o mal escritos en el nombre de una variable o función harán que el navegador busque un objeto que no existe y se queje en forma de error de referencia. Los nombres de variables y funciones de JavaScript distinguen entre mayúsculas y minúsculas.

# --instructions--

Corrige los dos errores ortográficos en el código para que funcione el cálculo de `netWorkingCapital`.

# --hints--

Comprueba la ortografía de las dos variables utilizadas en el cálculo de netWorkingCapital, la salida de la consola debe mostrar que "Net working capital is: 2".

```js
assert(netWorkingCapital === 2);
```

No debe haber casos de variables mal escritas en el código.

```js
assert(!__helpers.removeJSComments(code).match(/recievables/g));
```

La variable `receivables` debe ser declarada y utilizada correctamente en el código.

```js
assert(__helpers.removeJSComments(code).match(/receivables/g).length == 2);
```

No debe haber casos de variables mal escritas en el código.

```js
assert(!__helpers.removeJSComments(code).match(/payable;/g));
```

La variable `payables` debe ser declarada y utilizada correctamente en el código.

```js
assert(__helpers.removeJSComments(code).match(/payables/g).length == 2);
```

# --seed--

## --seed-contents--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = recievables - payable;
console.log(`Net working capital is: ${netWorkingCapital}`);
```

# --solutions--

```js
let receivables = 10;
let payables = 8;
let netWorkingCapital = receivables - payables;
console.log(`Net working capital is: ${netWorkingCapital}`);
```
