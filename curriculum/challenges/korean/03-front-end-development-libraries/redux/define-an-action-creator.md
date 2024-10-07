---
id: 5a24c314108439a4d403614e
title: 액션 생성자 정의하기
challengeType: 6
forumTopicId: 301441
dashedName: define-an-action-creator
---

# --description--

After creating an action, the next step is sending the action to the Redux store so it can update its state. In Redux, you define action creators to accomplish this. An action creator is simply a JavaScript function that returns an action. In other words, action creators create objects that represent action events.

# --instructions--

`actionCreator()`라는 함수를 정의하세요. 이 함수는 호출됐을 때 `action` 객체를 반환합니다.

# --hints--

`actionCreator`라는 함수가 존재해야 합니다.

```js
assert(typeof actionCreator === 'function');
```

`actionCreator` 함수를 실행하면 `action` 객체를 반환해야 합니다.

```js
assert(typeof action === 'object');
```

반환된 `action` 객체는 key가 `type`이고 값이 `LOGIN` <0>type</0>인 속성을 가져야 합니다.

```js
assert(action.type === 'LOGIN');
```

# --seed--

## --seed-contents--

```js
const action = {
  type: 'LOGIN'
}
// Define an action creator here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
const actionCreator = () => {
  return action;
};
```
