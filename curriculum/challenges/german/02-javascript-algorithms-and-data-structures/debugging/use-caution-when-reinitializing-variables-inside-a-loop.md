---
id: 587d7b86367417b2b2512b3c
title: Sei vorsichtig, wenn du Variablen innerhalb einer Schleife reinitialisierst
challengeType: 1
forumTopicId: 301194
dashedName: use-caution-when-reinitializing-variables-inside-a-loop
---

# --description--

Sometimes it's necessary to save information, increment counters, or re-set variables within a loop. A potential issue is when variables either should be reinitialized, and aren't, or vice versa. This is particularly dangerous if you accidentally reset the variable being used for the terminal condition, causing an infinite loop.

Wenn du die Variablenwerte bei jedem Zyklus deiner Schleife mit `console.log()` ausdruckst, kannst du ein fehlerhaftes Verhalten aufdecken, das mit dem Zurücksetzen oder dem Nichtzurücksetzen einer Variablen zusammenhängt.

# --instructions--

Die folgende Funktion soll ein zweidimensionales Array mit `m` Zeilen und `n` Spalten aus Nullen erstellen. Leider bringt es nicht die erwartete Ausgabe, weil die Variable `row` in der äußeren Schleife nicht neu initialisiert (auf ein leeres Array zurückgesetzt) wird. Korrigiere den Code so, dass er ein korrektes 3x2-Array mit Nullen zurückgibt, das wie folgt aussieht: `[[0, 0], [0, 0], [0, 0]]`.

# --hints--

Dein Code sollte die Variable `matrix` auf ein Array setzen, das aus 3 Zeilen und 2 Spalten besteht, die jeweils Nullen enthalten.

```js
assert(JSON.stringify(matrix) == '[[0,0],[0,0],[0,0]]');
```

Die Variable `matrix` sollte 3 Zeilen enthalten.

```js
assert(matrix.length == 3);
```

Die Variable `matrix` sollte 2 Spalten in jeder Zeile besitzen.

```js
assert(
  matrix[0].length == 2 && matrix[1].length === 2 && matrix[2].length === 2
);
```

`zeroArray(4,3)` sollte ein Array mit 4 Zeilen und 3 Spalten bestehend aus Nullen zurückgeben.

```js
assert(JSON.stringify(zeroArray(4,3)) == '[[0,0,0],[0,0,0],[0,0,0],[0,0,0]]');
```

# --seed--

## --seed-contents--

```js
function zeroArray(m, n) {
  // Creates a 2-D array with m rows and n columns of zeroes
  let newArray = [];
  let row = [];
  for (let i = 0; i < m; i++) {
    // Adds the m-th row into newArray

    for (let j = 0; j < n; j++) {
      // Pushes n zeroes into the current row to create the columns
      row.push(0);
    }
    // Pushes the current row, which now has n zeroes in it, to the array
    newArray.push(row);
  }
  return newArray;
}

let matrix = zeroArray(3, 2);
console.log(matrix);

```

# --solutions--

```js
function zeroArray(m, n) {
 // Creates a 2-D array with m rows and n columns of zeroes
 let newArray = [];
 for (let i = 0; i < m; i++) {
   let row = [];
   // Adds the m-th row into newArray

   for (let j = 0; j < n; j++) {
     // Pushes n zeroes into the current row to create the columns
     row.push(0);
   }
   // Pushes the current row, which now has n zeroes in it, to the array
   newArray.push(row);
 }
 return newArray;
}

let matrix = zeroArray(3, 2);
console.log(matrix);

```
