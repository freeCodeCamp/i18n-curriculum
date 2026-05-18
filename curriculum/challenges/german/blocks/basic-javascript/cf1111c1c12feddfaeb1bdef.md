---
id: cf1111c1c12feddfaeb1bdef
title: Zufällige ganze Zahlen mit JavaScript generieren
challengeType: 1
forumTopicId: 18186
dashedName: generate-random-whole-numbers-with-javascript
---

# --description--

Sie können mit `Math.random()` zufällige Dezimalzahlen erzeugen, aber manchmal müssen Sie zufällige ganze Zahlen generieren. Der folgende Prozess liefert Ihnen eine zufällige ganze Zahl, die kleiner als `20` ist:

1. Verwenden Sie `Math.random()`, um eine zufällige Dezimalzahl zu erzeugen.
2. Multiplizieren Sie diese zufällige Dezimalzahl mit `20`.
3. Verwenden Sie `Math.floor()`, um diese Zahl auf die nächstliegende ganze Zahl abzurunden.

Denken Sie daran, dass `Math.random()` niemals genau `1` zurückgeben kann, daher ist es unmöglich, tatsächlich `20` zu erhalten, da Sie mit `Math.floor()` abrunden. Dieser Prozess liefert Ihnen eine zufällige ganze Zahl im Bereich von `0` bis `19`.

Wenn Sie alles zusammenfügen, sieht Ihr Code so aus:

```js
Math.floor(Math.random() * 20);
```

Sie rufen `Math.random()` auf, multiplizieren das Ergebnis mit 20 und übergeben den Wert dann an `Math.floor()`, um ihn auf die nächstliegende ganze Zahl abzurunden.

# --instructions--

Verwenden Sie diese Technik, um eine zufällige ganze Zahl im Bereich von `0` bis `9` zu generieren und zurückzugeben.

# --hints--

Das Ergebnis von `randomWholeNum` sollte eine ganze Zahl sein.

```js
assert(
  typeof randomWholeNum() === 'number' &&
    (function () {
      var r = randomWholeNum();
      return Math.floor(r) === r;
    })()
);
```

Sie sollten `Math.random` verwenden, um eine zufällige Zahl zu erzeugen.

```js
assert(__helpers.removeJSComments(code).match(/Math.random/g).length >= 1);
```

Sie sollten das Ergebnis von `Math.random` mit 10 multipliziert haben, um eine Zahl im Bereich von null bis neun zu erhalten.

```js
assert(
  __helpers.removeJSComments(code).match(/\s*?Math.random\s*?\(\s*?\)\s*?\*\s*?10[\D]\s*?/g) ||
    __helpers.removeJSComments(code).match(/\s*?10\s*?\*\s*?Math.random\s*?\(\s*?\)\s*?/g)
);
```

Sie sollten `Math.floor` verwenden, um den Dezimalteil der Zahl zu entfernen.

```js
assert(__helpers.removeJSComments(code).match(/Math.floor/g).length >= 1);
```

# --seed--

## --seed-contents--

```js
function randomWholeNum() {
  return Math.random();
}
```

# --solutions--

```js
function randomWholeNum() {
  return Math.floor(Math.random() * 10);
}
```
