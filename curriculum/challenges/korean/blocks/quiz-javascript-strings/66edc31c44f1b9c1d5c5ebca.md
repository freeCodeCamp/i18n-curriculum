---
id: 66edc31c44f1b9c1d5c5ebca
title: JavaScript 문자열 퀴즈
challengeType: 8
dashedName: quiz-javascript-strings
---

# --description--

퀴즈를 통과하려면 아래 20문제 중 최소 18문제를 올바르게 맞히세요.

# --quizzes--

## --quiz--

### --question--

#### --text--

`includes()` 메서드의 반환값은 무엇인가요?

#### --distractors--

문자열 내에 부분 문자열이 있으면 메서드는 문자열을 반환합니다. 그렇지 않으면 `undefined`를 반환합니다.

---

문자열 내에 부분 문자열이 있으면 메서드는 `true`를 반환합니다. 그렇지 않으면 빈 문자열을 반환합니다.

---

문자열 내에 부분 문자열이 있으면 메서드는 문자열을 반환합니다. 그렇지 않으면 `null`를 반환합니다.

#### --answer--

문자열 내에 부분 문자열이 있으면 메서드는 `true`를 반환합니다. 그렇지 않으면 `false`를 반환합니다.

### --question--

#### --text--

어떤 옵션이 문자열 보간을 보여주나요?

#### --distractors--

`"Hello, " + user + "!"`

---

`"Hello, $user!"`

---

`` `Hello, {user}!` ``

#### --answer--

`` `Hello, ${user}!` ``

### --question--

#### --text--

다음 중 줄바꿈 문자는 무엇인가요?

#### --distractors--

`\newline`

---

`\new`

---

`\line`

#### --answer--

`\n`

### --question--

#### --text--

문자열에 대해 올바른 설명은 무엇인가요?

#### --distractors--

문자열은 변경 가능하며 생성 후 변경할 수 있습니다.

---

문자열은 원시 데이터 타입이 아닙니다.

---

문자열은 작은따옴표만 사용해 생성할 수 있습니다.

#### --answer--

문자열은 변경 불가능합니다.

### --question--

#### --text--

ASCII는 무엇의 약자인가요?

#### --distractors--

American Standard Code for Internet Information

---

Advanced Systematic Code for Internal Interchange

---

Automatic Standard Code for Internal Information

#### --answer--

American Standard Code for Information Interchange

### --question--

#### --text--

다음 중 문자열의 일부를 추출해 새 문자열을 반환하는 메서드는 무엇인가요?

#### --distractors--

`trim()`

---

`indexOf()`

---

`prompt()`

#### --answer--

`slice()`

### --question--

#### --text--

`prompt()` 메서드의 목적은 무엇인가요?

#### --distractors--

콘솔에 메시지를 표시합니다.

---

메시지와 함께 경고 상자를 표시합니다.

---

메시지와 함께 확인 상자를 표시합니다.

#### --answer--

사용자 입력을 기다리는 대화 상자를 표시합니다.

### --question--

#### --text--

문자열의 세 번째 문자를 접근하는 올바른 방법은 무엇인가요?

#### --distractors--

```js
const developer = "Jessica";
developer[3];
```

---

```js
const developer = "Jessica";
developer[-1];
```

---

```js
const developer = "Jessica";
developer[0];
```

#### --answer--

```js
const developer = "Jessica";
developer[2];
```

### --question--

#### --text--

문자열 `"hello"`의 첫 번째 문자의 ASCII 값을 얻으려면 어떻게 해야 하나요?

#### --distractors--

`"hello".charCode(0)`

---

`"hello".codeAt(0)`

---

`"hello".getCharIndex(0)`

#### --answer--

`"hello".charCodeAt(0)`

### --question--

#### --text--

ASCII 값에 해당하는 문자를 얻으려면 어떤 메서드를 사용하나요?

#### --distractors--

`toASCII()`

---

`toChar()`

---

`toCode()`

#### --answer--

`fromCharCode()`

### --question--

#### --text--

다음 `indexOf` 예제 중 콘솔에 `-1`를 출력하는 것은 무엇인가요?

#### --distractors--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("e"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("f"));
```

---

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("C"));
```

#### --answer--

```js
const organization = "freeCodeCamp";
console.log(organization.indexOf("c"));
```

### --question--

#### --text--

문자열 `"JavaScript"`가 `"Script"`를 포함하는지 어떻게 확인하나요?

#### --distractors--

`"JavaScript".has("Script")`

---

`"JavaScript".contains("Script")`

---

`"JavaScript".exists("Script")`

#### --answer--

`"JavaScript".includes("Script")`

### --question--

#### --text--

문자열 `"Script"`에서 부분 문자열 `"JavaScript"`를 추출하는 방법은 무엇인가요?

#### --distractors--

`"JavaScript".find(5)`

---

`"JavaScript".extract(4)`

---

`"JavaScript".cut(5)`

#### --answer--

`"JavaScript".slice(4)`

### --question--

#### --text--

문자열 `"JavaScript"`를 대문자로 변환하려면 어떻게 해야 하나요?

#### --distractors--

`"JavaScript".upper()`

---

`"JavaScript".toUpper()`

---

`"JavaScript".convertUpper()`

#### --answer--

`"JavaScript".toUpperCase()`

### --question--

#### --text--

문자열 `"JavaScript"`를 소문자로 변환하려면 어떻게 해야 하나요?

#### --distractors--

`"JavaScript".lower()`

---

`"JavaScript".toLower()`

---

`"JavaScript".convertLower()`

#### --answer--

`"JavaScript".toLowerCase()`

### --question--

#### --text--

문자열 `"dogs"`에서 `"cats"`를 `"I love dogs"`로 바꾸려면 어떤 방법을 사용하나요?

#### --distractors--

`"I love dogs".slice("dogs", "cats")`

---

`"I love dogs".replaceWith("dogs", "cats")`

---

`"I love dogs".find("dogs", "cats")`

#### --answer--

`"I love dogs".replace("dogs", "cats")`

### --question--

#### --text--

문자열을 지정한 횟수만큼 반복하려면 어떤 메서드를 사용하나요?

#### --distractors--

`times()`

---

`repeatTimes()`

---

`repeatNumber()`

#### --answer--

`repeat()`

### --question--

#### --text--

다음 코드는 무엇을 반환하나요: `"abc".repeat(3)`?

#### --distractors--

`"abcabc"`

---

`"abcabcabcabc"`

---

오류를 발생시킵니다.

#### --answer--

`"abcabcabc"`

### --question--

#### --text--

문자열의 앞뒤 공백을 제거하는 메서드는 무엇인가요?

#### --distractors--

`strip()`

---

`removeWhitespace()`

---

`trimWhitespace()`

#### --answer--

`trim()`

### --question--

#### --text--

따옴표를 이스케이프하는 올바른 구문은 무엇인가요?

#### --distractors--

```js
"She said, ?"Hello!?""
```

---

```js
"She said, ."Hello!.""
```

---

```js
"She said, //"Hello!//""
```

#### --answer--

```js
"She said, \"Hello!\""
```
