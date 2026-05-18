---
id: bd7123c9c441eddfaeb4bdef
title: Kommentieren Sie Ihren JavaScript-Code
challengeType: 1
forumTopicId: 16783
dashedName: comment-your-javascript-code
---

# --description--

Kommentare sind Codezeilen, die JavaScript absichtlich ignoriert. Kommentare sind eine großartige Möglichkeit, sich selbst und anderen Personen, die später verstehen müssen, was der Code macht, Notizen zu hinterlassen.

Es gibt zwei Möglichkeiten, Kommentare in JavaScript zu schreiben:

Die Verwendung von `//` weist JavaScript an, den Rest des Textes in der aktuellen Zeile zu ignorieren. Dies ist ein einzeiliger Kommentar:

```js
// This is an in-line comment.
```

Sie können einen mehrzeiligen Kommentar beginnen mit `/*` und beenden mit `*/`. Dies ist ein mehrzeiliger Kommentar:

```js
/* This is a
multi-line comment */
```

**HINWEIS:** Während Sie Code schreiben, sollten Sie regelmäßig Kommentare hinzufügen, um die Funktion der einzelnen Teile Ihres Codes zu erläutern. Gute Kommentare helfen dabei, die Absicht Ihres Codes zu vermitteln – sowohl für andere *als auch* für Ihr zukünftiges Ich.

# --instructions--

Versuchen Sie, jeweils eine Art von Kommentar zu erstellen.

# --hints--

Sie sollten einen Kommentar im `//`-Stil erstellen, der mindestens fünf Buchstaben enthält.

```js
assert(code.match(/(\/\/)...../g));
```

Sie sollten einen Kommentar im `/* */`-Stil erstellen, der mindestens fünf Buchstaben enthält.

```js
assert(code.match(/(\/\*)([^\/]{5,})(?=\*\/)/gm));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
// Fake Comment
/* Another Comment */
```
