---
id: af2170cad53daa0770fabdea
title: 變異
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

如果陣列第一個元素中的字串包含陣列第二個元素字串的所有字母，則傳回 `true`。

例如，`["hello", "Hello"]`，應該傳回 `true`，因為第二個字串中的所有字母都存在於第一個字串中，且忽略大小寫。

引數 `["hello", "hey"]` 應該傳回 `false`，因為字串 `hello` 不包含 `y`。

最後，`["Alien", "line"]` 應該傳回 `true`，因為 `line` 中的所有字母都出現在 `Alien` 中。

# --hints--

`mutation(["hello", "hey"])` 應該傳回 `false`。

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` 應該傳回 `true`。

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` 應該傳回 `false`。

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` 應該傳回 `false`。

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` 應該傳回 `false`。

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` 應該傳回 `false`。

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` 應該傳回 `true`。

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
