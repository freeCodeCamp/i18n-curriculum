---
id: cf1111c1c11feddfaeb9bdef
title: Zufällige Brüche mit JavaScript erzeugen
challengeType: 1
forumTopicId: 18185
dashedName: generate-random-fractions-with-javascript
---

# --description--

Zufallszahlen sind nützlich, um zufälliges Verhalten zu erzeugen.

JavaScript hat eine `Math.random()`-Funktion, die eine zufällige Dezimalzahl zwischen `0` (einschließlich) und `1` (exklusiv) erzeugt. Daher kann `Math.random()` einen `0` zurückgeben, aber niemals einen `1`.

**Hinweis:** Wie bei <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Werte mit dem Zuweisungsoperator speichern</a> werden alle Funktionsaufrufe vor der Ausführung des `return` aufgelöst, sodass wir den Wert der `return`-Funktion `Math.random()` können.

# --instructions--

Ändern Sie `randomFraction`, damit es eine zufällige Zahl zurückgibt, anstatt `0` zurückzugeben.

# --hints--

`randomFraction` sollte eine zufällige Zahl zurückgeben.

```js
assert(typeof randomFraction() === 'number');
```

Die von `randomFraction` zurückgegebene Zahl sollte eine Dezimalzahl sein.

```js
assert((randomFraction() + '').match(/\./g));
```

Sie sollten `Math.random` verwenden, um die zufällige Dezimalzahl zu erzeugen.

```js
assert(__helpers.removeJSComments(code).match(/Math\.random/g).length >= 0);
```

# --seed--

## --seed-contents--

```js
function randomFraction() {

  // Only change code below this line

  return 0;

  // Only change code above this line
}
```

# --solutions--

```js
function randomFraction() {
  return Math.random();
}
```
