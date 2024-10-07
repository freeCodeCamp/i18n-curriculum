---
id: 587d7db2367417b2b2512b8a
title: >-
  객체의 속성이 외부에서 수정이 불가하도록 Closure 사용하기
challengeType: 1
forumTopicId: 18234
dashedName: >-
  use-closure-to-protect-properties-within-an-object-from-being-modified-externally
---

# --description--

In the previous challenge, `bird` had a public property `name`. It is considered public because it can be accessed and changed outside of `bird`'s definition.

```js
bird.name = "Duffy";
```

그러므로 다른 코드 부분에서 쉽게 `bird`의 이름을 아무 값으로 바꿀 수 있게 됩니다. 다른 코드 부분에서 쉽게 비밀번호나 계좌가 바뀔 수 있다고 생각해보십시오. 많은 문제를 야기할 수 있습니다.

Public 속성을 private으로 만드는 가장 쉬운 방법은 생성자 함수 내에서 변수를 생성하는 것입니다. 전역적으로 변수를 사용하는 것에서 생성자 함수 내로 범위를 좁힐 수 있게 됩니다. 이런 식으로 변수는 오직 생성자 함수 내의 메소드에 의해서만 접근이 가능하고 수정이 가능하게 됩니다.

```js
function Bird() {
  let hatchedEgg = 10;

  this.getHatchedEggCount = function() { 
    return hatchedEgg;
  };
}
let ducky = new Bird();
ducky.getHatchedEggCount();
```

여기 `getHatchedEggCount`는 private 변수인 `hatchedEgg`에 접근할 수 있는 특권이 있는 메소드입니다. 이는 `hatchedEgg`가 `getHatchedEggCount`와 같은 맥락에서 선언되었기 때문입니다. 자바스크립트에서 함수는 함수가 만들어지는 맥락만 접근할 수 있습니다. 이것은 `closure`라고 불립니다.

# --instructions--

함수 `Bird`에 선언된 `weight`에 변화를 주어 private 변수로 만드시오. 그런 다음에 `weight`의 값 15를 반환하는 메소드 `getWeight`를 생성하시오.

# --hints--

속성 `weight`은 private 변수이어야 하고 값 `15`으로 지정되어야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/(var|let|const)\s+weight\s*\=\s*15\;?/g));
```

`Bird` 에서 private 변수 `weight`의 값을 반환하는 `getWeight`라는 메소드를 생성해야 합니다.

```js
assert(new Bird().getWeight() === 15);
```

함수 `getWeight`는 private 변수 `weight`를 반환해야 합니다.

```js
assert(__helpers.removeJSComments(code).match(/((return\s+)|(\(\s*\)\s*\=\>\s*))weight\;?/g));
```

# --seed--

## --seed-contents--

```js
function Bird() {
  this.weight = 15;


}
```

# --solutions--

```js
function Bird() {
  let weight = 15;

  this.getWeight = () => weight;
}
```
