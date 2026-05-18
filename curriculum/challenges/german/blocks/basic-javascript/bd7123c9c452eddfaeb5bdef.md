---
id: bd7123c9c452eddfaeb5bdef
title: "Klammernotation verwenden, um das n‑letzte Zeichen in einem String zu finden"
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

Sie können dasselbe Prinzip verwenden, das wir gerade benutzt haben, um das letzte Zeichen in einem String abzurufen, um das n‑letzte Zeichen zu finden.

Zum Beispiel können Sie den Wert des drittletzten Buchstabens des `const firstName = "Augusta"` Strings mit `firstName[firstName.length - 3]` erhalten.

Beispiel:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter` hätte den Wert des Strings `s`.

# --instructions--

Verwenden Sie <dfn>die Klammernotation</dfn>, um das vorletzte Zeichen im `lastName` String zu finden.

**Hinweis:** Schauen Sie sich das obige Beispiel an, wenn Sie nicht weiterkommen.

# --hints--

`secondToLastLetterOfLastName` sollte der Buchstabe `c` sein.

```js
assert(secondToLastLetterOfLastName === 'c');
```

Sie sollten `.length` verwenden, um den vorletzten Buchstaben zu erhalten.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
