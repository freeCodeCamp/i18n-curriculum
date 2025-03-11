---
id: bd7123c9c451eddfaeb5bdef
title: Verwendung der Klammer-Notation um das letzte Zeichen in einem String zu finden
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

In order to get the last letter of a string, you can subtract one from the string's length.

Wenn zum Beispiel `const firstName = "Ada"`, kannst du den Wert des letzten Buchstabens des Strings erhalten, indem du `firstName[firstName.length - 1]` verwendest.

Beispiel:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter` hätte den Wert des Strings `a`.

# --instructions--

Verwende die <dfn>Klammer-Notation</dfn>, um das letzte Zeichen in der Variable `lastName` zu finden.

**Hinweis:** Wenn du nicht weiterkommst, schau dir das Beispiel oben an.

# --hints--

`lastLetterOfLastName` sollte der Buchstabe `e` sein.

```js
assert(lastLetterOfLastName === 'e');
```

Du solltest `.length` verwenden, um den letzten Buchstaben zu erhalten.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(lastLetterOfLastName);
```

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
