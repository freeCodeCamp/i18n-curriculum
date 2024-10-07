---
id: 587d825b367417b2b2512c8d
title: Creare una mappa JavaScript ES6
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(key)` restituisce il valore associato a una chiave
- `.set(key, value)` imposta una nuova coppia chiave-valore
- `.delete(key)` rimuove una coppia chiave-valore
- `.clear()` rimuove tutte le coppie chiave-valore
- `.entries()` restituisce un array di tutte le chiavi in ordine di inserimento
- `.values()` restituisce un array di tutti i valori in ordine di inserimento

# --instructions--

Definisci un oggetto Map JavaScript e assegna ad esso una variabile chiamata myMap. Aggiungi la coppia chiave-valore `freeCodeCamp`, `Awesome!` ad esso.

# --hints--

L'oggetto `myMap` dovrebbe esistere.

```js
assert(typeof myMap === 'object');
```

`myMap` dovrebbe contenere la coppia chiave-valore `freeCodeCamp`,`Awesome!`.

```js
assert(myMap.get('freeCodeCamp') === 'Awesome!');
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
const myMap = new Map();

myMap.set("freeCodeCamp", "Awesome!");
```
