---
id: bd7123c9c452eddfaeb5bdef
title: 브라켓 표기법을 사용해서 문자열의 마지막부터 N번째 문자를 찾기
challengeType: 1
forumTopicId: 18344
dashedName: use-bracket-notation-to-find-the-nth-to-last-character-in-a-string
---

# --description--

You can use the same principle we just used to retrieve the last character in a string to retrieve the Nth-to-last character.

예를 들어 `const firstName = "Augusta"`라고 하는 문자열의 마지막에서 3번째 문자의 값을 얻기 위해 `firstName[firstName.length - 3]`를 사용할 수 있습니다.

예:

```js
const firstName = "Augusta";
const thirdToLastLetter = firstName[firstName.length - 3];
```

`thirdToLastLetter`의 값은 문자열 `s`가 될 것입니다.

# --instructions--

<dfn>브라켓 표기법</dfn>을 사용해서 `lastName` 문자열의 마지막에서 2번째의 문자를 찾으세요.

**힌트:** 막혔을 때는 위의 예시를 다시 봐주세요.

# --hints--

`secondToLastLetterOfLastName`는 문자 `c`가 되어야 합니다.

```js
assert(secondToLastLetterOfLastName === 'c');
```

당신은 `.length`를 사용해서, 마지막에서 두번째 문자를 얻어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/\.length/g).length > 0);
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(secondToLastLetterOfLastName);
```

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
