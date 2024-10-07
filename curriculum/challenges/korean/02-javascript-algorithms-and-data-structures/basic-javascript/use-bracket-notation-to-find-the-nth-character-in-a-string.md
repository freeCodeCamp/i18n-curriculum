---
id: bd7123c9c450eddfaeb5bdef
title: 브라켓 표기법을 사용해서 문자열의 N번째 문자를 찾기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cWPVJua'
forumTopicId: 18343
dashedName: use-bracket-notation-to-find-the-nth-character-in-a-string
---

# --description--

You can also use <dfn>bracket notation</dfn> to get the character at other positions within a string.

컴퓨터들은 `0` 부터 세기 시작한다는 것을 기억하세요, 그러니 첫번째 문자는 실제로 0번째 문자입니다.

예:

```js
const firstName = "Ada";
const secondLetterOfFirstName = firstName[1];
```

`secondLetterOfFirstName` 의 값은 문자열 `d`를 가지게 됩니다.

# --instructions--

브라켓 표기법을 사용해서 `lastName` 변수의 3번째 문자와 같아지도록 `thirdLetterOfLastName`를 설정해 봅시다.

**힌트:** 막혔을 때는 위의 예시를 다시 봐주세요.

# --hints--

`thirdLetterOfLastName` 변수의 값은 `v`이 되어야 합니다.

```js
assert(thirdLetterOfLastName === 'v');
```

당신은 브라켓 표기법을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/thirdLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(thirdLetterOfLastName);
```

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
