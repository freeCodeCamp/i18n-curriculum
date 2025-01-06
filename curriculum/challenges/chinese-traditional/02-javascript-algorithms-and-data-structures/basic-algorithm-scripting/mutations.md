---
id: af2170cad53daa0770fabdea
title: 比較字符串
challengeType: 1
forumTopicId: 16025
dashedName: mutations
---

# --description--

Return `true` if the string in the first element of the array contains all of the letters of the string in the second element of the array.

例如，`["hello", "Hello"]` 應該返回 `true`。因爲在忽略大小寫的情況下，第一個字符串包含了第二個字符串裏出現的所有字母。

`["hello", "hey"]` 應該返回 `false`。因爲 `hello` 並不包含字符 `y`。

最後，`["Alien", "line"]` 應該返回 `true`。因爲 `line` 中的所有字母都出現在了 `Alien` 中。

# --hints--

`mutation(["hello", "hey"])` 應返回 `false`。

```js
assert.isFalse(mutation(['hello', 'hey']));
```

`mutation(["hello", "Hello"])` 應返回 `true`。

```js
assert.isTrue(mutation(['hello', 'Hello']));
```

`mutation(["zyxwvutsrqponmlkjihgfedcba", "qrstu"])` 應返回 `true`。

```js
assert.isTrue(mutation(['zyxwvutsrqponmlkjihgfedcba', 'qrstu']));
```

`mutation(["Mary", "Army"])` 應返回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Army']));
```

`mutation(["Mary", "Aarmy"])` 應返回 `true`。

```js
assert.isTrue(mutation(['Mary', 'Aarmy']));
```

`mutation(["Alien", "line"])` 應返回 `true`。

```js
assert.isTrue(mutation(['Alien', 'line']));
```

`mutation(["floor", "for"])` 應返回 `true`。

```js
assert.isTrue(mutation(['floor', 'for']));
```

`mutation(["hello", "neo"])` 應返回 `false`。

```js
assert.isFalse(mutation(['hello', 'neo']));
```

`mutation(["voodoo", "no"])` 應返回 `false`。

```js
assert.isFalse(mutation(['voodoo', 'no']));
```

`mutation(["ate", "date"])` 應返回 `false`。

```js
assert.isFalse(mutation(['ate', 'date']));
```

`mutation(["Tiger", "Zebra"])` 應返回 `false`。

```js
assert.isFalse(mutation(['Tiger', 'Zebra']));
```

`mutation(["Noel", "Ole"])` 應返回 `true`。

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
