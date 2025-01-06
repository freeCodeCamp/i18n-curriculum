---
id: a77dbc43c33f39daa4429b4f
title: Boo who
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

I primitivi booleani sono `true` e `false`.

# --hints--

`booWho(true)` dovrebbe restituire `true`.

```js
assert.isTrue(booWho(true));
```

`booWho(false)` dovrebbe restituire `true`.

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` dovrebbe restituire `false`.

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` dovrebbe restituire `false`.

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` dovrebbe restituire `false`.

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` dovrebbe restituire `false`.

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` dovrebbe restituire `false`.

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` dovrebbe restituire `false`.

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` dovrebbe restituire `false`.

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` dovrebbe restituire `false`.

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
