---
id: 587d7db5367417b2b2512b96
title: Capturar letras do alfabeto
challengeType: 1
forumTopicId: 301354
dashedName: match-letters-of-the-alphabet
---

# --description--

You saw how you can use <dfn>character sets</dfn> to specify a group of characters to match, but that's a lot of typing when you need to match a large range of characters (for example, every letter in the alphabet). Fortunately, there is a built-in feature that makes this short and simple.

Você pode usar um hífen (`-`) para definir um intervalo de caracteres para capturar dentro de uma classe.

Por exemplo, para encontrar letras minúsculas de `a` a `e`, você pode escrever `[a-e]`.

```js
let catStr = "cat";
let batStr = "bat";
let matStr = "mat";
let bgRegex = /[a-e]at/;
catStr.match(bgRegex);
batStr.match(bgRegex);
matStr.match(bgRegex);
```

As três chamadas a `match` retornam, na ordem, os valores: `["cat"]`, `["bat"]` e `null`.

# --instructions--

Capture todas as letras na string `quoteSample`.

**Observação:** você quer encontrar tanto maiúsculas quanto minúsculas.

# --hints--

A regex `alphabetRegex` deve encontrar 35 itens.

```js
assert(result.length == 35);
```

Você deve usar a flag global na sua regex `alphabetRegex`.

```js
assert(alphabetRegex.flags.match(/g/).length == 1);
```

Você deve usar a flag de ignorar caixa na sua regex `alphabetRegex`.

```js
assert(alphabetRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "The quick brown fox jumps over the lazy dog.";
let alphabetRegex = /change/; // Change this line
let result = alphabetRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "The quick brown fox jumps over the lazy dog.";
let alphabetRegex = /[a-z]/gi; // Change this line
let result = quoteSample.match(alphabetRegex); // Change this line
```
