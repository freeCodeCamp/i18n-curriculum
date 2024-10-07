---
id: 587d8250367417b2b2512c5e
title: Die Funktionsweise eines Stacks
challengeType: 1
forumTopicId: 301705
dashedName: learn-how-a-stack-works
---

# --description--

You are probably familiar with stack of books on your table. You have likely used the undo feature of a text editor. You are also probably used to hitting the back button on your phone to go back to the previous view in your app.

Weißt du, was sie alle gemeinsam haben? Sie alle speichern die Daten so, dass du sie rückwärts durchgehen kannst.

Das oberste Buch im Stapel war das, das zuletzt dorthin gelegt worden war. Wenn du dieses Buch von der Spitze deines Stapels entfernst, würdest du das Buch freilegen, das vor dem letzten Buch dort abgelegt wurde, und so weiter.

Er ist in all den oben genannten Beispielen ein <dfn>Last-In-First-Out</dfn>-Service. Wir werden versuchen, dies mit unserem Code zu imitieren.

Dieses Datenspeicherschema wird als <dfn>Stack</dfn> bezeichnet. Insbesondere müssten wir die `push()`-Methode implementieren, die JavaScript-Objekte an die Spitze des Stapels schiebt, und die `pop()`-Methode, die das JavaScript-Objekt entfernt, das sich zum aktuellen Zeitpunkt an der Spitze des Stapels befindet.

# --instructions--

Hier haben wir einen Stapel von Hausaufgaben, der als Array dargestellt ist: `"BIO12"` befindet sich am unteren Ende und `"PSY44"` am oberen Ende des Stapels.

Ändere das angegebene Array und behandel es wie einen `stack` mit den oben genannten JavaScript-Methoden. Entferne das oberste Element `"PSY44"` vom Stapel. Füge dann `"CS50"` als neues oberstes Element des Stapels hinzu.

# --hints--

`homeworkStack` sollte nur 4 Elemente enthalten.

```js
assert(homeworkStack.length === 4);
```

Das letzte Element in `homeworkStack` sollte `"CS50"` sein.

```js
assert(homeworkStack[3] === 'CS50');
```

`homeworkStack` sollte nicht `"PSY44"` enthalten.

```js
assert(homeworkStack.indexOf('PSY44') === -1);
```

Die ursprüngliche Deklaration des `homeworkStack` sollte nicht verändert werden.

```js
assert(
  __helpers.removeJSComments(code).match(/=/g).length === 1 &&
    /homeworkStack\s*=\s*\["BIO12"\s*,\s*"HIS80"\s*,\s*"MAT122"\s*,\s*"PSY44"\]/.test(
      __helpers.removeJSComments(code)
    )
);
```

# --seed--

## --seed-contents--

```js
var homeworkStack = ["BIO12","HIS80","MAT122","PSY44"];
// Only change code below this line
```

# --solutions--

```js
// solution required
```
