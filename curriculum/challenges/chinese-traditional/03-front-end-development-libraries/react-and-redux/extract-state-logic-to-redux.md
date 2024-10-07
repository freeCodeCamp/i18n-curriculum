---
id: 5a24c314108439a4d4036143
title: 提取狀態邏輯給 Redux
challengeType: 6
forumTopicId: 301429
dashedName: extract-state-logic-to-redux
---

# --description--

Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

# --instructions--

首先，定義 action 的類型 `ADD`，將其設置爲常量 `ADD`。 接着，定義創建 action 的函數`addMessage()`，用該函數創建添加消息的 action， 把 `message` 傳給創建 action 的函數並返回包含該消息的 `action`

接着，創建名爲 `messageReducer()` 的 reducer 方法，爲這些消息處理狀態。 初始狀態應爲空數組。 reducer 向狀態中的消息數組添加消息，或返回當前狀態。 最後，創建 Redux store 並傳給 reducer。

# --hints--

應存在一個值爲字符串 `ADD` 的常量 `ADD`。

```js
assert(ADD === 'ADD');
```

創建 action 的函數 `addMessage` 應返回 `type` 等於 `ADD` 的對象，其返回的 `message` 即被傳入的消息。

```js
assert(
  (function () {
    const addAction = addMessage('__TEST__MESSAGE__');
    return addAction.type === ADD && addAction.message === '__TEST__MESSAGE__';
  })()
);
```

`messageReducer` 應是一個函數。

```js
assert(typeof messageReducer === 'function');
```

存在一個 store 且其初始狀態爲空數組。

```js
assert(
  (function () {
    const initialState = store.getState();
    return typeof store === 'object' && initialState.length === 0;
  })()
);
```

分發 `addMessage` 到 store 應添加新消息到狀態中消息數組。

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

`messageReducer` 被其它任何 actions 調用時應返回當前狀態。

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
