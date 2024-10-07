---
id: 5a24c314108439a4d4036174
title: 클래스 메서드에 'this' 바인딩하기
challengeType: 6
forumTopicId: 301379
dashedName: bind-this-to-a-class-method
---

# --description--

In addition to setting and updating `state`, you can also define methods for your component class. A class method typically needs to use the `this` keyword so it can access properties on the class (such as `state` and `props`) inside the scope of the method. There are a few ways to allow your class methods to access `this`.

한 가지 일반적인 방법은 `this`를 생성자(constructor)에 명시적으로 연결(바인딩 혹은 bind)해서, 컴포넌트가 초기 실행 될 때 `this`가 클래스 메서드에 연결되도록 해주는 겁니다. 이전 도전에서 생성자의 `handleClick` 메서드에 `this.handleClick = this.handleClick.bind(this)`을 사용한 것을 보셨을 수도 있습니다. 클래스 메서드에서 `this.setState()` 같은 함수를 호출하면, `this`는 클래스를 나타내며 `undefined`가 되지 않습니다.

**참고:** `this` 키워드는 자바스크립트에서 가장 헷갈리는 요소 중 하나지만, 리액트에서 중요한 역할을 합니다. 여기서는 `this`에 대해 심도 있는 학습을 하지 않으니, 위에 내용이 혼란스럽다면 다른 수업들을 참고해주세요.

# --instructions--

코드 편집기에는 `text`를 추적하는 `상태`가 있는 컴포넌트가 있습니다. 또한 text를 `You clicked!`로 설정할 수 있는 메서드도 있습니다. 하지만 `this` 키워드가 정의가 안되어 있어서(undefined) 메서드가 작동하지 않습니다. 컴포넌트의 생성자에 있는 `handleClick()` 메서드에 `this`를 명시적으로 바인딩해서 고쳐보세요.

그런 다음, 클릭 핸들러를, 렌더링 메서드에 있는 `button` 엘리먼트에 추가해보세요. 버튼의 클릭 이벤트가 발생하면 `handleClick()` 메서드가 실행되어야 합니다. `onClick` 핸들러에 전달하는 메서드는 자바스크립트로 처리되어야 하므로 중괄호로 감싸는 것을 잊지마세요.

위의 단계를 완료하면, 버튼을 클릭하고 `You clicked!`를 확인해보세요.

# --hints--

`MyComponent`는 `button`그리고 `h1` 엘리먼트를 순서대로 가진 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).find('div').length === 1 &&
    Enzyme.mount(React.createElement(MyComponent))
      .find('div')
      .childAt(0)
      .type() === 'button' &&
    Enzyme.mount(React.createElement(MyComponent))
      .find('div')
      .childAt(1)
      .type() === 'h1'
);
```

`MyComponent`의 상태는 키와 값의 쌍으로 초기화 되어야 합니다 `{ text: "Hello" }`

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).state('text') === 'Hello'
);
```

`button` 엘리먼트를 클릭하면 `handleClick` 메서드가 실행되고, 상태 `text`를 `You clicked!`로 설정해야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ text: 'Hello' });
    return waitForIt(() => mockedComponent.state('text'));
  };
  const second = () => {
    mockedComponent.find('button').simulate('click');
    return waitForIt(() => mockedComponent.state('text'));
  };
  const firstValue = await first();
  const secondValue = await second();
  assert(firstValue === 'Hello' && secondValue === 'You clicked!');
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
      text: "Hello"
    };
    // Change code below this line

    // Change code above this line
  }
  handleClick() {
    this.setState({
      text: "You clicked!"
    });
  }
  render() {
    return (
      <div>
        { /* Change code below this line */ }
        <button>Click Me</button>
        { /* Change code above this line */ }
        <h1>{this.state.text}</h1>
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
      text: "Hello"
    };
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick() {
    this.setState({
      text: "You clicked!"
    });
  }
  render() {
    return (
      <div>
        <button onClick = {this.handleClick}>Click Me</button>
        <h1>{this.state.text}</h1>
      </div>
    );
  }
};
```
