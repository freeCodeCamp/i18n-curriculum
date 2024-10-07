---
id: 594810f028c0303b75339acb
title: 100 Türen
challengeType: 1
forumTopicId: 302217
dashedName: 100-doors
---

# --description--

Es gibt 100 Türen in einer Reihe, die zunächst alle geschlossen sind. Du kommst 100 mal an den Türen vorbei. Gehe beim ersten Durchgang zu jeder Tür und "schalte" die Tür um (wenn die Tür geschlossen ist, öffne sie; wenn sie offen ist, schließe sie). Beim zweiten Mal, besuche nur jede 2. Tür (d.h. Tür #2, #4, #6,...) und schalte sie um. Beim dritten Mal nur jede dritte Tür (d.h. Tür #3, #6, #9, ...), etc., bis du nur die 100. Tür besuchst.

# --instructions--

Implementiere eine Funktion, die den Zustand jeder Tür nach dem letzten Durchlauf ermittelt. Gebe das Endergebnis in einem Array zurück, der die Türnummer nur enthält, wenn diese geöffnet ist.

# --hints--

`getFinalOpenedDoors` sollte eine Funktion sein.

```js
assert(typeof getFinalOpenedDoors === 'function');
```

`getFinalOpenedDoors` sollte einen Array zurückgeben.

```js
assert(Array.isArray(getFinalOpenedDoors(100)));
```

`getFinalOpenedDoors` sollte das richtige Ergebnis liefern.

```js
assert.deepEqual(getFinalOpenedDoors(100), solution);
```

# --seed--

## --after-user-code--

```js
const solution = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
```

## --seed-contents--

```js
function getFinalOpenedDoors(numDoors) {

}
```

# --solutions--

```js
function getFinalOpenedDoors(numDoors) {
  // this is the final pattern (always squares).
  // thus, the most efficient solution simply returns an array of squares up to numDoors).
  const finalState = [];
  let i = 1;
  while (Math.pow(i, 2) <= numDoors) {
    finalState.push(Math.pow(i, 2));
    i++;
  }
  return finalState;
}
```
