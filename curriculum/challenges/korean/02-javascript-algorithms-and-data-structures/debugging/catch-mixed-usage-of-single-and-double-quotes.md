---
id: 587d7b84367417b2b2512b37
title: 작은 따옴표와 큰 따옴표 혼용 감지하기
challengeType: 1
forumTopicId: 301188
dashedName: catch-mixed-usage-of-single-and-double-quotes
---

# --description--

JavaScript allows the use of both single (`'`) and double (`"`) quotes to declare a string. Deciding which one to use generally comes down to personal preference, with some exceptions.

문자열에 축약형이나 따옴표 안에 있는 다른 텍스트가 있을 때 두 가지 선택지가 있는 것은 매우 유용합니다. 문자열을 섣불리 닫지 않도록 조심해야 합니다. 이는 구문 에러를 야기합니다.

여기 따옴표 혼용 예시가 있습니다:

```js
const grouchoContraction = "I've had a perfectly wonderful evening, but this wasn't it.";
const quoteInString = "Groucho Marx once said 'Quote me as saying I was mis-quoted.'";
const uhOhGroucho = 'I've had a perfectly wonderful evening, but this wasn't it.';
```

첫 두 문장은 맞지만 세 번째는 맞지 않습니다.

물론 한 가지 따옴표만 사용하는 것도 괜찮습니다. 문자열 내부의 따옴표는 백슬래시(``) 예외 처리 문자로 예외 처리할 수 있습니다:

```js
const allSameQuotes = 'I\'ve had a perfectly wonderful evening, but this wasn\'t it.';
```

# --instructions--

`href` 값에 대해 다른 따옴표를 사용하거나 기존 것을 예외처리할 수 있도록 문자열을 수정하시오. 전체 문자열에 있는 큰 따옴표는 그대로 두시오.

# --hints--

변경하거나 예외 처리를 하여 `href` 값 `#Home`에 있는 따옴표를 수정해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/<a href=\s*?('|\\")#Home\1\s*?>/g));
```

전체 문자열에 있는 큰 따옴표는 그대로 유지해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/"<p>.*?<\/p>";/g));
```

# --seed--

## --seed-contents--

```js
let innerHtml = "<p>Click here to <a href="#Home">return home</a></p>";
console.log(innerHtml);
```

# --solutions--

```js
let innerHtml = "<p>Click here to <a href=\"#Home\">return home</a></p>";
console.log(innerHtml);
```
