---
id: cf1111c1c11feddfaeb4bdef
title: Eine Zahl mit JavaScript von einer anderen subtrahieren
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

Wir können auch eine Zahl von einer anderen subtrahieren.

JavaScript verwendet das Symbol `-` für die Subtraktion.

**Beispiel**

```js
const myVar = 12 - 6;
```

`myVar` hätte den Wert `6`.
# --instructions--

Ändern Sie die `0`, sodass die Differenz `12` ist.

# --hints--

Die Variable `difference` sollte gleich `12` sein.

```js
assert(difference === 12);
```

Sie sollten nur eine Zahl von `45` subtrahieren.

```js
assert(/difference=45-33;?/.test(__helpers.removeWhiteSpace(__helpers.removeJSComments(code))));
```

# --seed--

## --seed-contents--

```js
const difference = 45 - 0;
```

# --solutions--

```js
const difference = 45 - 33;
```
