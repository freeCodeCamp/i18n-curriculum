---
id: bd7123c9c444eddfaeb5bdef
title: String-Variablen deklarieren
challengeType: 1
forumTopicId: 17557
dashedName: declare-string-variables
---

# --description--

Zuvor haben Sie den folgenden Code verwendet, um eine Variable zu deklarieren:

```js
var myName;
```

Sie können aber auch eine String-Variable so deklarieren:

```js
var myName = "your name";
```

`"your name"` wird ein <dfn>String</dfn>-<dfn>Literal</dfn> genannt. Ein String-Literal, oder String, ist eine Folge von null oder mehr Zeichen, die in einfache oder doppelte Anführungszeichen eingeschlossen sind.

# --instructions--

Erstellen Sie zwei neue String-Variablen: `myFirstName` und `myLastName` und weisen Sie ihnen die Werte Ihres Vor- bzw. Nachnamens zu.

# --hints--

`myFirstName` sollte ein String mit mindestens einem Zeichen sein.

```js
assert(
  (function () {
    if (
      typeof myFirstName !== 'undefined' &&
      typeof myFirstName === 'string' &&
      myFirstName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

`myLastName` sollte ein String mit mindestens einem Zeichen sein.

```js
assert(
  (function () {
    if (
      typeof myLastName !== 'undefined' &&
      typeof myLastName === 'string' &&
      myLastName.length > 0
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myFirstName = "Alan";
var myLastName = "Turing";
```
