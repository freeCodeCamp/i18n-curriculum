---
id: 587d7db8367417b2b2512ba3
title: 공백과 일치시키기
challengeType: 1
forumTopicId: 301359
dashedName: match-whitespace
---

# --description--

지금까지의 도전 과제는 알파벳의 문자나 숫자와 일치시키는 내용을 다뤘습니다. 문자 사이의 공백 또는 스페이스와 일치시킬 수도 있습니다.

공백을 `\s`를 사용하여 검색할 수 있습니다, 이것은 소문자 `s`입니다. 이 패턴은 공백뿐만 아니라 캐리지 리턴, 탭, 폼 피드, 그리고 줄 바꿈 문자와도 일치합니다. 이는 문자 클래스 `[ \r\t\f\n\v]`와 유사하다고 생각할 수 있습니다.

```js
let whiteSpace = "Whitespace. Whitespace everywhere!"
let spaceRegex = /\s/g;
whiteSpace.match(spaceRegex);
```

이 `match` 호출은 `[" ", " "]`를 반환할 것입니다.
# --instructions--

문자열에 있는 여러 개의 공백 문자를 찾도록 정규 표현식 `countWhiteSpace`를 변경하세요.

# --hints--

정규 표현식은 글로벌 플래그를 사용해야 합니다.

```js
assert(countWhiteSpace.global);
```

이 정규 표현식은 모든 공백 문자를 일치시키기 위해 단축 문자 `\s`를 사용해야 합니다.

```js
assert(/\\s/.test(countWhiteSpace.source));
```

이 정규 표현식은 문자열 `Men are from Mars and women are from Venus.`에서 여덟 개의 공백을 찾아야 합니다.

```js
assert(
  'Men are from Mars and women are from Venus.'.match(countWhiteSpace).length ==
    8
);
```

이 정규 표현식은 문자열 `Space: the final frontier.`에서 세 개의 공백을 찾아야 합니다.

```js
assert('Space: the final frontier.'.match(countWhiteSpace).length == 3);
```

이 정규 표현식은 문자열 `MindYourPersonalSpace`에서 공백을 찾지 않아야 합니다

```js
assert('MindYourPersonalSpace'.match(countWhiteSpace) == null);
```

# --seed--

## --seed-contents--

```js
let sample = "Whitespace is important in separating words";
let countWhiteSpace = /change/; // Change this line
let result = sample.match(countWhiteSpace);
```

# --solutions--

```js
let sample = "Whitespace is important in separating words";
let countWhiteSpace = /\s/g;
let result = sample.match(countWhiteSpace);
```
