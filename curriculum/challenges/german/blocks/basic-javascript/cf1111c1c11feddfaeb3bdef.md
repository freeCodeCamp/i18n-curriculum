---
id: cf1111c1c11feddfaeb3bdef
title: Zwei Zahlen mit JavaScript addieren
challengeType: 1
forumTopicId: 16650
dashedName: add-two-numbers-with-javascript
---

# --description--

`Number` is a data type in JavaScript which represents numeric data.

Lass uns versuchen, zwei Zahlen mit JavaScript zu addieren.

JavaScript verwendet das Symbol `+` als Additionsoperator, wenn es zwischen zwei Zahlen steht.

**Beispiel:**

```js
const myVar = 5 + 10;
```

`myVar` hat jetzt den Wert `15`.

# --instructions--

Ändere die `0` so, dass die Summe gleich `20` wird.

# --hints--

`sum` sollte gleich `20` sein.

```js
assert(sum === 20);
```

Du solltest den Operator `+` verwenden.

```js
assert(/\+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(z){return 'sum = '+z;})(sum);
```

## --seed-contents--

```js
const sum = 10 + 0;
```

# --solutions--

```js
const sum = 10 + 10;
```
