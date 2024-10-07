---
id: 5a24c314108439a4d4036147
title: 리액트에 리덕스(Redux) 연결하기
challengeType: 6
forumTopicId: 301426
dashedName: connect-redux-to-react
---

# --description--

Now that you've written both the `mapStateToProps()` and the `mapDispatchToProps()` functions, you can use them to map `state` and `dispatch` to the `props` of one of your React components. The `connect` method from React Redux can handle this task. This method takes two optional arguments, `mapStateToProps()` and `mapDispatchToProps()`. They are optional because you may have a component that only needs access to `state` but doesn't need to dispatch any actions, or vice versa.

이 메소드를 사용하려면 함수를 인자로 전달하고 컴포넌트로 결과를 즉시 호출해야 합니다. 이 문법은 약간 특이하며 다음과 같이 생겼습니다:

```js
connect(mapStateToProps, mapDispatchToProps)(MyComponent)
```

**참고:** ` connect`메소드의 인자 중 하나를 생략하려면 그 자리에 `null`를 전달하면 됩니다.

# --instructions--

코드 에디터에는 `mapStateToProps()` 및 `mapDispatchToProps()` 함수와 새로운 리액트 컴포넌트인 `Presentational`가 있습니다. 이 컴포넌트를 `ReactRedux` 전역 객체(global object)의 `connect` 메소드를 사용하여 리덕스에 연결하고, `Presentational` 컴포넌트에서 즉시 호출하세요. 결과를 연결된 컴포넌트를 나타내는 `ConnectedComponent`라는 새 `const`에 할당하세요. 이제 리덕스에 연결되었습니다! `connect`의 인자 중 하나를 `null`로 변경하고 테스트 결과를 관찰해보세요.

# --hints--

`Presentational` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return mockedComponent.find('Presentational').length === 1;
  })()
);
```

`Presentational` 컴포넌트는 `connect`를 통해 prop인 `messages`를 받아야합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return props.messages === '__INITIAL__STATE__';
  })()
);
```

`Presentational` 컴포넌트는 `connect`를 통해 prop인 `submitNewMessage`를 받아야합니다.

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
