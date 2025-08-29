---
id: 56bbb991ad1ed5201cd392cb
title: Arrays mit der push-Methode manipulieren
challengeType: 1
forumTopicId: 18237
dashedName: manipulate-arrays-with-push
---

# --description--

An easy way to append data to the end of an array is via the `push()` method.

Die `push()`-Methode nimmt einen oder mehrere <dfn>Argumente</dfn> und hängt sie an das Ende des Arrays an, in der Reihenfolge, in der sie angezeigt werden. Sie gibt die neue Länge des Arrays zurück.

Beispiele:

```js
const arr1 = [1, 2, 3];
arr1.push(4, 5);

const arr2 = ["Stimpson", "J", "cat"];
arr2.push(["happy", "joy"]);
```

`arr1` hat jetzt den Wert `[1, 2, 3, 4, 5]` und `arr2` hat den Wert `["Stimpson", "J", "cat", ["happy", "joy"]]`.

# --instructions--

Füge `["dog", 3]` an das Ende der Variablen `myArray` an.

# --hints--

`myArray` sollte gleich `[["John", 23], ["cat", 2], ["dog", 3]]` sein.

```js
assert(
  (function (d) {
    if (
      d[2] != undefined &&
      d[0][0] == 'John' &&
      d[0][1] === 23 &&
      d[2][0] == 'dog' &&
      d[2][1] === 3 &&
      d[2].length == 2
    ) {
      return true;
    } else {
      return false;
    }
  })(myArray)
);
```

# --seed--

## --after-user-code--

```js
(function(z){return 'myArray = ' + JSON.stringify(z);})(myArray);
```

## --seed-contents--

```js
// Setup
const myArray = [["John", 23], ["cat", 2]];

// Only change code below this line

```

# --solutions--

```js
const myArray = [["John", 23], ["cat", 2]];
myArray.push(["dog",3]);
```
