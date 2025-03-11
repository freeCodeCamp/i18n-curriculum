---
id: 56533eb9ac21ba0edf2244b8
title: Verkettung von Strings mit dem Plus-Gleich-Operator
challengeType: 1
forumTopicId: 16803
dashedName: concatenating-strings-with-the-plus-equals-operator
---

# --description--

We can also use the `+=` operator to <dfn>concatenate</dfn> a string onto the end of an existing string variable. This can be very helpful to break a long string over several lines.

**Hinweis:** Achte auf die Leerzeichen. Bei der Verkettung werden keine Leerzeichen zwischen den verketteten Strings eingefügt, so dass du sie selbst hinzufügen musst.

Beispiel:

```js
let ourStr = "I come first. ";
ourStr += "I come second.";
```

`ourStr` now has a value of the string `I come first. I come second.`.

# --instructions--

Erstelle `myStr` über mehrere Zeilen, indem du diese beiden Strings verkettest: `This is the first sentence.` und `This is the second sentence.` mit Hilfe des Operators `+=`. Verwende den Operator `+=` ähnlich wie im Beispiel und achte darauf, dass ein Leerzeichen zwischen den beiden Strings steht. Weise zunächst den ersten String `myStr` zu und füge dann den zweiten String hinzu.

# --hints--

`myStr` sollte ein einzelnes Leerzeichen zwischen beiden Strings enthalten.

```js
assert(/sentence\. This/.test(myStr));
```

`myStr` should have a value of the string `This is the first sentence. This is the second sentence.`

```js
assert(myStr === 'This is the first sentence. This is the second sentence.');
```

Du solltest den Operator `+=` zur Kreierung von `myStr` verwenden.

```js
assert(__helpers.removeJSComments(code).match(/myStr\s*\+=\s*(["']).*\1/g));
```

# --seed--

## --after-user-code--

```js
(function(){
  if(typeof myStr === 'string') {
    return 'myStr = "' + myStr + '"';
  } else {
    return 'myStr is not a string';
  }
})();
```

## --seed-contents--

```js
let myStr;
```

# --solutions--

```js
let myStr = "This is the first sentence. ";
myStr += "This is the second sentence.";
```
