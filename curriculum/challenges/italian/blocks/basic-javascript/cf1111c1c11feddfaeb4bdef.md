---
id: cf1111c1c11feddfaeb4bdef
title: Sottrarre un numero da un altro con JavaScript
challengeType: 1
forumTopicId: 18314
dashedName: subtract-one-number-from-another-with-javascript
---

# --description--

Possiamo anche sottrarre un numero da un altro.

JavaScript usa il simbolo `-` per la sottrazione.

**Esempio**

```js
const myVar = 12 - 6;
```

`myVar` avrebbe il valore `6`.
# --instructions--

Modifica `0` in modo che la differenza sia `12`.

# --hints--

La variabile `difference` dovrebbe essere uguale a `12`.

```js
assert(difference === 12);
```

Dovresti sottrarre solo un numero da `45`.

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
