---
id: 5a24c314108439a4d4036143
title: Redux로 상태 로직 추출하기
challengeType: 6
forumTopicId: 301429
dashedName: extract-state-logic-to-redux
---

# --description--

Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

# --instructions--

먼저, 액션 타입 `ADD`를 정의하고 상수 `ADD`에 할당하세요. 다음으로, 메시지를 추가하는 작업을 생성하는 액션 생성자 `addMessage()`를 정의하세요. 이 액션 생성자에 `message`를 전달해야 하며 반환된 `action`에 메시지를 포함해야 합니다.

그런 다음 메시지 상태에 대한 리듀서인 `messageReducer()`를 생성하세요. 초기 상태는 비어있는 배열이어야 합니다. 이 리듀서는 상태에 보관된 메시지 배열에 메시지를 추가하거나 현재 상태를 반환해야 합니다. 마지막으로, Redux 스토어를 생성하고 리듀서를 전달하세요.

# --hints--

상수 `ADD`는 존재해야 하며 문자열 `ADD`와 동일한 값을 갖고 있어야 합니다.

```js
assert(ADD === 'ADD');
```

액션 생성자 `addMessage`는 `type`이 `ADD`이고 전달된 메시지와 동일한 `message`가 있는 객체를 반환해야 합니다.

```js
assert(
  (function () {
    const addAction = addMessage('__TEST__MESSAGE__');
    return addAction.type === ADD && addAction.message === '__TEST__MESSAGE__';
  })()
);
```

`messageReducer`는 함수여야 합니다.

```js
assert(typeof messageReducer === 'function');
```

스토어가 존재해야 하며 초기 상태가 빈 배열로 설정되어야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    return typeof store === 'object' && initialState.length === 0;
  })()
);
```

스토어에 대해 `addMessage`를 디스패치하면 상태에 보관된 메시지 배열에 새 메시지를 변경하지 않고 추가해야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    const isFrozen = DeepFreeze(initialState);
    store.dispatch(addMessage('__A__TEST__MESSAGE'));
    const addState = store.getState();
    return isFrozen && addState[0] === '__A__TEST__MESSAGE';
  })()
);
```

`messageReducer`는 다른 액션으로 호출될 경우 현재 상태를 반환해야 합니다.

```js
assert(
  (function () {
    const addState = store.getState();
    store.dispatch({ type: 'FAKE_ACTION' });
    const testState = store.getState();
    return addState === testState;
  })()
);
```

# --seed--

## --seed-contents--

```jsx
// Define ADD, addMessage(), messageReducer(), and store here:
```

# --solutions--

```jsx
const ADD = 'ADD';

const addMessage = (message) => {
  return {
    type: ADD,
    message
  }
};

const messageReducer = (state = [], action) => {
  switch (action.type) {
    case ADD:
      return [
        ...state,
        action.message
      ];
    default:
      return state;
  }
};

const store = Redux.createStore(messageReducer);
```
