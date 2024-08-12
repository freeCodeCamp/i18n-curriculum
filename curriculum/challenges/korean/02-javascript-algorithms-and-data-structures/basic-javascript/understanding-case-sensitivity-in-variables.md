---
id: 56533eb9ac21ba0edf2244ab
title: 변수의 대소문자 구분을 이해하기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cd6GDcD'
forumTopicId: 18334
dashedName: understanding-case-sensitivity-in-variables
---

# --description--

자바스크립트에서는 모든 변수와 함수의 이름이 대소문자를 구분합니다. 이는 대문자와 소문자를 구분해야 한다는 것을 의미합니다.

`MYVAR`은 `MyVar` 나 `myvar`과 동일하지 않습니다. 대소문자가 다른 동일한 이름을 가진 여러 개의 변수들을 각각 구분하여 사용할 수 있습니다. 코드를 명확히 하기 위해서, 이 언어 기능을 *사용하지 않을* 것을 강하게 추천합니다.

**최선의 방법**

자바스크립트에서는 변수의 이름을 <dfn>카멜 표기법(camelCase)</dfn> 로 쓰세요. <dfn>카멜 표기법</dfn>은, 복수의 단어로 이루어진 변수 이름으로, 첫 단어의 첫 문자는 소문자로, 다음으로 오는 단어부터는 첫 문자를 대문자가 됩니다.

**예시:**

```js
var someVariable;
var anotherVariableName;
var thisVariableNameIsSoLong;
```

# --instructions--

변수명으로 <dfn>카멜 표기법</dfn>을 사용하도록, 기존의 선언과 할당을 변경해 주세요.

새로운 변수는 만들지 마세요.

# --hints--

`studlyCapVar`가 정의되고 값이 `10`이 되어야 합니다.

```js
assert(typeof studlyCapVar !== 'undefined' && studlyCapVar === 10);
```

`properCamelCase`가 정의되고 값이 문자열 `A String`이 되어야 합니다.

```js
assert(
  typeof properCamelCase !== 'undefined' && properCamelCase === 'A String'
);
```

`titleCaseOver`가 정의되고 값이 `9000`이 되어야 합니다.

```js
assert(typeof titleCaseOver !== 'undefined' && titleCaseOver === 9000);
```

`studlyCapVar`의 정의와 할당 두 부분에 카멜 표기법이 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/studlyCapVar/g).length === 2);
```

`properCamelCase`가 정의와 할당 두 부분에 카멜 표기법이 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/properCamelCase/g).length === 2);
```

`titleCaseOver`가 정의와 할당 두 부분에 카멜 표기법이 사용되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/titleCaseOver/g).length === 2);
```

# --seed--

## --seed-contents--

```js
// Variable declarations
var StUdLyCapVaR;
var properCamelCase;
var TitleCaseOver;

// Variable assignments
STUDLYCAPVAR = 10;
PRoperCAmelCAse = "A String";
tITLEcASEoVER = 9000;
```

# --solutions--

```js
var studlyCapVar;
var properCamelCase;
var titleCaseOver;

studlyCapVar = 10;
properCamelCase = "A String";
titleCaseOver = 9000;
```
