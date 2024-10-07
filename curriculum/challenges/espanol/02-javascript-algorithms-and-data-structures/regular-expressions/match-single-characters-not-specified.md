---
id: 587d7db6367417b2b2512b98
title: Haz coincidir caracteres individuales no especificados
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

Para crear un conjunto de caracteres negados colocas un carácter de intercalación (`^`) después del corchete de apertura y antes de los caracteres que no quieres coincidir.

Por ejemplo, `/[^aeiou]/gi` coincide con todos los caracteres que no son una vocal. Ten en cuenta que caracteres como `.`, `!`, `[`, `@`, `/` y el espacio en blanco coinciden; el conjunto de caracteres de vocal negados sólo excluye los caracteres de vocal.

# --instructions--

Crea una sola expresión regular que coincida con todos los caracteres que no son un número o una vocal. Recuerda incluir las banderas apropiadas en la expresión regular.

# --hints--

Tu expresión regular `myRegex` debe coincidir con 9 elementos.

```js
assert(result.length == 9);
```

Tu expresión regular `myRegex` debe utilizar la bandera global.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

Tu expresión regular `myRegex` debe utilizar la bandera que no distingue entre mayúsculas y minúsculas.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "3 blind mice.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "3 blind mice.";
let myRegex = /[^0-9aeiou]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
