---
id: 587d7b84367417b2b2512b36
title: 'Nicht geschlossene Klammern, geschweifte Klammern und Anführungszeichen abfangen'
challengeType: 1
forumTopicId: 301190
dashedName: catch-unclosed-parentheses-brackets-braces-and-quotes
---

# --description--

Another syntax error to be aware of is that all opening parentheses, brackets, curly braces, and quotes have a closing pair. Forgetting a piece tends to happen when you're editing existing code and inserting items with one of the pair types. Also, take care when nesting code blocks into others, such as adding a callback function as an argument to a method.

Eine Möglichkeit, diesen Fehler zu vermeiden, besteht darin, dass du, sobald du das erste Zeichen getippt hast, sofort das letzte Zeichen einfügst, dann den Cursor wieder dazwischen setzt und mit der Programmierung fortfährst. Zum Glück erzeugen die meisten modernen Code-Editoren die zweite Hälfte des Paares automatisch.

# --instructions--

Behebe die beiden Paarfehler im Code.

# --hints--

Dein Code sollte das fehlende Stück des Arrays reparieren.

```js
assert(__helpers.removeJSComments(code).match(/myArray\s*?=\s*?\[\s*?1\s*?,\s*?2\s*?,\s*?3\s*?\];/g));
```

Dein Code sollte den fehlenden Teil der Methode `.reduce()` beheben. Die Konsolenausgabe sollte Folgendes anzeigen: `Sum of array values is: 6`.

```js
assert(arraySum === 6);
```

# --seed--

## --seed-contents--

```js
let myArray = [1, 2, 3;
let arraySum = myArray.reduce((previous, current =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```

# --solutions--

```js
let myArray = [1, 2, 3];
let arraySum = myArray.reduce((previous, current) =>  previous + current);
console.log(`Sum of array values is: ${arraySum}`);
```
