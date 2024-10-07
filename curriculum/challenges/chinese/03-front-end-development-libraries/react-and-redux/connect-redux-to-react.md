---
id: 5a24c314108439a4d4036147
title: 连接 Redux 和 React
challengeType: 6
forumTopicId: 301426
dashedName: connect-redux-to-react
---

# --description--

Now that you've written both the `mapStateToProps()` and the `mapDispatchToProps()` functions, you can use them to map `state` and `dispatch` to the `props` of one of your React components. The `connect` method from React Redux can handle this task. This method takes two optional arguments, `mapStateToProps()` and `mapDispatchToProps()`. They are optional because you may have a component that only needs access to `state` but doesn't need to dispatch any actions, or vice versa.

为了使用此方法，需要传入函数参数并在调用时传入组件。 这种语法有些不寻常，如下所示：

```js
connect(mapStateToProps, mapDispatchToProps)(MyComponent)
```

**注意：**如果要省略 `connect` 方法中的某个参数，则应当用 `null` 替换这个参数。

# --instructions--

代码编辑器具有 `mapStateToProps()` 和 `mapDispatchToProps()` 函数，以及一个名为 `Presentational` 的新 React 组件。 使用 `ReactRedux` 全局对象中的 `connect` 方法将此组件连接到 Redux，并立即在 `Presentational` 组件上调用它。 将结果赋值给名为 `ConnectedComponent` 的新 `const`，表示连接的组件。 就是这样，现在你已经连接到 Redux 了！ 尝试将 `connect` 的参数更改为 `null`，并观察测试结果。

# --hints--

应渲染 `Presentational` 组件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return mockedComponent.find('Presentational').length === 1;
  })()
);
```

`Presentational` 组件应通过 `connect` 接收一个 `messages` 属性。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return props.messages === '__INITIAL__STATE__';
  })()
);
```

`Presentational` 组件应通过 `connect` 接收一个 `submitNewMessage` 属性。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return typeof props.submitNewMessage === 'function';
  })()
);
```

# --seed--

## --after-user-code--

```jsx
const store = Redux.createStore(
  (state = '__INITIAL__STATE__', action) => state
);
class AppWrapper extends React.Component {
  render() {
    return (
      <ReactRedux.Provider store = {store}>
        <ConnectedComponent/>
      </ReactRedux.Provider>
    );
  }
};
ReactDOM.render(<AppWrapper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: (message) => {
      dispatch(addMessage(message));
    }
  }
};

class Presentational extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <h3>This is a Presentational Component</h3>
  }
};

const connect = ReactRedux.connect;
// Change code below this line
```

# --solutions--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: (message) => {
      dispatch(addMessage(message));
    }
  }
};

class Presentational extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <h3>This is a Presentational Component</h3>
  }
};

const connect = ReactRedux.connect;
// Change code below this line

const ConnectedComponent = connect(mapStateToProps, mapDispatchToProps)(Presentational);
```
