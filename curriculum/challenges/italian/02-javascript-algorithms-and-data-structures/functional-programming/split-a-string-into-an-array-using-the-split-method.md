---
id: 587d7daa367417b2b2512b6b
title: Suddividere una stringa in un array usando il metodo split
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

Ecco un esempio che divide una stringa in base agli spazi, poi un altro in base alle cifre facendo uso di un'espressione regolare:

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace` avrà il valore `["Hello", "World"]` e `byDigits` avrà il valore `["How", "are", "you", "today"]`.

Dal momento che le stringhe sono immutabili, il metodo `split` rende più facile lavorare con esse.

# --instructions--

Usa il metodo `split` all'interno della funzione `splitify` per dividere `str` in un array di parole. La funzione dovrebbe restituire l'array. Nota che le parole non sono sempre separate da spazi, e l'array non dovrebbe contenere punteggiatura.

# --hints--

Il tuo codice dovrebbe utilizzare il metodo `split`.

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")` dovrebbe restituire `["Hello", "World", "I", "am", "code"]`.

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")` dovrebbe restituire `["Earth", "is", "our", "home"]`.

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")` dovrebbe restituire `["This", "is", "a", "sentence"]`.

```js
assert(
  JSON.stringify(splitify('This.is.a-sentence')) ===
    JSON.stringify(['This', 'is', 'a', 'sentence'])
);
```

# --seed--

## --seed-contents--

```js
function splitify(str) {
  // Only change code below this line


  // Only change code above this line
}

splitify("Hello World,I-am code");
```

# --solutions--

```js
function splitify(str) {
  return str.split(/\W/);
}
```
