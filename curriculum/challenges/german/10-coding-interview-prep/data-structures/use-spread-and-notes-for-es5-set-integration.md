---
id: 587d8255367417b2b2512c73
title: Spread und Notes für ES5 Set()-Integration verwenden
challengeType: 1
forumTopicId: 301720
dashedName: use-spread-and-notes-for-es5-set-integration
---

# --description--

Do you remember the ES6 spread operator `...`?

`...` kann in ES6 iterierbare Objekte in Arrays umwandeln.

Erzeugen wir ein Set und testen wir die Ausbreitungsfunktion.

```js
var set = new Set([1,2,3]);
var setToArr = [...set]
console.log(setToArr) // returns [ 1, 2, 3 ]
```

# --instructions--

In dieser Übung werden wir ein Set-Objekt an die Funktion `checkSet` übergeben. Er sollte ein Array zurückgeben, das die Werte des Sets enthält.

Jetzt hast du erfolgreich gelernt, wie man das ES6 `Set()`-Objekt benutzt, gut gemacht!

# --hints--

`checkSet(new Set([1,2,3,4,5,6,7])` sollte `[1, 2, 3, 4, 5, 6, 7]` zurückgeben.

```js
assert(
  (function () {
    var test = checkSet(new Set([1, 2, 3, 4, 5, 6, 7]));
    return DeepEqual(test, [1, 2, 3, 4, 5, 6, 7]);
  })()
);
```

# --seed--

## --seed-contents--

```js
function checkSet(set){
   // Only change code below this line

   // Only change code above this line
}
```

# --solutions--

```js
function checkSet(set){
return [...set];}
```
