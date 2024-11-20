---
id: 5c3dda8b4d8df89bea71600f
title: 문자 혼합 그룹 확인
challengeType: 1
forumTopicId: 301339
dashedName: check-for-mixed-grouping-of-characters
---

# --description--

때때로 우리는 정규 표현식을 사용하여 문자 그룹을 확인하고 이를 달성하기 위해 괄호 `()`를 사용합니다.

문자열에서 `Penguin` 또는 `Pumpkin`을 찾고 싶다면 다음 정규 표현식을 사용할 수 있습니다: `/P(engu|umpk)in/g`

그런 다음 `test()` 메서드를 사용하여 원하는 문자열 그룹이 테스트 문자열에 있는지 여부를 확인하십시오.

```js
let testStr = "Pumpkin";
let testRegex = /P(engu|umpk)in/;
testRegex.test(testStr);
```

여기에서는 `test` 메서드가 `true`를 반환합니다.

# --instructions--

정규 표현식을 수정하여 `Franklin Roosevelt` 또는 `Eleanor Roosevelt`의 이름을 대소문자 구분 방식으로 확인하고 중간 이름에 대한 유연성을 부여하도록 만드십시오.

그런 다음 코드도 수정하여 생성한 정규 표현식이 `myString`과 비교되어 정규 표현식이 일치하는지에 따라 `true` 또는 `false`가 반환되도록 하십시오.

# --hints--

정규 표현식 `myRegex`는 문자열 `Franklin D. Roosevelt`에 대해 `true`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(myRegex.test('Franklin D. Roosevelt'));
```

정규 표현식 `myRegex`는 문자열 `Eleanor Roosevelt`에 대해 `true`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(myRegex.test('Eleanor Roosevelt'));
```

정규 표현식 `myRegex`는 문자열 `Franklin Rosevelt`에 대해 `false`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(!myRegex.test('Franklin Rosevelt'));
```

정규 표현식 `myRegex`는 문자열 `Frank Roosevelt`에 대해 `false`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(!myRegex.test('Frank Roosevelt'));
```

정규 표현식 `myRegex`는 문자열 `FranklinRoosevelt`에 대해 `false`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(!myRegex.test('FranklinRoosevelt'));
```

정규 표현식 `myRegex`는 문자열 `EleanorRoosevelt`에 대해 `false`를 반환해야 합니다.

```js
myRegex.lastIndex = 0;
assert(!myRegex.test('EleanorRoosevelt'));
```

정규 표현식을 테스트하려면 `.test()`를 사용해야 합니다.

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
let myString = "Eleanor Roosevelt";
let myRegex = /False/; // Change this line
let result = false; // Change this line
// After passing the challenge experiment with myString and see how the grouping works
```

# --solutions--

```js
let myString = "Eleanor Roosevelt";
let myRegex = /(Franklin|Eleanor) (([A-Z]\.?|[A-Z][a-z]+) )?Roosevelt/;
let result = myRegex.test(myString);
```
