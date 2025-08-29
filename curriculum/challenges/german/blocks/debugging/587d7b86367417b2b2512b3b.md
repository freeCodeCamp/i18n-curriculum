---
id: 587d7b86367417b2b2512b3b
title: Abfangen von Fehlern bei der Indizierung um eins
challengeType: 1
forumTopicId: 301189
dashedName: catch-off-by-one-errors-when-using-indexing
---

# --description--

<dfn>Off by one errors</dfn> (sometimes called OBOE) crop up when you're trying to target a specific index of a string or array (to slice or access a segment), or when looping over the indices of them. JavaScript indexing starts at zero, not one, which means the last index is always one less than the length of the item. If you try to access an index equal to the length, the program may throw an "index out of range" reference error or print `undefined`.

Wenn du String- oder Array-Methoden verwendest, die Indexbereiche als Argumente annehmen, ist es hilfreich, die Dokumentation zu lesen und zu wissen, ob sie inklusiv sind (das Element am angegebenen Index ist Teil des Rückgabewerts) oder nicht. Hier sind einige Beispiele von Fehlern, die sich um eins unterscheiden:

```js
let alphabet = "abcdefghijklmnopqrstuvwxyz";
let len = alphabet.length;
for (let i = 0; i <= len; i++) {
  console.log(alphabet[i]);
}
for (let j = 1; j < len; j++) {
  console.log(alphabet[j]);
}
for (let k = 0; k < len; k++) {
  console.log(alphabet[k]);
}
```

Das erste Beispiel macht eine Schleife zu viel und das zweite eine Schleife zu wenig (es fehlt der erste Index, 0). Das dritte Beispiel ist korrekt.

# --instructions--

Behebe die beiden Indizierungsfehler in der folgenden Funktion, damit alle Zahlen 1 bis 5 auf der Konsole ausgegeben werden.

# --hints--

Dein Code sollte die Anfangsbedingung der Schleife so setzen, dass sie beim ersten Index beginnt.

```js
assert(__helpers.removeJSComments(code).match(/i\s*?=\s*?0\s*?;/g).length == 1);
```

Dein Code sollte die Anfangsbedingung der Schleife so festlegen, dass der Index bei 0 beginnt.

```js
assert(!__helpers.removeJSComments(code).match(/i\s?=\s*?1\s*?;/g));
```

Dein Code sollte die Endbedingung der Schleife so setzen, dass sie beim letzten Index anhält.

```js
assert(__helpers.removeJSComments(code).match(/i\s*<\s*len\s*;|i\s*<=\s*len\s*-\s*1\s*;/g).length == 1);
```

Dein Code sollte die Endbedingung der Schleife so festlegen, dass sie bei 1 vor der Länge aufhört.

```js
assert(!__helpers.removeJSComments(code).match(/i\s*?<=\s*?len;/g));
```

# --seed--

## --seed-contents--

```js
function countToFive() {
  let firstFive = "12345";
  let len = firstFive.length;
  // Only change code below this line
  for (let i = 1; i <= len; i++) {
  // Only change code above this line
    console.log(firstFive[i]);
  }
}

countToFive();
```

# --solutions--

```js
function countToFive() {
 let firstFive = "12345";
 let len = firstFive.length;
 // Only change code below this line
 for (let i = 0; i < len; i++) {
 // Only change code above this line
   console.log(firstFive[i]);
 }
}

countToFive();
```
