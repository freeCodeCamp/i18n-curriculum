---
id: a202eed8fc186c8434cb6d61
title: 문자열 뒤집기
challengeType: 1
forumTopicId: 16043
dashedName: reverse-a-string
---

# --description--

Reverse the provided string and return the reversed string.

예를 들어, `"hello"`는 `"olleh"`를 반환해야 합니다.

# --hints--

`reverseString("hello")`은 문자열을 반환해야 합니다.

```js
assert(typeof reverseString('hello') === 'string');
```

`reverseString("hello")`은 문자열 `olleh`를 반환해야 합니다.

```js
assert(reverseString('hello') === 'olleh');
```

`reverseString("Howdy")`은 문자열 `ydwoH`을 반환해야 합니다.

```js
assert(reverseString('Howdy') === 'ydwoH');
```

`reverseString("Greetings from Earth")`은 문자열 `htraE morf sgniteerG`을 반환해야 합니다.

```js
assert(reverseString('Greetings from Earth') === 'htraE morf sgniteerG');
```

# --seed--

## --seed-contents--

```js
function reverseString(str) {
  return str;
}

reverseString("hello");
```

# --solutions--

```js
function reverseString(str) {
  return str.split('').reverse().join('');
}

reverseString("hello");
```
