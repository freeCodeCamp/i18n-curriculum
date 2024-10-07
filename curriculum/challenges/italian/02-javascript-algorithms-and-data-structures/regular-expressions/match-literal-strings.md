---
id: 587d7db3367417b2b2512b8f
title: Riconoscere le stringhe letterali
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

Questa chiamata a `test` restituirà `true`.

Qualsiasi altra forma di `Kevin` non corrisponderà. Ad esempio, l'espressione regolare `/Kevin/` non corrisponderà a `kevin` o `KEVIN`.

```js
let wrongRegex = /kevin/;
wrongRegex.test(testStr);
```

Questa chiamata a `test` restituirà `false`.

Una sfida futura mostrerà come riconoscere anche queste altre forme.

# --instructions--

Completa l'espressione regolare `waldoRegex` per trovare `"Waldo"` nella stringa `waldoIsHiding` con una corrispondenza letterale.

# --hints--

La tua espressione regolare `waldoRegex` dovrebbe trovare la stringa `Waldo`

```js
waldoRegex.lastIndex = 0;
assert(waldoRegex.test(waldoIsHiding));
```

La tua espressione regolare `waldoRegex` non dovrebbe cercare altro.

```js
waldoRegex.lastIndex = 0;
assert(!waldoRegex.test('Somewhere is hiding in this text.'));
```

Dovresti cercare la corrispondenza di una stringa letterale con la tua espressione regolare.

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
