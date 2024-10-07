---
id: a77dbc43c33f39daa4429b4f
title: ما هي المقارنة (Boo who)
challengeType: 1
forumTopicId: 16000
dashedName: boo-who
---

# --description--

Check if a value is classified as a boolean primitive. Return `true` or `false`.

قيم المقارنة (Boolean primitives) تكون `true` و `false`.

# --hints--

يجب أن ينتج `booWho(true)` القيمة باسم `true`.

```js
assert.strictEqual(booWho(true), true);
```

`booWho(false)` يجب أن ينتج `true`.

```js
assert.strictEqual(booWho(false), true);
```

`booWho([1, 2, 3])` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho([1, 2, 3]), false);
```

`booWho([].slice)` يجب أن يتنج `false`.

```js
assert.strictEqual(booWho([].slice), false);
```

`booWho({ "a": 1 })` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho({ a: 1 }), false);
```

`booWho(1)` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho(1), false);
```

`booWho(NaN)` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho(NaN), false);
```

`booWho("a")` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho('a'), false);
```

`booWho("true")` يجب أن ينتج `false`.

```js
assert.strictEqual(booWho('true'), false);
```

`booWho("false")` يجب أن ينتج `false`.

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
