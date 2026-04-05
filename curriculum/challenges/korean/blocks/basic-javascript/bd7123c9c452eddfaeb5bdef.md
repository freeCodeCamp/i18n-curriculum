---
id: bd7123c9c452eddfaeb5bdef
title: 문자열에서 N번째 뒤에서부터 문자를 찾기 위해 대괄호 표기법 사용하기
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

문자열에서 마지막 문자를 가져오는 데 사용한 원리를 똑같이 사용해서 N번째 뒤에서부터 문자를 가져올 수 있습니다.

예를 들어, `const firstName = "Augusta"` 문자열의 뒤에서 세 번째 문자의 값을 `firstName[firstName.length - 3]`을 사용해 가져올 수 있습니다.

예시:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter`는 문자열 `s`의 값을 가집니다.

# --instructions--

<dfn>대괄호 표기법</dfn>을 사용해 `lastName` 문자열에서 뒤에서 두 번째 문자를 찾으세요.

**힌트:** 막히면 위 예시를 참고하세요.

# --hints--

`secondToLastLetterOfLastName`는 문자 `c`여야 합니다.

```js
assert(secondToLastLetterOfLastName === 'c');
```

뒤에서 두 번째 문자를 가져오려면 `.length`을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const secondToLastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const secondToLastLetterOfLastName = lastName[lastName.length - 2];
```
