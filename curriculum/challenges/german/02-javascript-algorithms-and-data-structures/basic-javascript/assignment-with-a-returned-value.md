---
id: 56533eb9ac21ba0edf2244c3
title: Zuweisung mit einem zurückgegebenen Wert
challengeType: 1
forumTopicId: 16658
dashedName: assignment-with-a-returned-value
---

# --description--

If you'll recall from our discussion about <a href="/learn/javascript-algorithms-and-data-structures/basic-javascript/storing-values-with-the-assignment-operator" target="_blank" rel="noopener noreferrer nofollow">Storing Values with the Assignment Operator</a>, everything to the right of the equal sign is resolved before the value is assigned. This means we can take the return value of a function and assign it to a variable.

Wir gehen davon aus, dass eine Funktion `sum` definiert ist, die zwei Zahlen addiert.

```js
ourSum = sum(5, 12);
```

Der Aufruf der `sum`-Funktion mit den Argumenten `5` und `12` erzeugt einen Rückgabewert von `17`. Dieser Rückgabewert ist der `ourSum`-Variable zugewiesen.

# --instructions--

Rufe die Funktion `processArg` mit einem Argument von `7` auf und weise ihren Rückgabewert der Variablen `processed` zu.

# --hints--

`processed` sollte einen Wert von `2` haben

```js
assert(processed === 2);
```

Du solltest `processArg` zu `processed` zuweisen

```js
assert(/processed\s*=\s*processArg\(\s*7\s*\)/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(){return "processed = " + processed})();
```

## --seed-contents--

```js
// Setup
let processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

// Only change code below this line

```

# --solutions--

```js
var processed = 0;

function processArg(num) {
  return (num + 3) / 5;
}

processed = processArg(7);
```
