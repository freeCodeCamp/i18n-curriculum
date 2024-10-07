---
id: 5a24c314108439a4d4036156
title: 使用中间件处理异步操作
challengeType: 6
forumTopicId: 301451
dashedName: use-middleware-to-handle-asynchronous-actions
---

# --description--

So far these challenges have avoided discussing asynchronous actions, but they are an unavoidable part of web development. At some point you'll need to call asynchronous endpoints in your Redux app, so how do you handle these types of requests? Redux provides middleware designed specifically for this purpose, called Redux Thunk middleware. Here's a brief description how to use this with Redux.

如果要使用 Redux Thunk 中间件，请将其作为参数传递给 `Redux.applyMiddleware()`。 然后将此函数作为第二个可选参数提供给 `createStore()` 函数， 看一下编辑器底部的代码。 然后，要创建一个异步的 action，需要在 action creator 中返回一个以 `dispatch` 为参数的函数。 在这个函数中，可以 dispatch action 并执行异步请求。

在此示例中，使用 `setTimeout()` 模拟异步请求。 通常在执行异步行为之前 dispatch action，以便应用程序状态知道正在请求某些数据（例如，这个状态可以显示加载图标）。 然后，一旦收到数据，就会发送另一个 action，该 action 的 data 是请求返回的数据同时也代表 API 操作完成。

请记住，正在将 `dispatch` 作为参数传递给这个特殊的 action creator。 需要 dispatch action 时只需将 action 直接传递给 dispatch，中间件就可以处理其余的部分。

# --instructions--

在 `handleAsync()` 的 action creator 中编写两个 dispatch 事件。 在 `setTimeout()`（模拟 API 调用）之前 dispatch `requestingData()`。 然后在收到（模拟）数据后，dispatch `receivedData()` action，传入这些数据。 现在已经知道如何处理 Redux 中的异步操作， 其他所有操作都继续像以前一样。

# --hints--

`requestingData` action creator 应返回类型和值都为 `REQUESTING_DATA` 的对象。

```js
assert(requestingData().type === REQUESTING_DATA);
```

`receivedData` action creator 应返回类型和值都等于 `RECEIVED_DATA` 的对象。

```js
assert(receivedData('data').type === RECEIVED_DATA);
```

`asyncDataReducer` 必须是个函数。

```js
assert(typeof asyncDataReducer === 'function');
```

分发 `requestingData` 后 action creator 应该将 store 中 `state` 的 fetching 值更新为 `true`。

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(requestingData());
    const reqState = store.getState();
    return initialState.fetching === false && reqState.fetching === true;
  })()
);
```

如果要 dispatch `handleAsync` 应先 dispatch 数据请求的 action，然后在收到请求结果后再 dispatch 接收的数据 action。

```js
assert(
  (function () {
    const noWhiteSpace = __helpers.removeWhiteSpace(handleAsync.toString());
    return (
      noWhiteSpace.includes('dispatch(requestingData())') === true &&
      noWhiteSpace.includes('dispatch(receivedData(data))') === true
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    // Dispatch request action here

    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      // Dispatch received data action here

    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```

# --solutions--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    dispatch(requestingData());
    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      dispatch(receivedData(data));
    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```
