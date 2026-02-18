---
id: af2170cad53daa0770fabdea
title: 比较字符串
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

如果数组里的第一个字符串包含了第二个字符串中的所有字母，则返回 `true`。

例如，`["hello", "Hello"]` 应该返回 `true`。因为在忽略大小写的情况下，第一个字符串包含了第二个字符串里出现的所有字母。

`["hello", "hey"]` 应该返回 `false`。因为 `hello` 并不包含字符 `y`。

最后，`["Alien", "line"]` 应该返回 `true`。因为 `line` 中的所有字母都出现在了 `Alien` 中。

# --hints--

`mutation(["hello", "hey"])` 应返回 `false`。

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` 应返回 `true`。

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` 应返回 `true`。

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` 应返回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` 应返回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` 应返回 `true`。

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` 应返回 `true`。

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` 应返回 `false`。

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` 应返回 `false`。

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` 应返回 `false`。

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` 应返回 `false`。

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` 应返回 `true`。

```js
assert.isTrue(mutation(['Noel', 'Ole']));
```

# --seed--

## --seed-contents--

```js
function mutation(arr) {
  return arr;
}

mutation(['hello', 'hey']);
```

# --solutions--

```js
function mutation(arr) {
  let hash = Object.create(null);

  arr[0]
    .toLowerCase()
    .split('')
    .forEach(c => (hash[c] = true));

  return !arr[1]
    .toLowerCase()
    .split('')
    .filter(c => !hash[c]).length;
}

mutation(['hello', 'hey']);
```
