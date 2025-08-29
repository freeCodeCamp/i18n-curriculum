---
id: 587d7b7c367417b2b2512b1b
title: 객체 속성을 지우기 위한 delete 키워드 사용하기
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

이제 객체가 무엇이며 그들의 기본적인 특징과 장점을 알게 되었습니다. 간단히 말해, 그들은 데이터를 구조화하는 유연하고 직관적인 방법을 제공하는 키-값 저장소임과 ***동시에*** 매우 빠른 조회 시간을 제공합니다. 이 과제의 나머지 부분에서는 객체에서 수행할 수 있는 여러 일반적인 작업에 대해 설명하여 여러분이 프로그램에서 이 유용한 데이터 구조를 적용하는 데 익숙해지도록 도와드리겠습니다.

이전 과제에서 객체의 키-값 쌍을 추가하고 수정해봤습니다. 여기에서는 어떻게 객체로부터 키-값 쌍을 지울 수 있는지 알아보겠습니다.

지난 번의 `foods` 객체를 다시 보겠습니다. `apples` 키를 지우길 원한다면 다음과 같이 `delete` 키워드를 사용해서 지울 수 있습니다:

```js
delete foods.apples;
```

# --instructions--

`foods` 객체로부터 `oranges`, `plums`, 그리고 `strawberries`를 지우도록 delete 키워드를 사용하시오.

# --hints--

`foods` 객체는 오직 다음 세 개의 키를 가져야 합니다: `apples`, `grapes`, 그리고 `bananas`.

```js
assert(
  !foods.hasOwnProperty('oranges') &&
    !foods.hasOwnProperty('plums') &&
    !foods.hasOwnProperty('strawberries') &&
    Object.keys(foods).length === 3
);
```

`oranges`, `plums`, 그리고 `strawberries` 키는 `delete`로 지워져야 합니다.

```js
assert(
  __helpers.removeJSComments(code).search(/oranges:/) !== -1 &&
    __helpers.removeJSComments(code).search(/plums:/) !== -1 &&
    __helpers.removeJSComments(code).search(/strawberries:/) !== -1
);
```

# --seed--

## --seed-contents--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

// Only change code below this line

// Only change code above this line

console.log(foods);
```

# --solutions--

```js
let foods = {
  apples: 25,
  oranges: 32,
  plums: 28,
  bananas: 13,
  grapes: 35,
  strawberries: 27
};

delete foods.oranges;
delete foods.plums;
delete foods.strawberries;

console.log(foods);
```
