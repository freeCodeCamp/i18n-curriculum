---
id: 5a24c314108439a4d403615b
title: 使用 Object.assign 拷貝對象
challengeType: 6
forumTopicId: 301437
dashedName: copy-an-object-with-object-assign
---

# --description--

The last several challenges worked with arrays, but there are ways to help enforce state immutability when state is an `object`, too. A useful tool for handling objects is the `Object.assign()` utility. `Object.assign()` takes a target object and source objects and maps properties from the source objects to the target object. Any matching properties are overwritten by properties in the source objects. This behavior is commonly used to make shallow copies of objects by passing an empty object as the first argument followed by the object(s) you want to copy. 如下所示：

```js
const newObject = Object.assign({}, obj1, obj2);
```

這會創建 `newObject` 作爲新的 `object`，其中包含 `obj1` 和 `obj2` 中當前存在的屬性。

# --instructions--

Redux state 和 actions 被修改爲處理 `state` 的 `object` 。 編輯代碼，爲類型爲 `ONLINE` 的 actions 返回一個新的 `state` 對象，這個類型將 `status` 屬性設置爲 `online` 字符串。 嘗試使用 `Object.assign()` 來完成挑戰。

# --hints--

Redux store 應該存在，並使用與第一行聲明的 `defaultState` 對象相同的狀態進行初始化。

```js
assert(
  (function () {
    const expectedState = {
      user: 'CamperBot',
      status: 'offline',
      friends: '732,982',
      community: 'freeCodeCamp'
    };
    const initialState = store.getState();
    return DeepEqual(expectedState, initialState);
  })()
);
```

`wakeUp` 和 `immutableReducer` 都應該是函數。

```js
assert(typeof wakeUp === 'function' && typeof immutableReducer === 'function');
```

調用一個類型爲 `ONLINE` 的 action，應該將狀態中的 `status` 更新爲 `online`，並且不應該改變狀態。

```js
assert(
  (function () {
    const initialState = store.getState();
    const isFrozen = DeepFreeze(initialState);
    store.dispatch({ type: 'ONLINE' });
    const finalState = store.getState();
    const expectedState = {
      user: 'CamperBot',
      status: 'online',
      friends: '732,982',
      community: 'freeCodeCamp'
    };
    return isFrozen && DeepEqual(finalState, expectedState);
  })()
);
```

`Object.assign` 應該被用於返回一個新狀態。

```js
(getUserInput) => assert(getUserInput('index').includes('Object.assign'));
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      return Object.assign({}, state, {
        status: 'online'
      });
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```
