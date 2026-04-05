---
id: bd7123c9c549eddfaeb5bdef
title: 문자열에서 첫 번째 문자를 찾기 위해 대괄호 표기법 사용하기
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>대괄호 표기법</dfn>은 문자열 내 특정 인덱스에 있는 문자를 가져오는 방법입니다.

JavaScript와 같은 대부분의 최신 프로그래밍 언어는 사람이 1부터 세는 것과 달리 0부터 세기 시작합니다. 이를 <dfn>0부터 시작하는</dfn> 인덱싱이라고 합니다.

예를 들어, `Charles`라는 단어에서 인덱스 0에 있는 문자는 `C`입니다. 따라서 `const firstName = "Charles"`라면, `firstName[0]`을 사용해 문자열의 첫 번째 문자를 얻을 수 있습니다.

예시:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter`는 문자열 `C`의 값을 갖습니다.

# --instructions--

대괄호 표기법을 사용해 `lastName` 변수에서 첫 번째 문자를 찾아 `firstLetterOfLastName`에 할당하세요.

**힌트:** 막히면 위 예시를 참고하세요.

# --hints--

`firstLetterOfLastName` 변수는 `L` 값을 가져야 합니다.

```js
assert(firstLetterOfLastName === 'L');
```

대괄호 표기법을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --seed-contents--

```js
// Setup
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName; // Change this line
```

# --solutions--

```js
let firstLetterOfLastName = "";
const lastName = "Lovelace";

// Only change code below this line
firstLetterOfLastName = lastName[0];
```
