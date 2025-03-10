---
id: bd7123c9c549eddfaeb5bdef
title: 브라켓 표기법을 사용해서 문자열의 첫 글자를 찾기
challengeType: 1
forumTopicId: 18341
dashedName: use-bracket-notation-to-find-the-first-character-in-a-string
---

# --description--

<dfn>Bracket notation</dfn> is a way to get a character at a specific index within a string.

JavaScript를 시작으로 하는 현대의 대부분의 프로그래밍 언어에서는 인간처럼 1부터 세지 않습니다. 대부분의 언어는 0부터 시작합니다. 이것을 <dfn>제로 베이스드(Zero-based)</dfn> 인덱싱이라고 합니다.

예를 들어, `Charles`라고 하는 단어의 인덱스 0번째 문자는 `C`입니다. 그리고 만약 `const firstName = "Charles"` 라고 한다면 `firstName[0]` 라는 형식으로 이 문자열의 첫번째 문자의 값을 얻을 수 있습니다.

예:

```js
const firstName = "Charles";
const firstLetter = firstName[0];
```

`firstLetter`의 값은 문자열 `C`가 될 것입니다.

# --instructions--

브라켓 표기법을 사용해서 `lastName` 변수의 1번째 문자를 찾아 그것을 `firstLetterOfLastName`에 할당해 주세요.

**힌트:** 막혔을 때는 위의 예를 다시 봐 주세요.

# --hints--

`firstLetterOfLastName` 변수의 값은 `L`이 되어야 합니다.

```js
assert(firstLetterOfLastName === 'L');
```

당신은 브라켓 표기법을 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/firstLetterOfLastName\s*=\s*lastName\s*\[\s*\d\s*\]/));
```

# --seed--

## --after-user-code--

```js
(function(v){return v;})(firstLetterOfLastName);
```

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
