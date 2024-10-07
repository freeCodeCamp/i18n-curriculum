---
id: 587d7daa367417b2b2512b6b
title: Einen String mit der split-Methode in ein Array aufteilen
challengeType: 1
forumTopicId: 18305
dashedName: split-a-string-into-an-array-using-the-split-method
---

# --description--

The `split` method splits a string into an array of strings. It takes an argument for the delimiter, which can be a character to use to break up the string or a regular expression. For example, if the delimiter is a space, you get an array of words, and if the delimiter is an empty string, you get an array of each character in the string.

Hier sind zwei Beispiele, die einen String mit Hilfe eines regulären Ausdrucks nach Leerzeichen und einen anderen nach Ziffern aufteilen:

```js
const str = "Hello World";
const bySpace = str.split(" ");

const otherString = "How9are7you2today";
const byDigits = otherString.split(/\d/);
```

`bySpace` würde den Wert `["Hello", "World"]` haben und `byDigits` würde den Wert `["How", "are", "you", "today"]` haben.

Da Strings unveränderlich sind, macht es die Methode `split` einfacher, mit ihnen zu arbeiten.

# --instructions--

Verwende die Methode `split` innerhalb der Funktion `splitify`, um `str` in ein Array von Wörtern zu zerlegen. Die Funktion sollte das Array zurückgeben. Beachte, dass die Wörter nicht immer durch Leerzeichen getrennt sind und das Feld keine Satzzeichen enthalten sollte.

# --hints--

Dein Code sollte die Methode `split` verwenden.

```js
assert(__helpers.removeJSComments(code).match(/\.split/g));
```

`splitify("Hello World,I-am code")` sollte `["Hello", "World", "I", "am", "code"]` zurückgeben.

```js
assert(
  JSON.stringify(splitify('Hello World,I-am code')) ===
    JSON.stringify(['Hello', 'World', 'I', 'am', 'code'])
);
```

`splitify("Earth-is-our home")` sollte `["Earth", "is", "our", "home"]` zurückgeben.

```js
assert(
  JSON.stringify(splitify('Earth-is-our home')) ===
    JSON.stringify(['Earth', 'is', 'our', 'home'])
);
```

`splitify("This.is.a-sentence")` sollte `["This", "is", "a", "sentence"]` zurückgeben.

```js
assert(
  JSON.stringify(splitify('This.is.a-sentence')) ===
    JSON.stringify(['This', 'is', 'a', 'sentence'])
);
```

# --seed--

## --seed-contents--

```js
function splitify(str) {
  // Only change code below this line


  // Only change code above this line
}

splitify("Hello World,I-am code");
```

# --solutions--

```js
function splitify(str) {
  return str.split(/\W/);
}
```
