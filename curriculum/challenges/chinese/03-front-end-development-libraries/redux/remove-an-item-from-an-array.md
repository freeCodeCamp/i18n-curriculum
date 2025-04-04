---
id: 5a24c314108439a4d403615a
title: 从数组中删除项目
challengeType: 6
forumTopicId: 301447
dashedName: remove-an-item-from-an-array
---

# --description--

Time to practice removing items from an array. The spread operator can be used here as well. Other useful JavaScript methods include `slice()` and `concat()`.

# --instructions--

reducer 和 action creator 被修改为根据项目的索引从数组中删除一个项目。 完成编写 reducer 以便返回一个新的状态数组，并删除特定索引处的项目。

# --hints--

Redux store 应该存在并初始化一个 `[0,1,2,3,4,5]` 的状态。

```js
const initialState = store.getState();
assert.isArray(initialState) 
assert.deepEqual(initialState, [0, 1, 2, 3, 4, 5])
```

`removeItem` 和 `immutableReducer` 都应该是一个函数。

```js
assert(
  typeof removeItem === 'function' && typeof immutableReducer === 'function'
);
```

dispatch `removeItem` action creator 应该从 state 中删除项目，不应该改变 state。

```js
const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch(removeItem(3));
const state_1 = store.getState();
store.dispatch(removeItem(2));
const state_2 = store.getState();
store.dispatch(removeItem(0));
store.dispatch(removeItem(0));
store.dispatch(removeItem(0));
const state_3 = store.getState();

assert(isFrozen)
assert.deepEqual(state_1, [0, 1, 2, 4, 5]) 
assert.deepEqual(state_2, [0, 1, 4, 5]) 
assert.deepEqual(state_3, [5])

```

# --seed--

## --seed-contents--

```js
const immutableReducer = (state = [0,1,2,3,4,5], action) => {
  switch(action.type) {
    case 'REMOVE_ITEM':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const removeItem = (index) => {
  return {
    type: 'REMOVE_ITEM',
    index
  }
}

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const immutableReducer = (state = [0,1,2,3,4,5], action) => {
  switch(action.type) {
    case 'REMOVE_ITEM':
      return [
        ...state.slice(0, action.index),
        ...state.slice(action.index + 1)
      ];
    default:
      return state;
  }
};

const removeItem = (index) => {
  return {
    type: 'REMOVE_ITEM',
    index
  }
}

const store = Redux.createStore(immutableReducer);
```
