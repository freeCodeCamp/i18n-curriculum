---
id: afcc8d540bea9ea2669306b6
title: 重复输出字符串
challengeType: 1
forumTopicId: 16041
dashedName: repeat-a-string-repeat-a-string
---

# --description--

Repeat a given string `str` (first argument) for `num` times (second argument). Return an empty string if `num` is not a positive number. For the purpose of this challenge, do _not_ use the built-in `.repeat()` method.

# --hints--

`repeatStringNumTimes("*", 3)` 应返回 `***`。

```js
assert.strictEqual(repeatStringNumTimes('*', 3), '***');
```

`repeatStringNumTimes("abc", 3)` 应返回 `abcabcabc`。

```js
assert.strictEqual(repeatStringNumTimes('abc', 3), 'abcabcabc');
```

`repeatStringNumTimes("abc", 4)` 应返回 `abcabcabcabc`。

```js
assert.strictEqual(repeatStringNumTimes('abc', 4), 'abcabcabcabc');
```

`repeatStringNumTimes("abc", 1)` 应返回 `abc`。

```js
assert.strictEqual(repeatStringNumTimes('abc', 1), 'abc');
```

`repeatStringNumTimes("*", 8)` 应返回 `********`。

```js
assert.strictEqual(repeatStringNumTimes('*', 8), '********');
```

`repeatStringNumTimes("abc", -2)` 应返回 `""`。

```js
assert.isEmpty(repeatStringNumTimes('abc', -2));
```

不应使用内置的 `repeat()` 方法。

```js
assert.notMatch(__helpers.removeJSComments(code), /\.repeat/g);
```

`repeatStringNumTimes("abc", 0)` 应返回 `""`。

```js
assert.isEmpty(repeatStringNumTimes('abc', 0));
```

# --seed--

## --seed-contents--

```js
function repeatStringNumTimes(str, num) {
  return str;
}

repeatStringNumTimes('abc', 3);
```

# --solutions--

```js
function repeatStringNumTimes(str, num) {
  if (num < 1) return '';
  return num === 1 ? str : str + repeatStringNumTimes(str, num - 1);
}

repeatStringNumTimes('abc', 3);
```
