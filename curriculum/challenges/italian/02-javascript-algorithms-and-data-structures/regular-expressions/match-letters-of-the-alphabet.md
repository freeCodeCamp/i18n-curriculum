---
id: 587d7db5367417b2b2512b96
title: Riconoscere le lettere dell'alfabeto
challengeType: 1
forumTopicId: 301354
dashedName: match-letters-of-the-alphabet
---

# --description--

You saw how you can use <dfn>character sets</dfn> to specify a group of characters to match, but that's a lot of typing when you need to match a large range of characters (for example, every letter in the alphabet). Fortunately, there is a built-in feature that makes this short and simple.

All'interno di un set di caratteri, è possibile definire un intervallo di caratteri da abbinare utilizzando un carattere trattino: `-`.

Ad esempio, per riconoscere le lettere minuscole da `a` a `e` userai `[a-e]`.

```js
let catStr = "cat";
let batStr = "bat";
let matStr = "mat";
let bgRegex = /[a-e]at/;
catStr.match(bgRegex);
batStr.match(bgRegex);
matStr.match(bgRegex);
```

In ordine, le tre chiamate `match` restituiranno i valori `["cat"]`, `["bat"]`, e `null`.

# --instructions--

Riconosci tutte le lettere nella stringa `quoteSample`.

**Nota**: Assicurati di abbinare sia lettere maiuscole che minuscole.

# --hints--

La tua espressione regolare `alphabetRegex` dovrebbe riconoscere 35 elementi.

```js
assert(result.length == 35);
```

La tua espressione regolare `alphabetRegex` dovrebbe usare il flag global.

```js
assert(alphabetRegex.flags.match(/g/).length == 1);
```

La tua espressione regolare `alphabetRegex` dovrebbe usare il flag insensibile alle maiuscole e minuscole.

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
