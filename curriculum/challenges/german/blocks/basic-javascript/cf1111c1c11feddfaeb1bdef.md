---
id: cf1111c1c11feddfaeb1bdef
title: Mit JavaScript-While-Schleifen iterieren
challengeType: 1
forumTopicId: 18220
dashedName: iterate-with-javascript-while-loops
---

# --description--

Sie können denselben Code mehrfach ausführen, indem Sie eine Schleife verwenden.

Der erste Schleifentyp, den wir lernen, heißt `while`-Schleife, weil sie läuft, solange eine bestimmte Bedingung wahr ist, und stoppt, sobald diese Bedingung nicht mehr wahr ist.

```js
const ourArray = [];
let i = 0;

while (i < 5) {
  ourArray.push(i);
  i++;
}
```

Im obigen Codebeispiel wird die `while`-Schleife 5-mal ausgeführt und fügt die Zahlen von 0 bis 4 zu `ourArray` hinzu.

Versuchen wir, eine while-Schleife zum Laufen zu bringen, indem wir Werte in ein Array einfügen.

# --instructions--

Fügen Sie die Zahlen von 5 bis 0 (einschließlich) in absteigender Reihenfolge mit einer `myArray`-Schleife zu `while` hinzu.

# --hints--

Sie sollten hierfür eine `while`-Schleife verwenden.

```js
assert(__helpers.removeJSComments(code).match(/while/g));
```

`myArray` sollte gleich `[5, 4, 3, 2, 1, 0]` sein.

```js
assert.deepEqual(myArray, [5, 4, 3, 2, 1, 0]);
```

# --seed--

## --seed-contents--

```js
// Setup
const myArray = [];

// Only change code below this line

```

# --solutions--

```js
const myArray = [];
let i = 5;
while (i >= 0) {
  myArray.push(i);
  i--;
}
```
