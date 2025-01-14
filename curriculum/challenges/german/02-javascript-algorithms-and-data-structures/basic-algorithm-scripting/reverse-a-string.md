---
id: a202eed8fc186c8434cb6d61
title: Reverse a String
challengeType: 1
forumTopicId: 16043
dashedName: reverse-a-string
---

# --description--

Reverse the provided string and return the reversed string.

Zum Beispiel sollte `"hello"` zu `"olleh"` werden.

# --hints--

`reverseString("hello")` sollte einen String zurückgeben.

```js
assert.isString(reverseString('hello'));
```

`reverseString("hello")` sollte den String `olleh` zurückgeben.

```js
assert.strictEqual(reverseString('hello'), 'olleh');
```

`reverseString("Howdy")` sollte den String `ydwoH` zurückgeben.

```js
assert.strictEqual(reverseString('Howdy'), 'ydwoH');
```

`reverseString("Greetings from Earth")` sollte den String `htraE morf sgniteerG` zurückgeben.

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
