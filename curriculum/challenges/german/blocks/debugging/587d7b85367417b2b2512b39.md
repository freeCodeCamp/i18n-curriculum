---
id: 587d7b85367417b2b2512b39
title: Fehlende offene und schließende Klammern nach einem Funktionsaufruf abfangen
challengeType: 1
forumTopicId: 301185
dashedName: catch-missing-open-and-closing-parenthesis-after-a-function-call
---

# --description--

When a function or method doesn't take any arguments, you may forget to include the (empty) opening and closing parentheses when calling it. Often times the result of a function call is saved in a variable for other use in your code. This error can be detected by logging variable values (or their types) to the console and seeing that one is set to a function reference, instead of the expected value the function returns.

Die Variablen im folgenden Beispiel sind unterschiedlich:

```js
function myFunction() {
  return "You rock!";
}
let varOne = myFunction;
let varTwo = myFunction();
```

Hier ist `varOne` die Funktion `myFunction` und `varTwo` ist der String `You rock!`.

# --instructions--

Korrigiere den Code so, dass die Variable `result` auf den Wert gesetzt wird, der beim Aufruf der Funktion `getNine` zurückgegeben wird.

# --hints--

Dein Code sollte die Variable `result` so verändern, dass sie auf die Zahl gesetzt wird, die die Funktion `getNine` zurückgibt.

```js
assert(result == 9);
```

Dein Code sollte die Funktion `getNine` aufrufen.

```js
assert(__helpers.removeJSComments(code).match(/getNine\(\)/g).length == 2);
```

# --seed--

## --seed-contents--

```js
function getNine() {
  let x = 6;
  let y = 3;
  return x + y;
}

let result = getNine;
console.log(result);
```

# --solutions--

```js
function getNine() {
 let x = 6;
 let y = 3;
 return x + y;
}

let result = getNine();
console.log(result);
```
