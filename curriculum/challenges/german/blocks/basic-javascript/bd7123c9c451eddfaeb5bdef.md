---
id: bd7123c9c451eddfaeb5bdef
title: "Klammernotation verwenden, um das letzte Zeichen in einem String zu finden"
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

Um den letzten Buchstaben eines Strings zu erhalten, können Sie eins von der Länge des Strings subtrahieren.

Zum Beispiel, wenn `const firstName = "Ada"`, können Sie den Wert des letzten Buchstabens des Strings mit `firstName[firstName.length - 1]` erhalten.

Beispiel:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` hätte den Wert des Strings `a`.

# --instructions--

Verwenden Sie <dfn>die Klammernotation</dfn>, um das letzte Zeichen in der Variablen `lastName` zu finden.

**Hinweis:** Schauen Sie sich das obige Beispiel an, wenn Sie nicht weiterkommen.

# --hints--

`lastLetterOfLastName` sollte der Buchstabe `e` sein.

```js
assert(lastLetterOfLastName === 'e');
```

Sie sollten `.length` verwenden, um den letzten Buchstaben zu erhalten.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
