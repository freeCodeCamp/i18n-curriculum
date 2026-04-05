---
id: bd7123c9c451eddfaeb5bdef
title: 문자열에서 마지막 문자를 찾기 위해 대괄호 표기법 사용하기
challengeType: 1
forumTopicId: 18342
dashedName: use-bracket-notation-to-find-the-last-character-in-a-string
---

# --description--

문자열의 마지막 문자를 얻으려면 문자열 길이에서 1을 빼면 됩니다.

예를 들어, `const firstName = "Ada"`라면 `firstName[firstName.length - 1]`을 사용해 문자열의 마지막 문자의 값을 얻을 수 있습니다.

예시:

```js
const firstName = "Ada";
const lastLetter = firstName[firstName.length - 1];
```

`lastLetter`는 문자열 `a`의 값을 갖게 됩니다.

# --instructions--

<dfn>대괄호 표기법</dfn>을 사용해 `lastName` 변수에서 마지막 문자를 찾으세요.

**힌트:** 막히면 위 예시를 참고하세요.

# --hints--

`lastLetterOfLastName`는 문자 `e`이어야 합니다.

```js
assert(lastLetterOfLastName === 'e');
```

마지막 문자를 얻으려면 `.length`을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --seed-contents--

```js
// Setup
const lastName = "Lovelace";

// Only change code below this line
const lastLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
const lastName = "Lovelace";
const lastLetterOfLastName = lastName[lastName.length - 1];
```
