---
id: 587d7b83367417b2b2512b33
title: Verwende die JavaScript-Konsole, um den Wert einer Variable zu überprüfen
challengeType: 1
forumTopicId: 18372
dashedName: use-the-javascript-console-to-check-the-value-of-a-variable
---

# --description--

Both Chrome and Firefox have excellent JavaScript consoles, also known as DevTools, for debugging your JavaScript.

Du findest die Entwicklertools im Menü von Chrome oder die Webkonsole im Menü von Firefox. Wenn du einen anderen Browser oder ein Mobiltelefon verwendest, empfehlen wir dir dringend, auf den Desktop-Browser Firefox oder Chrome umzusteigen.

Die Methode `console.log()`, die die Ausgabe dessen, was in den Klammern steht, auf der Konsole ausgibt, ist wahrscheinlich das hilfreichste Debugging-Tool. Wenn du sie an strategischen Punkten in deinem Code platzierst, kannst du dir die Zwischenwerte von Variablen anzeigen lassen. Es ist gut, eine Vorstellung davon zu haben, wie die Ausgabe aussehen soll, bevor du dir ansiehst, was sie ist. Kontrollpunkte, an denen du den Status deiner Berechnungen in deinem Code überprüfen kannst, helfen dabei, das Problem einzugrenzen.

Hier ist ein Beispiel, mit dem du den String `Hello world!` auf der Konsole ausgibst:

```js
console.log('Hello world!');
```

# --instructions--

Verwende die Methode `console.log()`, um den Wert der Variable `a` an den Stellen im Code auszugeben.

# --hints--

Dein Code sollte `console.log()` verwenden, um den Wert der Variable `a` zu überprüfen.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\(a\)/g));
```

# --seed--

## --seed-contents--

```js
let a = 5;
let b = 1;
a++;
// Only change code below this line


let sumAB = a + b;
console.log(sumAB);
```

# --solutions--

```js
var a = 5; console.log(a);
```
