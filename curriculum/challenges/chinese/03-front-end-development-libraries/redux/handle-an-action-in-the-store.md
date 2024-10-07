---
id: 5a24c314108439a4d4036150
title: 在 Store 里处理 Action
challengeType: 6
forumTopicId: 301444
dashedName: handle-an-action-in-the-store
---

# --description--

After an action is created and dispatched, the Redux store needs to know how to respond to that action. This is the job of a `reducer` function. Reducers in Redux are responsible for the state modifications that take place in response to actions. A `reducer` takes `state` and `action` as arguments, and it always returns a new `state`. It is important to see that this is the **only** role of the reducer. It has no side effects — it never calls an API endpoint and it never has any hidden surprises. The reducer is simply a pure function that takes state and action, then returns new state.

Redux 的另一个关键原则是 `state` 是只读的。 换句话说，`reducer` 函数必须**始终**返回一个新的 `state`，并且永远不会直接修改状态。 Redux 不强制改变状态，但是需要在 reducer 函数的代码中强制执行它， 以后的挑战会练习这一点。

# --instructions--

代码编辑器中具有前面的示例以及一个 `reducer` 函数。 需要完善 `reducer` 函数的内容，使得它如果收到类型为`'LOGIN'`的action，它将返回一个将 `login` 设置为 `true` 的 state 对象。 否则，它就返回当前的 `state`。 请注意，当前 `state` 和 dispatch 的 `action` 将被传递给 reducer，因此可以使用 `action.type` 直接获取 action 的类型。

# --hints--

调用函数 `loginAction` 应该返回一个 type 属性设置为字符串 `LOGIN` 的对象。

```js
assert(loginAction().type === 'LOGIN');
```

store 应该用属性 `login` 设置为 `false` 的对象初始化。

```js
assert(store.getState().login === false);
```

dispatch `loginAction` 后应将 store 中 state 的 `login` 值更新为 `true`。

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(loginAction());
    const afterState = store.getState();
    return initialState.login === false && afterState.login === true;
  })()
);
```

如果 action 的类型不是 `LOGIN`，那么 store 应返回当前的 state。

```js
assert(
  (function () {
    store.dispatch({ type: '__TEST__ACTION__' });
    let afterTest = store.getState();
    return typeof afterTest === 'object' && afterTest.hasOwnProperty('login');
  })()
);
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```

# --solutions--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {

  if (action.type === 'LOGIN') {
    return {login: true}
  }

  else {
    return state
  }

};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```
