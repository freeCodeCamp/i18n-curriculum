---
id: afcc8d540bea9ea2669306b6
title: Ripetere una stringa Ripeti una stringa
challengeType: 1
forumTopicId: 16041
dashedName: repeat-a-string-repeat-a-string
---

# --description--

Repeat a given string `str` (first argument) for `num` times (second argument). Return an empty string if `num` is not a positive number. For the purpose of this challenge, do *not* use the built-in `.repeat()` method.

# --hints--

`repeatStringNumTimes("*", 3)` dovrebbe restituire la stringa `***`.

```js
assert(repeatStringNumTimes('*', 3) === '***');
```

`repeatStringNumTimes("abc", 3)` dovrebbe restituire la stringa `abcabcabc`.

```js
assert(repeatStringNumTimes('abc', 3) === 'abcabcabc');
```

`repeatStringNumTimes("abc", 4)` dovrebbe restituire la stringa `abcabcabcabc`.

```js
assert(repeatStringNumTimes('abc', 4) === 'abcabcabcabc');
```

`repeatStringNumTimes("abc", 1)` dovrebbe restituire la stringa `abc`.

```js
assert(repeatStringNumTimes('abc', 1) === 'abc');
```

`repeatStringNumTimes("*", 8)` dovrebbe restituire la stringa `********`.

```js
assert(repeatStringNumTimes('*', 8) === '********');
```

`repeatStringNumTimes("abc", -2)` dovrebbe restituire una stringa vuota (`""`).

```js
assert(repeatStringNumTimes('abc', -2) === '');
```

Il metodo integrato `repeat()` non dovrebbe essere usato.

```js
assert(!/\.repeat/g.test(__helpers.removeJSComments(code)));
```

`repeatStringNumTimes("abc", 0)` dovrebbe restituire `""`.

```js
assert(repeatStringNumTimes('abc', 0) === '');
```

# --seed--

## --seed-contents--

```js
function repeatStringNumTimes(str, num) {
  return str;
}

repeatStringNumTimes("abc", 3);
```

# --solutions--

```js
function repeatStringNumTimes(str, num) {
  if (num < 1) return '';
  return num === 1 ? str : str + repeatStringNumTimes(str, num-1);
}

repeatStringNumTimes("abc", 3);
```
