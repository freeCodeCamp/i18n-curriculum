---
id: 5a24c314108439a4d4036144
title: Provider를 사용하여 Redux를 React에 연결하기
challengeType: 6
forumTopicId: 301435
dashedName: use-provider-to-connect-redux-to-react
---

# --description--

In the last challenge, you created a Redux store to handle the messages array and created an action for adding new messages. The next step is to provide React access to the Redux store and the actions it needs to dispatch updates. React Redux provides its `react-redux` package to help accomplish these tasks.

React Redux는 `Provider`와 `connect`의 두가지 핵심 기능을 갖춘 작은 API를 제공합니다. 다른 챌린지는 `connect`에 대해 다룰 것 입니다. `Provider`는 React를 감싸는 React Redux의 래퍼(wrapper) 컴포넌트 입니다. 이 래퍼는 컴포넌트 트리 전체에서 Redux `store`와 `dispatch`함수에 엑세스 할 수 있게 합니다. `Provider`는 Redux 저장소와 어플리케이션의 자식 컴포넌트의 두가지 매개변수를 받습니다. 앱 컴포넌트를 위해 `Provider`를 정의하는 것은 다음과 같이 할 수 있습니다:

```jsx
<Provider store={store}>
  <App/>
</Provider>
```

# --instructions--

이제 코드 에디터에 지난 여러 챌린지들의 모든 Redux와 React 코드가 표시됩니다. 이에 Redux 저장소, 액션, `DisplayMessages` 컴포넌트가 포함되어 있습니다. 가장 아래의 `AppWrapper` 컴포넌트가 유일하게 새로운 조각입니다. 이 최상위 컴포넌트를 사용하여 `ReactRedux`에서 `Provider`를 렌더링하고 Redux 저장소를 매개변수로 전달합니다. 이후 `DisplayMessages` 컴포넌트를 자식으로 렌더링하세요. 모든 작업이 완료되면 페이지에 React 컴포넌트가 렌더링된 것을 볼 수 있을 것 입니다.

**Note:** React Redux는 여기서 전역 변수로 사용할 수 있으므로 점 표기법으로 Provider에 액세스할 수 있습니다. 에디터의 코드는 이를 활용하여 `AppWrapper` 렌더링 메서드에서 사용할 수 있도록 상수 `Provider`로 설정합니다.

# --hints--

`AppWrapper`가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return mockedComponent.find('AppWrapper').length === 1;
  })()
);
```

`Provider` 래퍼 컴포넌트에는 Redux 저장소와 동일한 `store` 매개변수가 전달되어야 합니다.

```js
() =>
  assert(
    (function () {
      const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
      return __helpers
        .removeWhiteSpace(code)
        .includes('<Providerstore={store}>');
    })()
  );
```

`DisplayMessages`는 `AppWrapper`의 자식으로 렌더링되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return (
      mockedComponent.find('AppWrapper').find('DisplayMessages').length === 1
    );
  })()
);
```

`DisplayMessages` 컴포넌트는 `h2`, `input`, `button`, `ul` 요소를 각각 하나씩 렌더링해야합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h2').length === 1 &&
      mockedComponent.find('button').length === 1 &&
      mockedComponent.find('ul').length === 1
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<AppWrapper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
// Redux:
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

// React:

class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
    this.handleChange = this.handleChange.bind(this);
    this.submitMessage = this.submitMessage.bind(this);
  }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  submitMessage() {  
    this.setState((state) => {
      const currentMessage = state.input;
      return {
        input: '',
        messages: state.messages.concat(currentMessage)
      };
    });
  }
  render() {
    return (
      <div>
        <h2>Type in a new Message:</h2>
        <input
          value={this.state.input}
          onChange={this.handleChange}/><br/>
        <button onClick={this.submitMessage}>Submit</button>
        <ul>
          {this.state.messages.map( (message, idx) => {
              return (
                 <li key={idx}>{message}</li>
              )
            })
          }
        </ul>
      </div>
    );
  }
};

const Provider = ReactRedux.Provider;

class AppWrapper extends React.Component {
  // Render the Provider below this line

  // Change code above this line
};
```

# --solutions--

```jsx
// Redux:
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

// React:

class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
 this.handleChange = this.handleChange.bind(this);
 this.submitMessage = this.submitMessage.bind(this);
 }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  submitMessage() {
    this.setState((state) => {
      const currentMessage = state.input;
      return {
        input: '',
        messages: state.messages.concat(currentMessage)
      };  
    });
  }
  render() {
    return (
      <div>
        <h2>Type in a new Message:</h2>
        <input
          value={this.state.input}
          onChange={this.handleChange}/><br/>
        <button onClick={this.submitMessage}>Submit</button>
        <ul>
          {this.state.messages.map( (message, idx) => {
              return (
                 <li key={idx}>{message}</li>
              )
            })
          }
        </ul>
      </div>
    );
  }
};

const Provider = ReactRedux.Provider;

class AppWrapper extends React.Component {
  // Change code below this line
  render() {
    return (
      <Provider store = {store}>
        <DisplayMessages/>
      </Provider>
    );
  }
  // Change code above this line
};
```
