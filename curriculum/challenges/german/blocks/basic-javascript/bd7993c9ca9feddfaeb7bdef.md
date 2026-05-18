---
id: bd7993c9ca9feddfaeb7bdef
title: Eine Dezimalzahl durch eine andere mit JavaScript dividieren
challengeType: 1
forumTopicId: 18255
dashedName: divide-one-decimal-by-another-with-javascript
---

# --description--

Jetzt dividieren wir eine Dezimalzahl durch eine andere.

# --instructions--

Ändern Sie den `0.0`, sodass `quotient` gleich `2.2` ist.

# --hints--

Die Variable `quotient` sollte gleich `2.2` sein

```js
assert(quotient === 2.2);
```

Sie sollten den `/`-Operator verwenden, um 4.4 durch 2 zu dividieren

```js
assert(/4\.40*\s*\/\s*2\.*0*/.test(__helpers.removeJSComments(code)));
```

Die Variable quotient sollte nur einmal zugewiesen werden

```js
assert(__helpers.removeJSComments(code).match(/quotient\s*=/g).length === 1);
```

# --seed--

## --seed-contents--

```js
const quotient = 0.0 / 2.0; // Change this line
```

# --solutions--

```js
const quotient = 4.4 / 2.0;
```
