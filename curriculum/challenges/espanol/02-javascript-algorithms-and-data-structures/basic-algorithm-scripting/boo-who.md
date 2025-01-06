---
id: a77dbc43c33f39daa4429b4f
title: Boo who (Booleano Quién)
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Comprueba si el valor está clasificado como booleano primitivo. Return `true` or `false`.

Booleanos primitivos son `true` y `false`.

# --hints--

`booWho(true)` debe devolver `true`.

```js
assert.isTrue(booWho(true));
```

`booWho(false)` debe devolver `true`.

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` debe devolver `false`.

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` debe devolver `false`.

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` debe devolver `false`.

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` debe devolver `false`.

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` debe devolver `false`.

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` debe devolver `false`.

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` debe devolver `false`.

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` debe devolver `false`.

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
