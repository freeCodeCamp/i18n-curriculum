---
id: 5a24c314108439a4d403614d
title: 리덕스 액션 정의하기
challengeType: 6
forumTopicId: 301440
dashedName: define-a-redux-action
---

# --description--

Since Redux is a state management framework, updating state is one of its core tasks. In Redux, all state updates are triggered by dispatching actions. An action is simply a JavaScript object that contains information about an action event that has occurred. The Redux store receives these action objects, then updates its state accordingly. Sometimes a Redux action also carries some data. For example, the action carries a username after a user logs in. While the data is optional, actions must carry a `type` property that specifies the 'type' of action that occurred.

Redux 액션을 앱에서 발생하는 이벤트에 대한 정보를 Redux 스토어에 전달하는 메신저로 생각하세요. 그러면 스토어는 발생한 액션을 기반으로 상태를 업데이트하는 작업을 수행합니다.

# --instructions--

Redux 액션을 작성하는 것은 type 속성을 가진 객체를 선언하는 것만큼 간단합니다. `action`이라는 객체를 선언하고 `type` 속성을 문자열 `'LOGIN'`으로 설정하세요.

# --hints--

`action` 객체가 존재해야 합니다.

```js
assert(
  (function () {
    return typeof action === 'object';
  })()
);
```

`action` 객체는 `LOGIN` 값을 가진 `type`이라는 key 속성을 가져야 합니다.

```js
assert(
  (function () {
    return action.type === 'LOGIN';
  })()
);
```

# --seed--

## --seed-contents--

```js
// Define an action here:
```

# --solutions--

```js
const action = {
  type: 'LOGIN'
}
```
