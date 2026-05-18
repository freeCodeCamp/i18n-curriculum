---
id: cf1111c1c11feddfaeb5bdef
title: Mit JavaScript-For-Schleifen iterieren
challengeType: 1
forumTopicId: 18219
dashedName: iterate-with-javascript-for-loops
---

# --description--

Sie können denselben Code mehrfach ausführen, indem Sie eine Schleife verwenden.

Der gebräuchlichste Typ einer JavaScript-Schleife heißt `for`-Schleife, weil sie eine bestimmte Anzahl von Durchläufen ausführt.

For-Schleifen werden mit drei optionalen Ausdrücken deklariert, die durch Semikolons getrennt sind:

`for (a; b; c)`, wobei `a` die Initialisierung, `b` die Bedingung und `c` der abschließende Ausdruck ist.

Die Initialisierung wird nur einmal ausgeführt, bevor die Schleife startet. Sie wird typischerweise verwendet, um Ihre Schleifenvariable zu definieren und einzurichten.

Die Bedingung wird zu Beginn jeder Schleifeniteration ausgewertet und die Schleife läuft weiter, solange sie `true` ergibt. Wenn die Bedingung zu Beginn der Iteration `false` ist, wird die Schleife nicht mehr ausgeführt. Das bedeutet, wenn die Bedingung von Anfang an false ist, wird Ihre Schleife niemals ausgeführt.

Der abschließende Ausdruck wird am Ende jeder Schleifeniteration ausgeführt, bevor die nächste Bedingungsprüfung erfolgt, und wird üblicherweise verwendet, um Ihren Schleifenzähler zu erhöhen oder zu verringern.

Im folgenden Beispiel initialisieren wir mit `i = 0` und iterieren, solange unsere Bedingung `i < 5` wahr ist. Wir erhöhen `i` in jeder Schleifeniteration um `1` mit `i++` als abschließendem Ausdruck.

```js
const ourArray = [];

for (let i = 0; i < 5; i++) {
  ourArray.push(i);
}
```

`ourArray` hat nun den Wert `[0, 1, 2, 3, 4]`.

# --instructions--

Verwenden Sie eine `for`-Schleife, um die Werte 1 bis 5 in `myArray` einzufügen.

# --hints--

Sie sollten hierfür eine `for`-Schleife verwenden.

```js
assert(/for\s*\([^)]+?\)/.test(__helpers.removeJSComments(code)));
```

`myArray` sollte gleich `[1, 2, 3, 4, 5]` sein.

```js
assert.deepEqual(myArray, [1, 2, 3, 4, 5]);
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
for (let i = 1; i < 6; i++) {
  myArray.push(i);
}
```
