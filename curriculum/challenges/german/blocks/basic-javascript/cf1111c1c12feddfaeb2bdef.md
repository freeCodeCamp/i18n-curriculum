---
id: cf1111c1c12feddfaeb2bdef
title: Zufällige ganze Zahlen innerhalb eines Bereichs generieren
challengeType: 1
forumTopicId: 18187
dashedName: generate-random-whole-numbers-within-a-range
---

# --description--

Sie können eine zufällige ganze Zahl im Bereich von null bis zu einer vorgegebenen Zahl generieren. Sie können auch eine andere untere Zahl für diesen Bereich wählen.

Sie nennen Ihre Mindestzahl `min` und Ihre Höchstzahl `max`.

Diese Formel liefert eine zufällige ganze Zahl im Bereich von `min` bis `max`. Nehmen Sie sich einen Moment Zeit, um sie zu lesen und zu verstehen, was dieser Code macht:

```js
Math.floor(Math.random() * (max - min + 1)) + min
```

# --instructions--

Erstellen Sie eine Funktion namens `randomRange`, die einen Bereich `myMin` und `myMax` entgegennimmt und eine zufällige ganze Zahl zurückgibt, die größer oder gleich `myMin` und kleiner oder gleich `myMax` ist.

# --hints--

Die niedrigste zufällige Zahl, die von `randomRange` generiert werden kann, sollte gleich Ihrer Mindestzahl `myMin` sein.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMin = 100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMin = Math.min(calcMin, result);
    }

    return calcMin === 5;
  })()
);
```

Die höchste zufällige Zahl, die von `randomRange` generiert werden kann, sollte gleich Ihrer Höchstzahl `myMax` sein.

```js
assert(
  (function () {
    if (typeof randomRange !== 'function') {
      return false;
    }

    var calcMax = -100;
    for (var i = 0; i < 100; i++) {
      var result = randomRange(5, 15);
      calcMax = Math.max(calcMax, result);
    }

    return calcMax === 15;
  })()
);
```

Die von `randomRange` generierte Zufallszahl sollte eine ganze Zahl sein, keine Dezimalzahl.

```js
assert(randomRange(0, 1) % 1 === 0);
```

`randomRange` sollte sowohl `myMax` als auch `myMin` verwenden und eine zufällige Zahl in Ihrem Bereich zurückgeben.

```js
assert(
  (function () {
    if (
      __helpers.removeJSComments(code).match(/myMax/g).length > 1 &&
      __helpers.removeJSComments(code).match(/myMin/g).length > 2 &&
      __helpers.removeJSComments(code).match(/Math.floor/g) &&
      __helpers.removeJSComments(code).match(/Math.random/g)
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js
function randomRange(myMin, myMax) {
  return 0;
}
```

# --solutions--

```js
function randomRange(myMin, myMax) {
  return Math.floor(Math.random() * (myMax - myMin + 1)) + myMin;
}
```
