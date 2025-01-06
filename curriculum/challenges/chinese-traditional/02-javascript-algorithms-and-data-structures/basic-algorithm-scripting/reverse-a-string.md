---
id: a202eed8fc186c8434cb6d61
title: 反轉字符串
challengeType: 1
forumTopicId: 16043
dashedName: reverse-a-string
---

# --description--

Reverse the provided string and return the reversed string.

例如， `"hello"` 應該變成 `"olleh"`。

# --hints--

`reverseString("hello")` 應返回一個字符串。

```js
assert.isString(reverseString('hello'));
```

`reverseString("hello")` 應返回 `olleh`。

```js
assert.strictEqual(reverseString('hello'), 'olleh');
```

`reverseString("Howdy")` 應返回 `ydwoH`。

```js
assert.strictEqual(reverseString('Howdy'), 'ydwoH');
```

`reverseString("Greetings from Earth")` 應返回 `htraE morf sgniteerG`。

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
