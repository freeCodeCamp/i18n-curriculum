---
id: 587d825b367417b2b2512c8d
title: Erstelle eine ES6-JavaScript-Map
challengeType: 1
forumTopicId: 301635
dashedName: create-an-es6-javascript-map
---

# --description--

The new version of JavaScript provides us with a built-in Map object which provides much of the functionality we wrote by hand in the last challenge. This Map object, although similar to regular JavaScript objects, provides some useful functionality that normal objects lack. For example, an ES6 Map tracks the insertion order of items that are added to it. Here is a more complete overview of its methods:

- `.has(key)` returns true or false based on the presence of a key
- `.get(Schlüssel)` gibt den Wert zurück, der mit einem Schlüssel verbunden ist
- `.set(Schlüssel, Wert)` setzt ein neues Paar aus Schlüssel und Wert
- `.delete(Schlüssel)` entfernt ein Paar aus Schlüssel und Wert
- `.clear()` entfernt alle Schlüssel-Werte-Paare
- `.entries()` gibt ein Array mit allen Schlüsseln in Einfügereihenfolge zurück
- `.values()` gibt ein Array mit allen Werten in Einfügereihenfolge zurück

# --instructions--

Definiere ein JavaScript-Map-Objekt und weise ihm eine Variable namens myMap zu. Er fügt das Schlüssel-Werte-Paar `freeCodeCamp`, `Awesome!` hinzu.

# --hints--

Das `myMap` Objekt sollte existieren.

```js
assert(typeof myMap === 'object');
```

`myMap` sollte das Schlüssel-Wert-Paar `freeCodeCamp` enthalten, `Awesome!`.

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
