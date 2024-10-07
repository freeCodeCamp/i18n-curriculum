---
id: 56533eb9ac21ba0edf2244b4
title: 작은 따옴표로 문자열을 감싸기
challengeType: 1
videoUrl: 'https://scrimba.com/c/cbQmnhM'
forumTopicId: 18260
dashedName: quoting-strings-with-single-quotes
---

# --description--

<dfn>String</dfn> values in JavaScript may be written with single or double quotes, as long as you start and end with the same type of quote. Unlike some other programming languages, single and double quotes work the same in JavaScript.

```js
const doubleQuoteStr = "This is a string"; 
const singleQuoteStr = 'This is also a string';
```

하나의 문자열 안에 서로 다른 종류의 따옴표를 사용하고 싶을 때, 한쪽의 따옴표를 다른 따옴표 안에 사용할 필요가 있습니다. 예를 들면 따옴표로 감싸진 대화를 문자열로 보존하고 싶을 경우가 있습니다. 또는 따옴표로 감싸진 여러 속성을 가지는 `<a>` 태그 전체를 문자열 안에 저장하고 싶을 때가 있습니다.

```js
const conversation = 'Finn exclaims to Jake, "Algebraic!"';
```

하지만 가장 바깥쪽의 따옴표를 문자열 안에 사용할 필요가 있을 때는 문제가 발생합니다. 문자열의 시작과 끝은 동일한 종류의 따옴표로 되어있다는 것을 기억하세요. 만약 당신이 시작 혹은 끝과 동일한 따옴표를 중간 어디선가에서 사용한다면, 그 문자열은 그곳에서 멈출 것이고 에러를 발생시킬 겁니다.

```js
const goodStr = 'Jake asks Finn, "Hey, let\'s go on an adventure?"'; 
const badStr = 'Finn responds, "Let's go!"';
```

여기에 나오는 `badStr`은 에러를 발생시킵니다.

위의 <dfn>goodStr</dfn>에서는, 백슬래시(`\`) 로 따옴표를 글자로 사용(escape) 할 수 있도록 하는 것으로, 2가지 타입의 따옴표를 문제 없이 사용할 수 있습니다.

**노트:** 백슬래시 `\` 를 슬래시 `/`와 혼동하지 말아 주세요. 그들은 전혀 다른 일을 합니다.

# --instructions--

제공된 문자열을 시작과 끝을 작은 따옴표로 감싸는 백슬래시(/) 를 사용하지 않은 문자열로 변경해 주세요.

지금, 문자열 안의 `<a>` 태그에서는 모든 곳에서 큰 따옴표를 사용하고 있습니다. 당신은 외부의 따옴표를 작은 따옴표로 변경하고, 백슬래시(/) 를 삭제할 수 있어야 합니다.

# --hints--

당신은 모든 백슬래시(`\`) 를 삭제해야 합니다.

```js
assert(
  !/\\/g.test(__helpers.removeJSComments(code)) &&
    myStr.match(
      '\\s*<a href\\s*=\\s*"http://www.example.com"\\s*target\\s*=\\s*"_blank">\\s*Link\\s*</a>\\s*'
    )
);
```

당신은 2개의 작은 따옴표`'` 를 가지고 4개의 큰 따옴표 `"`를 가져야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/"/g).length === 4 && __helpers.removeJSComments(code).match(/'/g).length === 2);
```

# --seed--

## --seed-contents--

```js
const myStr = "<a href=\"http://www.example.com\" target=\"_blank\">Link</a>";
```

# --solutions--

```js
const myStr = '<a href="http://www.example.com" target="_blank">Link</a>';
```
