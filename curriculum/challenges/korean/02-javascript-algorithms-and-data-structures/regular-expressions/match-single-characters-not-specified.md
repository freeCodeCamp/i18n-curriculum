---
id: 587d7db6367417b2b2512b98
title: 지정되지 않은 단일 문자 일치
challengeType: 1
forumTopicId: 301358
dashedName: match-single-characters-not-specified
---

# --description--

So far, you have created a set of characters that you want to match, but you could also create a set of characters that you do not want to match. These types of character sets are called <dfn>negated character sets</dfn>.

제외할 문자 집합을 만들려면, 열리는 괄호 뒤와 일치시키지 않으려는 문자 앞에 캐럿 문자(`^`)를 배치합니다.

예를 들어, `/[^aeiou]/gi`는 모음이 아닌 모든 문자와 일치합니다. `.`, `!`, `[`, `@`, `/` 그리고 공백과 같은 문자는 일치한다는 점에 유의하십시오. 제외할 모음 문자 집합은 모음 문자만 제외합니다.

# --instructions--

숫자나 모음이 아닌 모든 문자에 일치하는 단일 정규 표현식을 만드십시오. 정규 표현식에 적절한 플래그를 포함시키는 것을 기억하십시오.

# --hints--

정규 표현식 `myRegex`는 9개의 항목과 일치해야 합니다.

```js
assert(result.length == 9);
```

정규 표현식 `myRegex`는 전역 플래그를 사용해야 합니다.

```js
assert(myRegex.flags.match(/g/).length == 1);
```

정규 표현식 `myRegex`는 대소문자 구분 없는 플래그를 사용해야 합니다.

```js
assert(myRegex.flags.match(/i/).length == 1);
```

# --seed--

## --seed-contents--

```js
let quoteSample = "3 blind mice.";
let myRegex = /change/; // Change this line
let result = myRegex; // Change this line
```

# --solutions--

```js
let quoteSample = "3 blind mice.";
let myRegex = /[^0-9aeiou]/gi; // Change this line
let result = quoteSample.match(myRegex); // Change this line
```
