---
id: ab6137d4e35944e21037b769
title: '제목 케이스(Title Case: 주요 단어의 첫글자를 대문자로 쓰는 것)로 변환하기'
challengeType: 1
forumTopicId: 16088
dashedName: title-case-a-sentence
---

# --description--

Return the provided string with the first letter of each word capitalized. Make sure the rest of the word is in lower case.

이 연습의 목적을 위해 `the`와 `of`와 같은 연결 단어도 대문자여야 합니다.

# --hints--

`titleCase("I'm a little tea pot")`은(는) 문자열을 반환해야 합니다.

```js
assert.isString(titleCase("I'm a little tea pot"));
```

`titleCase("I'm a little tea pot")`은(는) 문자열 `I'm A Little Tea Pot`을 반환해야 합니다.

```js
assert.strictEqual(titleCase("I'm a little tea pot"), "I'm A Little Tea Pot");
```

`titleCase("sHoRt AnD sToUt")`는 문자열 `Short And Stout`를 반환해야 합니다.

```js
assert.strictEqual(titleCase('sHoRt AnD sToUt'), 'Short And Stout');
```

`titleCase("HERE IS MY HANDLE HERE IS MY SPOUT")`는 문자열 `Here Is My Handle Here Is My Spout`를 반환해야 합니다.

```js
assert.strictEqual(
  titleCase('HERE IS MY HANDLE HERE IS MY SPOUT'),
  'Here Is My Handle Here Is My Spout'
);
```

# --seed--

## --seed-contents--

```js
function titleCase(str) {
  return str;
}

titleCase("I'm a little tea pot");
```

# --solutions--

```js
function titleCase(str) {
  return str
    .split(' ')
    .map(word => word.charAt(0).toUpperCase() + word.substring(1).toLowerCase())
    .join(' ');
}

titleCase("I'm a little tea pot");
```
