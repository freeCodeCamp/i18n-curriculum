---
id: bd7123c9c549eddfaeb5bdef
title: "Klammernotation verwenden, um das erste Zeichen in einem String zu finden"
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>Klammernotation</dfn> ist eine Methode, um ein Zeichen an einem bestimmten Index innerhalb eines Strings zu erhalten.

Die meisten modernen Programmiersprachen, wie JavaScript, beginnen nicht bei 1 zu zählen, wie es Menschen tun. Sie beginnen bei 0. Das nennt man <dfn>nullbasiertes</dfn> Indexieren.

Zum Beispiel ist das Zeichen am Index 0 im Wort `Charles` `C`. Wenn `const firstName = "Charles"`, können Sie den Wert des ersten Buchstabens des Strings erhalten, indem Sie `firstName[0]` verwenden.

Beispiel:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter` hätte den Wert des Strings `C`.

# --instructions--

Verwenden Sie die Klammernotation, um das erste Zeichen in der Variablen `lastName` zu finden und weisen Sie es `firstLetterOfLastName` zu.

**Hinweis:** Schauen Sie sich das obige Beispiel an, wenn Sie nicht weiterkommen.

# --hints--

Die Variable `firstLetterOfLastName` sollte den Wert `L` haben.

```js
assert(firstLetterOfLastName === 'L');
```

Sie sollten die Klammernotation verwenden.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
