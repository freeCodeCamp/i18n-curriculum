---
id: 587d7db6367417b2b2512b98
title: Capturar caracteres não especificados
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

Para criar uma classe de caracteres negada, você só precisa colocar um acento circunflexo (`^`) depois do colchete de abertura e à esquerda dos caracteres que você quer evitar.

Por exemplo, `/[^aeiou]/gi` encontra todos os caracteres que não são vogais. Observe que caracteres como `.`, `!`, `[`, `@`, `/` e espaços em branco são capturados - a classe de vogais negada apenas exclui os caracteres que são vogais.

# --instructions--

Crie uma única regex que captura todos os caracteres que não são números ou vogais. Lembre-se de incluir as flags necessárias na regex.

# --hints--

A regex `myRegex` deve encontrar 9 itens.

```js
assert(result.length == 9);
```

Você deve usar a flag global na regex `myRegex`.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

Você deve usar a flag de ignorar caixa na regex `myRegex`.

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
