---
id: a77dbc43c33f39daa4429b4f
title: Бу, ти хто?
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

Булеві примітивні значення: `true` (правда) та `false` (брехня).

# --hints--

`booWho(true)` має повертати `true`.

```js
assert.isTrue(booWho(true));
```

`booWho(false)` має повертати `true`.

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` має повертати `false`.

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` має повертати `false`.

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` має повертати `false`.

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` має повертати `false`.

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` має повертати `false`.

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` має повертати `false`.

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` має повертати `false`.

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` має повертати `false`.

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
