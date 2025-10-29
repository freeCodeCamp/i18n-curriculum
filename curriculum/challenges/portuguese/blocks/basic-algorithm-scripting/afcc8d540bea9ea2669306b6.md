---
id: afcc8d540bea9ea2669306b6
title: Repetir uma string Repetir uma string
challengeType: 1
forumTopicId: 16041
dashedName: repeat-a-string-repeat-a-string
---

# --description--

Repeat a given string `str` (first argument) for `num` times (second argument). Return an empty string if `num` is not a positive number. For the purpose of this challenge, do _not_ use the built-in `.repeat()` method.

# --hints--

`repeatStringNumTimes("*", 3)` deve retornar a string `***`.

```js
assert.strictEqual(repeatStringNumTimes('*', 3), '***');
```

`repeatStringNumTimes("abc", 3)` deve retornar a string `abcabcabc`.

```js
assert.strictEqual(repeatStringNumTimes('abc', 3), 'abcabcabc');
```

`repeatStringNumTimes("abc", 4)` deve retornar a `abcabcabcabc`.

```js
assert.strictEqual(repeatStringNumTimes('abc', 4), 'abcabcabcabc');
```

`repeatStringNumTimes("abc", 1)` deve retornar a string `abc`.

```js
assert.strictEqual(repeatStringNumTimes('abc', 1), 'abc');
```

`repeatStringNumTimes("*", 8)` deve retornar a `********`.

```js
assert.strictEqual(repeatStringNumTimes('*', 8), '********');
```

`repeatStringNumTimes("abc", -2)` deve retornar uma string vazia (`""`).

```js
assert.isEmpty(repeatStringNumTimes('abc', -2));
```

O método integrado `repeat()` não deve ser usado.

```js
assert.notMatch(__helpers.removeJSComments(code), /\.repeat/g);
```

`repeatStringNumTimes("abc", 0)` deve retornar `""`.

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
