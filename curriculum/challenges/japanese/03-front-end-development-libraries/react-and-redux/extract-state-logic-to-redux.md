---
id: 5a24c314108439a4d4036143
title: 状態ロジックを Redux に抽出する
challengeType: 6
forumTopicId: 301429
dashedName: extract-state-logic-to-redux
---

# --description--

Now that you finished the React component, you need to move the logic it's performing locally in its `state` into Redux. This is the first step to connect the simple React app to Redux. The only functionality your app has is to add new messages from the user to an unordered list. The example is simple in order to demonstrate how React and Redux work together.

# --instructions--

まず、アクションタイプ `ADD` を定義し、それを const `ADD` に設定してください。 次に、メッセージを追加するためのアクションを作成するアクションクリエイター `addMessage()` を定義してください。 このアクションクリエイターに `message` を渡し、返された `action` にメッセージを含める必要があります。

その次に、メッセージの状態を処理する `messageReducer()` というレデューサーを作成してください。 初期状態は空の配列に等しくしてください。 このレデューサーでは、state に保持されているメッセージの配列にメッセージを追加するか、または現在の state を返す必要があります。 最後に、Redux ストアを作成してレデューサーを渡してください。

# --hints--

const `ADD` が存在し、文字列 `ADD` に等しい値を保持する必要があります。

```js
assert(ADD === 'ADD');
```

アクションクリエイター `addMessage` から、`type` が `ADD` に等しく、`message` が渡されたメッセージに等しいオブジェクトを返します。

```js
assert(
  (function () {
    const addAction = addMessage('__TEST__MESSAGE__');
    return addAction.type === ADD && addAction.message === '__TEST__MESSAGE__';
  })()
);
```

`messageReducer` は関数である必要があります。

```js
assert(typeof messageReducer === 'function');
```

ストアが存在し、初期状態が空の配列に設定されている必要があります。

```js
assert(
  (function () {
    const initialState = store.getState();
    return typeof store === 'object' && initialState.length === 0;
  })()
);
```

ストアに対する `addMessage` のディスパッチで、state に保持されているメッセージの配列に、新しいメッセージをイミュータブルに追加します。

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

`messageReducer` は、他のアクションで呼び出された場合に、現在の state を返す必要があります。

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
