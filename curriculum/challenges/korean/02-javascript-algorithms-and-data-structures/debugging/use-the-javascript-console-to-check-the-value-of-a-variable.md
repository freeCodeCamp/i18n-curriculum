---
id: 587d7b83367417b2b2512b33
title: 자바스크립트 콘솔을 사용해 변수 값 확인하는 법
challengeType: 1
forumTopicId: 18372
dashedName: use-the-javascript-console-to-check-the-value-of-a-variable
---

# --description--

Both Chrome and Firefox have excellent JavaScript consoles, also known as DevTools, for debugging your JavaScript.

크롬 브라우저의 '개발자 도구' 메뉴 또는 파이어폭스의 '웹 콘솔' 메뉴를 찾아보시면 됩니다. 만약 다른 브라우저나 모바일 폰을 사용하고 계신다면, 파이어폭스나 크롬 브라우저를 사용하시기를 강력하게 권장합니다.

`console.log()` 메소드는 괄호 안의 내용을 콘솔에 아웃풋으로 출력하며, 이는 가장 유용한 디버깅 도구가 될 것입니다. 이 메소드를 코드에서 필요한 부분에 전략적으로 배치하여 변수들의 중간 값들을 확인할 수 있습니다. 출력이 어떻게 되어야 하는지에 대한 생각을 해보고 나서 실제 출력을 확인하는 것이 좋은 습관입니다. 코드 전반에 걸쳐 계산 상태를 확인할 수 있는 체크 포인트를 두는 것은 문제의 위치를 좁혀나가는 데 도움이 됩니다.

다음은 문자열 `Hello world!`을 콘솔에 출력하는 예제입니다:

```js
console.log('Hello world!');
```

# --instructions--

`console.log()` 메서드를 사용해 코드에서 표시된 곳에 변수 `a`의 값을 출력하세요.

# --hints--

변수 `a`의 값을 확인하기 위해 `console.log()`를 사용해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/console\.log\(a\)/g));
```

# --seed--

## --seed-contents--

```js
let a = 5;
let b = 1;
a++;
// Only change code below this line


let sumAB = a + b;
console.log(sumAB);
```

# --solutions--

```js
var a = 5; console.log(a);
```
