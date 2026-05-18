---
id: bd7123c9c450eddfaeb5bdef
title: "Klammernotation verwenden, um das n-te Zeichen in einem String zu finden"
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

Sie können auch <dfn>Klammernotation</dfn> verwenden, um das Zeichen an anderen Positionen innerhalb eines Strings zu erhalten.

Denken Sie daran, dass Computer bei `0` zu zählen beginnen, sodass das erste Zeichen tatsächlich das nullte Zeichen ist.

Beispiel:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` hätte den Wert des Strings `d`.

# --instructions--

Versuchen Sie, `thirdLetterOfLastName` so zu setzen, dass es dem dritten Buchstaben der Variablen `lastName` entspricht, und verwenden Sie dabei die Klammernotation.

**Hinweis:** Schauen Sie sich das obige Beispiel an, wenn Sie nicht weiterkommen.

# --hints--

Die Variable `thirdLetterOfLastName` sollte den Wert von `v` haben.

```js
assert(thirdLetterOfLastName === 'v');
```

Sie sollten die Klammernotation verwenden.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
