---
id: bd7123c9c450eddfaeb5bdef
title: 문자열에서 N번째 문자를 찾기 위해 대괄호 표기법 사용하기
challengeType: 1
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

문자열 내 다른 위치에 있는 문자를 가져오기 위해 <dfn>대괄호 표기법</dfn>을 사용할 수도 있습니다.

컴퓨터는 `0`부터 세기 시작하므로 첫 번째 문자는 실제로 0번째 문자임을 기억하세요.

예시:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName`은 문자열 `d`의 값을 가집니다.

# --instructions--

대괄호 표기법을 사용해 `thirdLetterOfLastName` 변수의 세 번째 문자가 `lastName`에 할당되도록 해보세요.

**힌트:** 막히면 위 예시를 참고하세요.

# --hints--

`thirdLetterOfLastName` 변수는 `v` 값을 가져야 합니다.

```js
assert(thirdLetterOfLastName === 'v');
```

대괄호 표기법을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const thirdLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const thirdLetterOfLastName = lastName[2];
```
