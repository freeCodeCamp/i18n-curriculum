---
id: 587d7b8d367417b2b2512b59
title: Importar uma exportação padrão
challengeType: 1
forumTopicId: 301205
dashedName: import-a-default-export
---

# --description--

In the last challenge, you learned about `export default` and its uses. To import a default export, you need to use a different `import` syntax. In the following example, `add` is the default export of the `math_functions.js` file. Here is how to import it:

```js
import add from "./math_functions.js";
```

A sintaxe é diferente em apenas um ponto. O valor importado, `add`, não está rodeado por chaves (`{}`). Aqui, `add` é simplesmente uma palavra qualquer que vai ser usada para identificar a variável sendo exportada do arquivo `math_functions.js`. Você pode usar qualquer nome ao importar algo que foi exportado como padrão.

# --instructions--

No código a seguir, importe a exportação padrão do arquivo `math_functions.js` encontrado no mesmo diretório do arquivo que foi usado como exemplo. Dê a importação o nome `subtract`.

# --hints--

A única coisa que você precisa fazer é importar `subtract` do arquivo `math_functions.js`.

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
