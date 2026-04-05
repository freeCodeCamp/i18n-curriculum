---
id: bd7123c9c443eddfaeb5bdef
title: JavaScript 변수 선언하기
challengeType: 1
forumTopicId: 17556
dashedName: declare-javascript-variables
---

# --description--

컴퓨터 과학에서 <dfn>데이터</dfn>는 컴퓨터에 의미 있는 모든 것을 뜻합니다. JavaScript는 `undefined`, `null`, `boolean`, `string`, `symbol`, `bigint`, `number`, 그리고 `object`의 여덟 가지 서로 다른 <dfn>데이터 타입</dfn>을 제공합니다.

예를 들어, 컴퓨터는 `12` 같은 숫자와 `strings` 같은 `"12"`, `"dog"`, 또는 `"123 cats"` 같은 문자들의 모음인 문자열을 구분합니다. 컴퓨터는 숫자에 대해 수학 연산을 수행할 수 있지만 문자열에는 할 수 없습니다.

<dfn>변수</dfn>는 컴퓨터가 데이터를 동적으로 저장하고 조작할 수 있게 해줍니다. 변수는 데이터를 직접 사용하는 대신 데이터를 가리키는 "레이블"을 사용합니다. 여덟 가지 데이터 타입 중 어느 것이든 변수에 저장할 수 있습니다.

변수는 수학에서 사용하는 x와 y 변수와 비슷한데, 우리가 참조하려는 데이터를 나타내는 간단한 이름입니다. 컴퓨터 변수는 수학 변수와 달리 서로 다른 시점에 서로 다른 값을 저장할 수 있습니다.

JavaScript에 변수를 생성하거나 <dfn>선언</dfn>하라고 지시하려면, 변수 이름 앞에 `var` 키워드를 붙이면 됩니다. 예를 들어:

```js
var ourName;
```

는 `ourName`라는 변수를 생성합니다. JavaScript에서는 문장 끝에 세미콜론을 붙입니다. 변수 이름은 숫자, 문자, `$` 또는 `_`로 구성할 수 있지만, 공백을 포함하거나 숫자로 시작할 수 없습니다.

# --instructions--

`var` 키워드를 사용해 `myName`라는 변수를 생성하세요.

**힌트**  
막히면 위의 `ourName` 예제를 참고하세요.

# --hints--

`myName`를 `var` 키워드로 선언하고 세미콜론으로 끝내야 합니다.

```js
assert(/var\s+myName\s*;/.test(__helpers.removeJSComments(code)));
```

# --seed--

## --seed-contents--

```js

```

# --solutions--

```js
var myName;
```
