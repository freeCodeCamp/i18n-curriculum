---
id: 587d7b8e367417b2b2512b5f
title: 함수에 외부 의존성을 피하도록 인자를 전달하기
challengeType: 1
forumTopicId: 301234
dashedName: pass-arguments-to-avoid-external-dependence-in-a-function
---

# --description--

The last challenge was a step closer to functional programming principles, but there is still something missing.

전역 변수를 변형시키지 않았지만 전역 변수 `fixedValue`없이 `incrementer`는 동작하지 않을 것입니다.

함수형 프로그래밍의 또다른 원칙은 항상 명백하게 의존성을 명시하는 것입니다. 이는 함수가 현재 변수나 객체에 의존한다면 그 변수나 객체를 함수에 인자로 전달하는 것을 의미합니다.

이 원칙으로부터 얻는 좋은 결과들이 있습니다. 함수는 테스트하기 용이해지고 함수가 무슨 입력을 받는지 그리고 프로그램 내에서 다른 어떤 것에 의존하지 않게 된다는 것을 알게 됩니다.

이는 우리가 코드를 변형, 삭제 추가할 때 빛을 발하게 됩니다. 어떤 것을 변형시켜도 되는지 알 것이고 잠재적인 함정이 어디 있는지 볼 수 있게 됩니다.

마지막으로 함수의 어떤 부분이 실행되는지에 상관없이 함수는 항상 같은 입력에 대해 같은 출력을 냅니다.

# --instructions--

의존성을 명확하게 명시하도록 `incrementer` 함수를 수정해보겠습니다.

인자를 받고 1이 증가된 값을 반환하는 `incrementer` 함수를 작성하시오.

# --hints--

`incrementer` 함수는 `fixedValue`의 값(`4`)을 변형시키지 않아야 합니다.

```js
assert(fixedValue === 4);
```

`incrementer` 함수는 인자를 받아야 합니다.

```js
assert(incrementer.length === 1);
```

`incrementer` 함수는 `fixedValue`의 값보다 1이 큰 값을 반환해야 합니다.

```js
const __newValue = incrementer(fixedValue);
assert(__newValue === 5);
```

# --seed--

## --seed-contents--

```js
// The global variable
let fixedValue = 4;

// Only change code below this line
function incrementer() {


  // Only change code above this line
}
```

# --solutions--

```js
let fixedValue = 4;

function incrementer(fixedValue) {
  return fixedValue + 1;
}
```
