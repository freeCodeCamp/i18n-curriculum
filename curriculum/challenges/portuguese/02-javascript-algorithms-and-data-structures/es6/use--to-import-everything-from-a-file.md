---
id: 587d7b8c367417b2b2512b57
title: Usar * para importar tudo de um arquivo
challengeType: 1
forumTopicId: 301210
dashedName: use--to-import-everything-from-a-file
---

# --description--

Suppose you have a file and you wish to import all of its contents into the current file. This can be done with the `import * as` syntax. Here's an example where the contents of a file named `math_functions.js` are imported into a file in the same directory:

```js
import * as myMathModule from "./math_functions.js";
```

A instrução `import` acima criará um objeto chamado `myMathModule`. Esse nome é totalmente arbitrário. Você pode escolher qualquer outro nome que seja apropriado para sua aplicação. O objeto conterá todas as exportações do arquivo `math_functions.js`. Dessa forma, você pode acessar as funções exportadas da mesma forma que você acessa as propriedades de um objeto. Aqui está um exemplo de como você pode usar as funções `add` e `subtract` que foram importadas:

```js
myMathModule.add(2,3);
myMathModule.subtract(5,3);
```

# --instructions--

O código nesse desafio requer o conteúdo do arquivo: `string_functions.js`, o qual está no mesmo diretório que o arquivo atual. Use a sintaxe `import * as` para importar tudo do arquivo em um objeto chamado `stringFunctions`.

# --hints--

Você deve usar a sintaxe `import * as`.

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
