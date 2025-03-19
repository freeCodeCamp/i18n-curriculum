---
id: 587d7db3367417b2b2512b8e
title: 테스트 메서드 사용
challengeType: 1
forumTopicId: 301369
dashedName: using-the-test-method
---

# --description--

정규 표현식은 프로그래밍 언어에서 문자열의 일부분을 찾기 위해 사용됩니다. 패턴을 만들어서 그 작업을 돕습니다.

문자열 `The dog chased the cat`에서 `the` 단어를 찾고 싶다면 다음과 같은 정규 표현식을 사용할 수 있습니다: `/the/`. 정규 표현식 내에 인용 부호는 필요하지 않습니다.

자바스크립트는 여러 가지 방법으로 정규 표현식을 사용할 수 있습니다. 정규 표현식을 테스트하는 한 가지 방법은 `.test()` 메소드를 사용하는 것입니다. `.test()` 메서드는 정규 표현식을 받아서 이를 문자열(괄호 안에 위치)에 적용하고, 패턴이 어떤 것을 찾았는지에 따라 `true` 또는 `false`를 반환합니다.

```js
let testStr = "freeCodeCamp";
let testRegex = /Code/;
testRegex.test(testStr);
```

여기에서는 `test` 메서드가 `true`를 반환합니다.

# --instructions--

문자열 `myString`에 `myRegex` 정규 표현식을 `.test()` 메서드를 사용하여 적용하십시오.

# --hints--

정규 표현식을 테스트하기 위해 `.test()`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/myRegex.test\(\s*myString\s*\)/));
```

결과는 `true`를 반환해야 합니다.

```js
assert(result === true);
```

# --seed--

## --seed-contents--

```js
let myString = "Hello, World!";
let myRegex = /Hello/;
let result = myRegex; // Change this line
```

# --solutions--

```js
let myString = "Hello, World!";
let myRegex = /Hello/;
let result = myRegex.test(myString); // Change this line
```
