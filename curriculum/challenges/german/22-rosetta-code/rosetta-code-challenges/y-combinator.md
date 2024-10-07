---
id: 594810f028c0303b75339ad5
title: Y Kombinator
challengeType: 1
forumTopicId: 302345
dashedName: y-combinator
---

# --description--

In strenger <a href="https://www.freecodecamp.org/news/the-principles-of-functional-programming/" target="_blank" rel="noopener noreferrer nofollow">funktionaler Programmierung</a> und Lambda-Berechnung, haben Funktionen (Lambda-Ausdrücke) keinen Zustand und dürfen nur auf Argumente von umschließenden Funktionen verweisen. Dies schließt die übliche Definition einer rekursiven Funktion aus, bei welcher eine Funktion mit dem Zustand einer Variable assoziiert wird und der Zustand dieser Variable im Körper der Funktion verwendet wird.

Der Y-Kombinator ist selbst eine zustandslose Funktion, die bei Anwendung auf eine andere zustandslose Funktion eine rekursive Version der Funktion zurückgibt. Der Y-Kombinator ist die einfachste Klasse solcher Funktionen, die Fixpunkt-Kombinatoren genannt werden.

# --instructions--

Definiere die zustandslose Y-Kombinatorfunktion und verwende diese zur Berechnung der Fakultäten. Die `factorial(N)`-Funktion ist bereits gegeben.

# --hints--

Y sollte eine Funktion zurückgeben.

```js
assert.equal(typeof Y((f) => (n) => n), 'function');
```

factorial(1) sollte 1 zurückgeben.

```js
assert.equal(factorial(1), 1);
```

factorial(2) sollte 2 zurückgeben.

```js
assert.equal(factorial(2), 2);
```

factorial(3) sollte 6 zurückgeben.

```js
assert.equal(factorial(3), 6);
```

factorial(4) sollte 24 zurückgeben.

```js
assert.equal(factorial(4), 24);
```

factorial(10) sollte 3628800 zurückgeben.

```js
assert.equal(factorial(10), 3628800);
```

# --seed--

## --after-user-code--

```js
var factorial = Y(f => n => (n > 1 ? n * f(n - 1) : 1));
```

## --seed-contents--

```js
function Y(f) {
  return function() {

  };
}

var factorial = Y(function(f) {
  return function (n) {
    return n > 1 ? n * f(n - 1) : 1;
  };
});
```

# --solutions--

```js
var Y = f => (x => x(x))(y => f(x => y(y)(x)));
```
