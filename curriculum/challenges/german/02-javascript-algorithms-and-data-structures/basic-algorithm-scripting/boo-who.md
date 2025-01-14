---
id: a77dbc43c33f39daa4429b4f
title: Boo wer?
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

Primitive boolesche Werte umfassen `true` und `false`.

# --hints--

`booWho(true)` soll `true` zurückgeben.

```js
assert.isTrue(booWho(true));
```

`booWho(false)` soll `true` zurückgeben.

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` soll `false` zurückgeben.

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` soll `false` zurückgeben.

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` soll `false` zurückgeben.

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` soll `false` zurückgeben.

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` soll `false` zurückgeben.

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` soll `false` zurückgeben.

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` soll `false` zurückgeben.

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` soll `false` zurückgeben.

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
