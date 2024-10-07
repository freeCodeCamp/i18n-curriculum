---
id: 587d7dac367417b2b2512b73
title: 기본 Javascript 객체 생성하기
challengeType: 1
forumTopicId: 301317
dashedName: create-a-basic-javascript-object
---

# --description--

Think about things people see every day, like cars, shops, and birds. These are all <dfn>objects</dfn>: tangible things people can observe and interact with.

이 객체들의 특성은 무엇일까요? 차는 바퀴를 가지고 있습니다. 가게는 물건을 팝니다. 새들은 날개를 가지고 있습니다.

이러한 특성 혹은 <dfn>속성</dfn>은 무엇이 한 객체를 이루는지 정의합니다. 비슷한 객체들이 같은 속성들을 공유하지만 그 속성들에는 각기 다른 값들을 가질 수 있습니다. 예를 들면, 모든 차는 바퀴를 가지고 있지만 모든 차가 같은 수의 바퀴를 가지는 것은 아닙니다.

Javascript에서 객체는 실제 대상의 속성과 행동을 이 객체에 주어 그 대상을 모델링하기 위해 사용됩니다. 이러한 개념을 사용하여 객체 `duck`을 생성하는 예시입니다.

```js
let duck = {
  name: "Aflac",
  numLegs: 2
};
```

객체 `duck`는 다음의 두 쌍의 속성/값이 있습니다: `Aflac`로 지정한 `name`과 2로 지정한 `numLegs`.

# --instructions--

속성 `name`과 `numLegs`을 가진 객체 `dog`를 만들고 각 속성들을 순서대로 문자열과 숫자값으로 설정하시오.

# --hints--

`dog`는 객체이어야 합니다.

```js
assert(typeof dog === 'object');
```

`dog`는 문자열로 설정된 속성 `name`을 가져야 합니다.

```js
assert(typeof dog.name === 'string');
```

`dog`는 숫자로 설정된 `numLegs`를 가져야 합니다.

```js
assert(typeof dog.numLegs === 'number');
```

# --seed--

## --seed-contents--

```js
let dog = {

};
```

# --solutions--

```js
let dog = {
  name: '',
  numLegs: 4
};
```
