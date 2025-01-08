---
id: a77dbc43c33f39daa4429b4f
title: ブール型の確認
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

値がブールプリミティブとして分類されるかどうかを確認してください。 `true` または `false` を返してください。

ブールプリミティブは `true` および `false` です。

# --hints--

`booWho(true)` は `true` を返す必要があります。

```js
assert.isTrue(booWho(true));
```

`booWho(false)` は `true` を返す必要があります。

```js
assert.isTrue(booWho(false));
```

`booWho([1, 2, 3])` は `false` を返す必要があります。

```js
assert.isFalse(booWho([1, 2, 3]));
```

`booWho([].slice)` は `false` を返す必要があります。

```js
assert.isFalse(booWho([].slice));
```

`booWho({ "a": 1 })` は `false` を返す必要があります 。

```js
assert.isFalse(booWho({ a: 1 }));
```

`booWho(1)` は `false` を返す必要があります。

```js
assert.isFalse(booWho(1));
```

`booWho(NaN)` は `false` を返す必要があります。

```js
assert.isFalse(booWho(NaN));
```

`booWho("a")` は `false` を返す必要があります。

```js
assert.isFalse(booWho('a'));
```

`booWho("true")` は `false` を返す必要があります。

```js
assert.isFalse(booWho('true'));
```

`booWho("false")` は `false` を返す必要があります。

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
