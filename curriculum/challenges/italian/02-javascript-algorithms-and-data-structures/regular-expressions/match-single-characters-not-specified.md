---
id: 587d7db6367417b2b2512b98
title: Riconoscere singoli caratteri non specificati
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

Per creare un set di caratteri negati, devi posizionare un carattere di cursore (`^`) dopo la parentesi di apertura e prima dei caratteri che non desideri riconoscere.

Ad esempio, `/[^aeiou]/gi` corrisponde a tutti i caratteri che non sono vocali. Nota che caratteri come `.`, `!`, `[`, `@`, `/` e lo spazio bianco sono riconosciuti - il set di caratteri vocale negato esclude solo i caratteri vocali.

# --instructions--

Crea una singola espressione regolare che riconosca tutti i caratteri che non sono un numero o una vocale. Ricordati di includere i flag appropriati nell'espressione regolare.

# --hints--

La tua espressione regolare `myRegex` dovrebbe riconoscere 9 elementi.

```js
assert(result.length == 9);
```

La tua espressione regolare `myRegex` dovrebbe usare il flag global.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

La tua espressione regolare `myRegex` dovrebbe usare il flag insensibile alle maiuscole e minuscole.

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
