---
id: 587d7db3367417b2b2512b8f
title: 문자열 리터럴 일치
challengeType: 1
forumTopicId: 301355
dashedName: match-literal-strings
---

# --description--

In the last challenge, you searched for the word `Hello` using the regular expression `/Hello/`. That regex searched for a literal match of the string `Hello`. Here's another example searching for a literal match of the string `Kevin`:

```js
let testStr = "Hello, my name is Kevin.";
let testRegex = /Kevin/;
testRegex.test(testStr);
```

이 `test` 호출은 `true`를 반환합니다.

`Kevin`의 다른 모든 형태는 일치하지 않습니다. 예를 들어, 정규 표현식 `/Kevin/`은 `kevin` 또는 `KEVIN`과 일치하지 않습니다.

```js
let wrongRegex = /kevin/;
wrongRegex.test(testStr);
```

이 `test` 호출은 `false`를 반환합니다.

미래의 도전 과제에서는 그러한 다른 형태도 일치시키는 방법을 보여줄 것입니다.

# --instructions--

문자열 `waldoIsHiding`에서 literal match로 `"Waldo"`를 찾기 위해 정규 표현식 `waldoRegex`를 완성하세요.

# --hints--

정규 표현식 `waldoRegex`는 문자열 `Waldo`를 찾아야 합니다.

```js
waldoRegex.lastIndex = 0;
assert(waldoRegex.test(waldoIsHiding));
```

정규 표현식 `waldoRegex`는 다른 것을 검색하지 않아야 합니다.

```js
waldoRegex.lastIndex = 0;
assert(!waldoRegex.test('Somewhere is hiding in this text.'));
```

정규 표현식으로 리터럴 문자열 일치를 수행해야 합니다.

```js
assert(!/\/.*\/i/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /search/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```

# --solutions--

```js
let waldoIsHiding = "Somewhere Waldo is hiding in this text.";
let waldoRegex = /Waldo/; // Change this line
let result = waldoRegex.test(waldoIsHiding);
```
