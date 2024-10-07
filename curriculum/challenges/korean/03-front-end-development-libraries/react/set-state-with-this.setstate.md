---
id: 5a24c314108439a4d4036173
title: this.setState로 상태 설정하기
challengeType: 6
forumTopicId: 301412
dashedName: set-state-with-this-setstate
---

# --description--

The previous challenges covered component `state` and how to initialize state in the `constructor`. There is also a way to change the component's `state`. React provides a method for updating component `state` called `setState`. You call the `setState` method within your component class like so: `this.setState()`, passing in an object with key-value pairs. The keys are your state properties and the values are the updated state data. For instance, if we were storing a `username` in state and wanted to update it, it would look like this:

```jsx
this.setState({
  username: 'Lewis'
});
```

리액트는 상태를 변경할 때 직접 `state`를 수정하지 않고, 항상 `this.setState()`를 사용하기를 바랍니다. 또한, 리액트는 성능의 향상을 위해 여러 상태를 일괄 처리할 수 있습니다. 이 말은 `setState`에 의한 상태 업데이트가 비동기적으로 일어날 수 있다는 것입니다. 이 문제를 해결하기 위한 `setState`의 다른 문법이 있습니다. 거의 필요하진 않지만, 알아 두는 것도 좋습니다. 자세한 내용은 여기 <a href="https://www.freecodecamp.org/news/what-is-state-in-react-explained-with-examples/" target="_blank" rel="noopener noreferrer nofollow">리액트 기사</a>를 참고하세요.

# --instructions--

코드 편집기에 `onClick()` 핸들러를 가진 `button` 엘리먼트가 있습니다. 이 핸들러는 `button`이 브라우저에서 클릭 이벤트를 받으면 실행되며, `MyComponent`에 정의된 `handleClick` 메서드를 실행합니다. `handleClick` 메서드 내에서, `this.setState()`를 이용해서 컴포넌트의 `state`를 업데이트 해보세요. `state`에 `name` 프로퍼티의 문자열을 `React Rocks!`로 설정해보세요.

버튼을 클릭해서 렌더링된 상태의 변경사항을 확인해보세요. 클릭 핸들러 코드가 어떻게 작동하는지 완전히 이해하지 못하더라도 지금은 걱정하지 마세요. 이 후 다른 도전들에서 알아볼겁니다.

# --hints--

`MyComponent`의 상태는 키와 값의 쌍으로 초기화 되어야 합니다 `{ name: Initial State }`

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).state('name') ===
    'Initial State'
);
```

`MyComponent`는 하나의 `h1` 제목 엘리먼트를 렌더링해야 합니다.

```js
assert(Enzyme.mount(React.createElement(MyComponent)).find('h1').length === 1);
```

렌더링된 `h1` 제목 엘리먼트는 컴포넌트의 상태에서 가져온 텍스트가 포함되어야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ name: 'TestName' });
    return waitForIt(() => mockedComponent.html());
  };
  const firstValue = await first();
  assert(/<h1>TestName<\/h1>/.test(firstValue));
};
```

`MyComponent`에서 `handleClick`를 호출하면 상태의 `name` 프로퍼티가 `React Rocks!`로 설정되어야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ name: 'Before' });
    return waitForIt(() => mockedComponent.state('name'));
  };
  const second = () => {
    mockedComponent.instance().handleClick();
    return waitForIt(() => mockedComponent.state('name'));
  };
  const firstValue = await first();
  const secondValue = await second();
  assert(firstValue === 'Before' && secondValue === 'React Rocks!');
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'Initial State'
    };
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick() {
    // Change code below this line

    // Change code above this line
  }
  render() {
    return (
      <div>
        <button onClick={this.handleClick}>Click Me</button>
        <h1>{this.state.name}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'Initial State'
    };
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick() {
     // Change code below this line
    this.setState({
      name: 'React Rocks!'
    });
    // Change code above this line
  }
  render() {
    return (
      <div>
        <button onClick = {this.handleClick}>Click Me</button>
        <h1>{this.state.name}</h1>
      </div>
    );
  }
};
```
