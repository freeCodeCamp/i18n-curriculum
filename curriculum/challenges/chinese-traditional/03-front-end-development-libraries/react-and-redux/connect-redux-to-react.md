---
id: 5a24c314108439a4d4036147
title: 連接 Redux 和 React
challengeType: 6
forumTopicId: 301426
dashedName: connect-redux-to-react
---

# --description--

Now that you've written both the `mapStateToProps()` and the `mapDispatchToProps()` functions, you can use them to map `state` and `dispatch` to the `props` of one of your React components. The `connect` method from React Redux can handle this task. This method takes two optional arguments, `mapStateToProps()` and `mapDispatchToProps()`. They are optional because you may have a component that only needs access to `state` but doesn't need to dispatch any actions, or vice versa.

爲了使用此方法，需要傳入函數參數並在調用時傳入組件。 這種語法有些不尋常，如下所示：

```js
connect(mapStateToProps, mapDispatchToProps)(MyComponent)
```

**注意：**如果要省略 `connect` 方法中的某個參數，則應當用 `null` 替換這個參數。

# --instructions--

代碼編輯器具有 `mapStateToProps()` 和 `mapDispatchToProps()` 函數，以及一個名爲 `Presentational` 的新 React 組件。 使用 `ReactRedux` 全局對象中的 `connect` 方法將此組件連接到 Redux，並立即在 `Presentational` 組件上調用它。 將結果賦值給名爲 `ConnectedComponent` 的新 `const`，表示連接的組件。 就是這樣，現在你已經連接到 Redux 了！ 嘗試將 `connect` 的參數更改爲 `null`，並觀察測試結果。

# --hints--

應渲染 `Presentational` 組件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return mockedComponent.find('Presentational').length === 1;
  })()
);
```

`Presentational` 組件應通過 `connect` 接收一個 `messages` 屬性。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return props.messages === '__INITIAL__STATE__';
  })()
);
```

`Presentational` 組件應通過 `connect` 接收一個 `submitNewMessage` 屬性。

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
