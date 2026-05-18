---
id: cf1111c1c11feddfaeb6bdef
title: Eine Zahl durch eine andere mit JavaScript teilen
challengeType: 1
forumTopicId: 17566
dashedName: divide-one-number-by-another-with-javascript
---

# --description--

Wir können auch eine Zahl durch eine andere teilen.

JavaScript verwendet das Symbol `/` für die Division.

**Beispiel**

```js
const myVar = 16 / 2;
```

`myVar` hat jetzt den Wert `8`.
# --instructions--

Ändern Sie die `0`, sodass die `quotient` gleich `2` ist.

# --hints--

Die Variable `quotient` sollte den Wert 2 haben.

```js
assert(quotient === 2);
```

Sie sollten den `/`-Operator verwenden.

```js
assert(/\d+\s*\/\s*\d+/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
const quotient = 66 / 0;
```

# --solutions--

```js
const quotient = 66 / 33;
```
