---
id: a77dbc43c33f39daa4429b4f
title: Boo who (Booleano Quién)
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

Booleanos primitivos son `true` y `false`.

# --hints--

`booWho(true)` debe devolver `true`.

```js
assert.strictEqual(booWho(true), true);
```

`booWho(false)` debe devolver `true`.

```js
assert.strictEqual(booWho(false), true);
```

`booWho([1, 2, 3])` debe devolver `false`.

```js
assert.strictEqual(booWho([1, 2, 3]), false);
```

`booWho([].slice)` debe devolver `false`.

```js
assert.strictEqual(booWho([].slice), false);
```

`booWho({ "a": 1 })` debe devolver `false`.

```js
assert.strictEqual(booWho({ a: 1 }), false);
```

`booWho(1)` debe devolver `false`.

```js
assert.strictEqual(booWho(1), false);
```

`booWho(NaN)` debe devolver `false`.

```js
assert.strictEqual(booWho(NaN), false);
```

`booWho("a")` debe devolver `false`.

```js
assert.strictEqual(booWho('a'), false);
```

`booWho("true")` debe devolver `false`.

```js
assert.strictEqual(booWho('true'), false);
```

`booWho("false")` debe devolver `false`.

```js
assert.strictEqual(booWho('false'), false);
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
  return typeof bool === "boolean";
}

booWho(null);
```
