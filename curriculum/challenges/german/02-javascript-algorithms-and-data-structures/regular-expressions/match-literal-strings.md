---
id: 587d7db3367417b2b2512b8f
title: Literal-Strings abgleichen
challengeType: 1
forumTopicId: 301355
dashedName: match-literal-strings
---

# --description--

In the last challenge, you searched for the word `Hello` using the regular expression `/Hello/`. That regex searched for a literal match of the string `Hello`. Here's another example searching for a literal match of the string `Kevin`:

```js
let testStr = "Hello, my name is Kevin.";
let testRegex = /Kevin/;
testRegex.test(testStr);
```

Dieser `test`-Aufruf gibt `true` zurück.

Jede andere Form von `Kevin` wird nicht zutreffen. Zum Beispiel passt der Regex `/Kevin/` nicht zu `kevin` oder `KEVIN`.

```js
let wrongRegex = /kevin/;
wrongRegex.test(testStr);
```

Dieser `test`-Aufruf gibt `false` zurück.

Eine zukünftige Aufgabe wird zeigen, wie man auch diese anderen Formen abgleichen kann.

# --instructions--

Vervollständige den Regex `waldoRegex`, um `"Waldo"` in dem String `waldoIsHiding` mit einer wörtlichen Übereinstimmung zu finden.

# --hints--

Dein Regex `waldoRegex` sollte den String `Waldo` finden

```js
waldoRegex.lastIndex = 0;
assert(waldoRegex.test(waldoIsHiding));
```

Deine Regex `waldoRegex` sollte nicht nach etwas Anderem suchen.

```js
waldoRegex.lastIndex = 0;
assert(!waldoRegex.test('Somewhere is hiding in this text.'));
```

Du solltest mit deinem Regex einen literalen String-Match durchführen.

```js
assert(!/\/.*\/i/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /search/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```

# --solutions--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /Waldo/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```
