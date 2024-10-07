---
id: 587d7db3367417b2b2512b8f
title: Haz coincidir cadenas literales
challengeType: 1
forumTopicId: 301355
dashedName: match-literal-strings
---

# --description--

In the last challenge, you searched for the word `Hello` using the regular expression `/Hello/`. That regex searched for a literal match of the string `Hello`. Here's another example searching for a literal match of the string `Kevin`:

```js
let testStr = "Hello, my name is Kevin.";
let testRegex = /Kevin/;
testRegex.test(testStr);
```

Esta llamada a `test` devolverá `true`.

Cualquier otra variante de `Kevin` no coincidirá. Por ejemplo, la expresión regular `/Kevin/` no coincidirá con `kevin` o `KEVIN`.

```js
let wrongRegex = /kevin/;
wrongRegex.test(testStr);
```

Esta llamada a `test` devolverá `false`.

Un futuro desafío también mostrará cómo coincidir esas otras variantes.

# --instructions--

Completa la expresión regular `waldoRegex` para encontrar `"Waldo"` en la cadena `waldoIsHiding` con una coincidencia literal.

# --hints--

Tu expresión regular `waldoRegex` debe encontrar la cadena `Waldo`

```js
waldoRegex.lastIndex = 0;
assert(waldoRegex.test(waldoIsHiding));
```

Tu expresión regular `waldoRegex` no debe buscar ninguna otra cosa.

```js
waldoRegex.lastIndex = 0;
assert(!waldoRegex.test('Somewhere is hiding in this text.'));
```

Debes realizar una coincidencia de cadena literal con tu expresión regular.

```js
assert(!/\/.*\/i/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /search/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```

# --solutions--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /Waldo/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```
