---
id: 5a24c314108439a4d403615b
title: 使用 Object.assign 拷贝对象
challengeType: 6
forumTopicId: 301437
dashedName: copy-an-object-with-object-assign
---

# --description--

The last several challenges worked with arrays, but there are ways to help enforce state immutability when state is an `object`, too. A useful tool for handling objects is the `Object.assign()` utility. `Object.assign()` takes a target object and source objects and maps properties from the source objects to the target object. Any matching properties are overwritten by properties in the source objects. This behavior is commonly used to make shallow copies of objects by passing an empty object as the first argument followed by the object(s) you want to copy. 如下所示：

```js
const newObject = Object.assign({}, obj1, obj2);
```

这会创建 `newObject` 作为新的 `object`，其中包含 `obj1` 和 `obj2` 中当前存在的属性。

# --instructions--

Redux state 和 actions 被修改为处理 `state` 的 `object` 。 编辑代码，为类型为 `ONLINE` 的 actions 返回一个新的 `state` 对象，这个类型将 `status` 属性设置为 `online` 字符串。 尝试使用 `Object.assign()` 来完成挑战。

# --hints--

Redux store 应该存在，并使用与第一行声明的 `defaultState` 对象相同的状态进行初始化。

```js
const expectedState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};
const initialState = store.getState();
assert.deepEqual(expectedState, initialState);
```

`wakeUp` 和 `immutableReducer` 都应该是函数。

```js
assert(typeof wakeUp === 'function' && typeof immutableReducer === 'function');
```

调用一个类型为 `ONLINE` 的 action，应该将状态中的 `status` 更新为 `online`，并且不应该改变状态。

```js

const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch({ type: 'ONLINE' });
const finalState = store.getState();
const expectedState = {
  user: 'CamperBot',
  status: 'online',
  friends: '732,982',
  community: 'freeCodeCamp'
};
assert(isFrozen);
assert.deepEqual(finalState, expectedState);
```

`Object.assign` 应该被用于返回一个新状态。

```js
assert(code.includes('Object.assign'));
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
