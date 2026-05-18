---
id: cf1111c1c11feddfaeb8bdef
title: Array-Daten mit Indexen ändern
challengeType: 1
forumTopicId: 18241
dashedName: modify-array-data-with-indexes
---

# --description--

Im Gegensatz zu Strings sind die Einträge von Arrays <dfn>veränderbar</dfn> und können frei geändert werden, selbst wenn das Array mit `const` deklariert wurde.

**Beispiel**

```js
const ourArray = [50, 40, 30];
ourArray[0] = 15;
```

`ourArray` hat jetzt den Wert `[15, 40, 30]`.

**Hinweis:** Zwischen dem Array-Namen und den eckigen Klammern darf kein Leerzeichen stehen, also nicht `array [0]`. Obwohl JavaScript dies korrekt verarbeiten kann, könnte das andere Programmierende, die Ihren Code lesen, verwirren.

# --instructions--

Ändern Sie die Daten, die am Index `0` von `myArray` gespeichert sind, auf den Wert `45`.

# --hints--

`myArray` sollte jetzt `[45, 64, 99]` sein.

```js
assert(
  (function () {
    if (
      typeof myArray != 'undefined' &&
      myArray[0] == 45 &&
      myArray[1] == 64 &&
      myArray[2] == 99
    ) {
      return true;
    } else {
      return false;
    }
  })()
);
```

Sie sollten den korrekten Index verwenden, um den Wert in `myArray` zu ändern.

```js
assert(
  (function () {
    if (__helpers.removeJSComments(code).match(/myArray\[0\]\s*=\s*/g)) {
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
// Setup
const myArray = [18, 64, 99];

// Only change code below this line

```

# --solutions--

```js
const myArray = [18, 64, 99];
myArray[0] = 45;
```
