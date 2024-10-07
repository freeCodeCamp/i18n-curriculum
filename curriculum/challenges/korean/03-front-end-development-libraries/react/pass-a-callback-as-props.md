---
id: 5a24c314108439a4d403617b
title: Props로 콜백 전달하기
challengeType: 6
forumTopicId: 301400
dashedName: pass-a-callback-as-props
---

# --description--

You can pass `state` as props to child components, but you're not limited to passing data. You can also pass handler functions or any method that's defined on a React component to a child component. This is how you allow child components to interact with their parent components. You pass methods to a child just like a regular prop. It's assigned a name and you have access to that method name under `this.props` in the child component.

# --instructions--

코드 편집기에 세 개의 컴포넌트가 있습니다. `MyApp`은 부모 컴포넌트로 자식 컴포넌트인 `GetInput`과 `RenderInput`을 렌더링 해줄 겁니다. `MyApp` 렌더링 메서드에 `GetInput` 컴포넌트를 추가해주고, `MyApp`의 `상태`인 `inputValue`를 `input`이라는 프로퍼티를 통해 전달해보세요. 그리고 `handleChange`라는 프로퍼티를 만들어서 `handleChange` 핸들러는 전달해주세요.

그런 다음 `MyApp` 렌더링 메서드에 `RenderInput` 컴포넌트를 추가해주고, `상태`의 `inputValue`를 `input`이라는 프로퍼티로 전달해보세요. 위의 도전을 마치면 `GetInput` 컴포넌트의 `input` 필드에 입력할 수 있을 것이고, 입력이 되면 프로퍼티를 통해 부모의 핸들러 메서드를 호출하게 됩니다. 그러면 부모의 `상태`의 값을 업데이트하고, 두 개의 자식 컴포넌트에 전달되는 겁니다. 데이터가 컴포넌트 간에 어떻게 흐르고 있는지, 어떻게 부모 컴포넌트의 상태`(state)`가 믿음직스런 하나의 출처(single source of truth)로 남을 수 있는지 관찰해보세요. 예시가 조금 부자연스러워 보일 수 있지만, 리액트 컴포넌트 간에 데이터와 콜백이 어떻게 전달되는지 알아보기위한 예시였습니다.

# --hints--

`MyApp` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyApp));
    return mockedComponent.find('MyApp').length === 1;
  })()
);
```

`GetInput` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyApp));
    return mockedComponent.find('GetInput').length === 1;
  })()
);
```

`RenderInput` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyApp));
    return mockedComponent.find('RenderInput').length === 1;
  })()
);
```

`GetInput` 컴포넌트는 `MyApp` 상태 프로퍼티 `inputValue`를 props로 전달받아야 되고, `MyApp`의 상태를 수정할 수 있는 `input` 엘리먼트를 가지고 있어야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyApp));
  const state_1 = () => {
    mockedComponent.setState({ inputValue: '' });
    return waitForIt(() => mockedComponent.state());
  };
  const state_2 = () => {
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'TestInput' } });
    return waitForIt(() => mockedComponent.state());
  };
  const updated_1 = await state_1();
  const updated_2 = await state_2();
  assert(updated_1.inputValue === '' && updated_2.inputValue === 'TestInput');
};
```

`RenderInput` 컴포넌트는 `MyApp`의 상태 프로퍼티인 `inputValue`를 props로 받아야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyApp));
  const state_1 = () => {
    mockedComponent.setState({ inputValue: 'TestName' });
    return waitForIt(() => mockedComponent);
  };
  const updated_1 = await state_1();
  assert(updated_1.find('p').text().includes('TestName'));
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyApp />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class MyApp extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputValue: ''
    }
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({
      inputValue: event.target.value
    });
  }
  render() {
    return (
       <div>
        { /* Change code below this line */ }

        { /* Change code above this line */ }
       </div>
    );
  }
};

class GetInput extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>Get Input:</h3>
        <input
          value={this.props.input}
          onChange={this.props.handleChange}/>
      </div>
    );
  }
};

class RenderInput extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>Input Render:</h3>
        <p>{this.props.input}</p>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class MyApp extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      inputValue: ''
    }
  this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({
      inputValue: event.target.value
    });
  }
  render() {
    return (
       <div>
         <GetInput
           input={this.state.inputValue}
           handleChange={this.handleChange}/>
         <RenderInput
           input={this.state.inputValue}/>
       </div>
    );
  }
};

class GetInput extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>Get Input:</h3>
        <input
          value={this.props.input}
          onChange={this.props.handleChange}/>
      </div>
    );
  }
};

class RenderInput extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>Input Render:</h3>
        <p>{this.props.input}</p>
      </div>
    );
  }
};
```
