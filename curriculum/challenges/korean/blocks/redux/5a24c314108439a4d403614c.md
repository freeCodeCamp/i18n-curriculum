---
id: 5a24c314108439a4d403614c
title: 리덕스 스토어에서 상태 가져오기
challengeType: 6
forumTopicId: 301443
dashedName: get-state-from-the-redux-store
---

# --description--

The Redux store object provides several methods that allow you to interact with it. For example, you can retrieve the current `state` held in the Redux store object with the `getState()` method.

# --instructions--

이전 챌린지의 코드가 코드 에디터에 더 간결하게 다시 작성되었습니다. `store.getState()`를 사용하여 `store`에서 `state`를 검색하고, 이를 새로운 변수 `currentState`에 할당하세요.

# --hints--

리덕스 스토어의 초기 상태 값은 5여야 합니다.

```js
assert(store.getState() === 5);
```

`currentState`라는 변수가 존재해야 하며, 리덕스 스토어의 현재 상태가 할당되어야 합니다.

```js
assert(currentState === 5 && code.includes('store.getState()'));
```

# --seed--

## --seed-contents--

```js
const store = Redux.createStore(
  (state = 5) => state
);

// Change code below this line
```

# --solutions--

```js
const store = Redux.createStore(
  (state = 5) => state
);

// Change code below this line
const currentState = store.getState();
```
