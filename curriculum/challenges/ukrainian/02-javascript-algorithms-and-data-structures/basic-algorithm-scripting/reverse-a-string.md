---
id: a202eed8fc186c8434cb6d61
title: Зворотний рядок
challengeType: 1
forumTopicId: 16043
dashedName: reverse-a-string
---

# --description--

Reverse the provided string and return the reversed string.

Наприклад, `"hello"` повинен стати `"olleh"`.

# --hints--

`reverseString("hello")` має повертати рядок.

```js
assert.isString(reverseString('hello'));
```

`reverseString("hello")` має повертати рядок `olleh`.

```js
assert.strictEqual(reverseString('hello'), 'olleh');
```

`reverseString("Howdy")` має повертати рядок `ydwoH`.

```js
assert.strictEqual(reverseString('Howdy'), 'ydwoH');
```

`reverseString("Greetings from Earth")` має повертати рядок `htraE morf sgniteerG`.

```js
assert.strictEqual(
  reverseString('Greetings from Earth'),
  'htraE morf sgniteerG'
);
```

# --seed--

## --seed-contents--

```js
function reverseString(str) {
  return str;
}

reverseString('hello');
```

# --solutions--

```js
function reverseString(str) {
  return str.split('').reverse().join('');
}

reverseString('hello');
```
