---
id: a77dbc43c33f39daa4429b4f
title: Boo who
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

Primitives za Boolean ni za kweli na za uwongo.

# --hints--

`booWho(true)` inapaswa kurudisha `true`.

```js
assert.isTrue(booWho(true));
```

`booWho(true)` inapaswa kurudisha `true`.

```js
assert.isTrue(booWho(false));
```

`booWho(true)` inapaswa kurudisha `true`.

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho(true)` inapaswa kurudisha `true`.

```js
assert.isFalse(booWho([].slice));
```

`booWho(true)` inapaswa kurudisha `true`.

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` should return `false`.

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` should return `false`.

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` should return `false`.

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` should return `false`.

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` should return `false`.

```js
assert.isFalse(booWho('false'));
```

# --seed--

## --seed-contents--

```js
function booWho(bool) {
  return bool;
}

booWho(null);
```

# --solutions--

```js
function booWho(bool) {
  return typeof bool === 'boolean';
}

booWho(null);
```
