---
id: a77dbc43c33f39daa4429b4f
title: 基本類型布爾值的檢查
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

基本類型中的布爾值爲 `true` 或者 `false`。

# --hints--

`booWho(true)` 應返回 `true`。

```js
assert.isTrue(booWho(true));
```

`booWho(false)` 應該返回 `true`。

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` 應該返回 `false`。

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` 應該返回 `false`。

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` 應該返回 `false`。

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` 應該返回 `false`。

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` 應該返回 `false`。

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` 應該返回 `false`。

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` 應該返回 `false`。

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` 應該返回 `false`。

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
