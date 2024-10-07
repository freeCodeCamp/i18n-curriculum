---
id: 587d7b84367417b2b2512b34
title: Verwende typeof, um den Typ einer Variable zu prüfen
challengeType: 1
forumTopicId: 18374
dashedName: use-typeof-to-check-the-type-of-a-variable
---

# --description--

You can use `typeof` to check the data structure, or type, of a variable. This is useful in debugging when working with multiple data types. If you think you're adding two numbers, but one is actually a string, the results can be unexpected. Type errors can lurk in calculations or function calls. Be careful especially when you're accessing and working with external data in the form of a JavaScript Object Notation (JSON) object.

Hier sind einige Beispiele mit `typeof`:

```js
console.log(typeof "");
console.log(typeof 0);
console.log(typeof []);
console.log(typeof {});
```

In der Reihenfolge zeigt die Konsole die Strings `string`, `number`, `object`, und `object` an.

JavaScript kennt sieben primitive (unveränderliche) Datentypen: `Boolean`, `Null`, `Undefined`, `Number`, `String`, `Symbol` (neu mit ES6) und `BigInt` (neu mit ES2020), und einen Typ für veränderbare Elemente: `Object`. Beachte, dass Arrays in JavaScript technisch gesehen eine Art von Objekt sind.

# --instructions--

Füge zwei `console.log()` Anweisungen hinzu, um den Typ (`typeof`) jeder der beiden Variablen `seven` und `three` im Code zu überprüfen.

# --hints--

Dein Code sollte `typeof` in zwei `console.log()` Anweisungen verwenden, um den Typ der Variablen zu überprüfen.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\s*\(typeof[\( ].*\)?\)/g).length == 2);
```

Dein Code sollte `typeof` verwenden, um den Typ der Variablen `seven` zu überprüfen.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]seven\)?/g));
```

Dein Code sollte `typeof` verwenden, um den Typ der Variablen `three` zu überprüfen.

```js
assert(__helpers.removeJSComments(code).match(/typeof[\( ]three\)?/g));
```

# --seed--

## --seed-contents--

```js
let seven = 7;
let three = "3";
console.log(seven + three);
// Only change code below this line
```

# --solutions--

```js
let seven = 7;let three = "3";console.log(typeof seven);
console.log(typeof three);
```
