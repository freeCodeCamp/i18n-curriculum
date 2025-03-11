---
id: bd7993c9c69feddfaeb7bdef
title: Multiplikation zweier Dezimalzahlen mit JavaScript
challengeType: 1
forumTopicId: 301173
dashedName: multiply-two-decimals-with-javascript
---

# --description--

In JavaScript, you can also perform calculations with decimal numbers, just like whole numbers.

Jetzt multiplizieren wir zwei Dezimalzahlen miteinander, um ihr Produkt zu erhalten.

# --instructions--

Ändere `0.0` so, dass das Produkt gleich `5.0` wird.

# --hints--

Die Variable `product` sollte gleich `5.0` sein.

```js
assert(product === 5.0);
```

Du solltest den Operator `*` verwenden

```js
assert(/\*/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --after-user-code--

```js
(function(y){return 'product = '+y;})(product);
```

## --seed-contents--

```js
const product = 2.0 * 0.0;
```

# --solutions--

```js
const product = 2.0 * 2.5;
```
