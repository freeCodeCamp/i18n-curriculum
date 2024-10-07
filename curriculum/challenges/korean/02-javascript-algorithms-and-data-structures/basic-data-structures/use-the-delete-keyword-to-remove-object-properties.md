---
id: 587d7b7c367417b2b2512b1b
title: 객체 속성을 지우기 위한 delete 키워드 사용하기
challengeType: 1
forumTopicId: 301168
dashedName: use-the-delete-keyword-to-remove-object-properties
---

# --description--

Now you know what objects are and their basic features and advantages. In short, they are key-value stores which provide a flexible, intuitive way to structure data, ***and***, they provide very fast lookup time. Throughout the rest of these challenges, we will describe several common operations you can perform on objects so you can become comfortable applying these useful data structures in your programs.

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
