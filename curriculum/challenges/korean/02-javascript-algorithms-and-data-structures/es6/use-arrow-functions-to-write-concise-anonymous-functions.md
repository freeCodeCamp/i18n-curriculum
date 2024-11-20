---
id: 587d7b87367417b2b2512b43
title: 화살표 함수를 사용하여 간결한 익명 함수를 작성하기
challengeType: 1
forumTopicId: 301211
dashedName: use-arrow-functions-to-write-concise-anonymous-functions
---

# --description--

자바스크립트에서는 다른 함수에 인수로 함수를 전달할 때, 함수명을 지정하지 않아도 되는 경우가 많습니다. 대신, 우리는 인라인 함수를 만듭니다. 이러한 함수들은 다른 곳에서 재사용하지 않기 때문에 이름을 지정할 필요가 없습니다.

이를 실현하기 위해, 우리는 종종 다음과 같은 문법을 사용합니다.

```js
const myFunc = function() {
  const myVar = "value";
  return myVar;
}
```

ES6는 익명 함수를 이 방식으로 작성하지 않아도 되도록 문법적인 요소를 제공합니다. 대신, **화살표 함수 문법**을 사용할 수 있습니다.

```js
const myFunc = () => {
  const myVar = "value";
  return myVar;
}
```

함수 본문이 없고 반환 값만 있을 때, 화살표 함수 문법을 사용하면 `return` 키워드와 코드의 괄호를 생략할 수 있습니다. 이는 작은 함수를 한 줄의 문장으로 단순화하는 데 도움을 줍니다.

```js
const myFunc = () => "value";
```

이 코드는 여전히 기본적으로 `value` 문자열을 반환합니다.

# --instructions--

`magic`에 할당된 함수를 화살표 함수 문법을 사용하여 `new Date()`를 반환하도록 다시 작성하십시오. 또한, `var` 키워드를 사용하여 정의된 것이 없도록 하십시오.

# --hints--

키워드 `var`는 다른 선언 키워드로 교체해야 합니다.

```js
assert.notMatch(code, /var/g)
```

`magic`은 (`const`를 이용하여) 상수로 선언해야 합니다.

```js
assert.match(code, /const\s+magic/g)
```

`magic`은 `function`이어야 합니다.

```js
assert(typeof magic === 'function');
```

`magic()`은 정확한 날짜를 반환해야 합니다.

```js
assert(magic().setHours(0, 0, 0, 0) === new Date().setHours(0, 0, 0, 0));
```

키워드 `function`은 사용하지 않습니다.

```js
assert.notMatch(code, /function/g)
```

# --seed--

## --seed-contents--

```js
var magic = function() {
  return new Date();
};
```

# --solutions--

```js
const magic = () => {
  return new Date();
};
```
