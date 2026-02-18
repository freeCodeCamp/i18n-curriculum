---
id: af2170cad53daa0770fabdea
title: 实现 Mutations 算法
challengeType: 26
dashedName: implement-the-mutations-algorithm
---

# --description--

**目标：**实现以下用户需求并通过所有测试以完成实验。

**用户故事：**

1. 创建一个名为 `mutation` 的函数，该函数以一个数组作为其参数。
1. 如果数组第一个元素中的字串包含数组第二个元素中字串的所有字母，`mutation` 应返回 `true`，否则返回 `false`。例如：
    - `mutation(["hello", "Hello"])`，应该返回 `true`，因为第二个字串中的所有字母都出现在第一个字串中，且忽略大小写。
    - `mutation(["hello", "hey"])` 应返回 `false`，因为字串 `hello` 不包含 `y`。
    - `mutation(["Alien", "line"])`，应该返回 `true`，因为 `line` 中的所有字母都出现在 `Alien` 中。

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
