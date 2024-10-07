---
id: 587d7db7367417b2b2512b9d
title: Haz coincidir patrones de cadena de inicio
challengeType: 1
forumTopicId: 301349
dashedName: match-beginning-string-patterns
---

# --description--

Prior challenges showed that regular expressions can be used to look for a number of matches. They are also used to search for patterns in specific positions in strings.

En un desafío anterior, usaste el carácter caret (`^`) dentro de un conjunto de caracteres para crear un conjunto de caracteres en la forma `[^thingsThatWillNotBeMatched]`. Fuera de un conjunto de caracteres, el caret es utilizado para buscar patrones al principio de las cadenas.

```js
let firstString = "Ricky is first and can be found.";
let firstRegex = /^Ricky/;
firstRegex.test(firstString);
let notFirst = "You can't find Ricky now.";
firstRegex.test(notFirst);
```

La primera llamada `test` devolverá `true`, mientras que la segunda retornara `false`.

# --instructions--

Usa el carácter caret en una expresión para buscar `Cal` solo al principio de la cadena `rickyAndCal`.

# --hints--

Tu expresión regular debe buscar la cadena `Cal` con una letra mayúscula.

```js
assert(calRegex.source == '^Cal');
```

Tu expresión regular no debería usar ninguna etiqueta.

```js
assert(calRegex.flags == '');
```

Tu expresión regular debe coincidir con la cadena `Cal` en el inicio de la cadena.

```js
calRegex.lastIndex = 0;
assert(calRegex.test('Cal and Ricky both like racing.'));
```

Tu expresión regular debe coincidir con la cadena `Cal` en medio de la cadena.

```js
calRegex.lastIndex = 0;
assert(!calRegex.test('Ricky and Cal both like racing.'));
```

# --seed--

## --seed-contents--

```js
let rickyAndCal = "Cal and Ricky both like racing.";
let calRegex = /change/; // Change this line
let result = calRegex.test(rickyAndCal);
```

# --solutions--

```js
let rickyAndCal = "Cal and Ricky both like racing.";
let calRegex = /^Cal/; // Change this line
let result = calRegex.test(rickyAndCal);
```
