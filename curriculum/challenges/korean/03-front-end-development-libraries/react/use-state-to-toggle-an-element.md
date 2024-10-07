---
id: 5a24c314108439a4d4036176
title: 상태를 사용해서 엘리먼트 토글
challengeType: 6
forumTopicId: 301421
dashedName: use-state-to-toggle-an-element
---

# --description--

Sometimes you might need to know the previous state when updating the state. However, state updates may be asynchronous - this means React may batch multiple `setState()` calls into a single update. This means you can't rely on the previous value of `this.state` or `this.props` when calculating the next value. So, you should not use code like this:

```jsx
this.setState({
  counter: this.state.counter + this.props.increment
});
```

위와 같은 코드 대신에, 상태와 프로퍼티에 접근할 수 있는 함수를 `setState`에 전달해야 합니다. `setState`와 함께 함수를 사용하면, 상태와 프로퍼티의 가장 최신 값을 사용한다고 보장할 수 있습니다. 즉, 위의 예시는 이렇게 작성되었어야 합니다.

```jsx
this.setState((state, props) => ({
  counter: state.counter + props.increment
}));
```

`state`만 필요한 경우 `props` 없이 사용할 수도 있습니다.

```jsx
this.setState(state => ({
  counter: state.counter + 1
}));
```

위의 객체를 괄호로 묶어야 하는 것을 알아두세요, 아니면 자바스크립트는 그냥 코드 블록으로 간주합니다.

# --instructions--

`MyComponent`는 `false` 값으로 초기화된 `visibility` 프로퍼티를 가지고 있습니다. 렌더링 메서드는 `visibility`의 값이 true 혹은 false에 따라 다른 것을 보여줍니다.

지금은 컴포넌트 `상태`의 `visibility` 프로퍼티를 업데이트할 방법이 없습니다. 이 프로퍼티 값이 true와 false로 토글되어야 합니다. 버튼에는 `toggleVisibility()`라는 클래스 메서드를 실행하는 클릭 핸들러가 있습니다. 이 메서드가 호출되었을 때 `visibility`의 `상태`가 반대 값으로 전환되도록 `setState`에 함수를 전달해주세요. `visibility`가 `false`면 이 메서드가 `true`로 설정하고 그 반대로도 마찬가지입니다.

마지막으로 버튼을 클릭해서 `상태`를 기준으로 컴포넌트의 조건부 렌더링을 확인해보세요.

**힌트:** `constructor`에서 메서드에 `this`를 바인딩 하는 것을 잊지마세요!

# --hints--

`MyComponent`는 `button`를 가진 `div` 엘리먼트를 반환해야 합니다.

```js
assert.strictEqual(
  Enzyme.mount(React.createElement(MyComponent)).find('div').find('button')
    .length,
  1
);
```

`MyComponent`의 상태는 `visibility` 프로퍼티 값을 `false`로 초기화 해야 합니다.

```js
assert.strictEqual(
  Enzyme.mount(React.createElement(MyComponent)).state('visibility'),
  false
);
```

버튼 요소를 클릭하면 상태의 `visibility` 속성이 `true`와 `false` 사이에서 토글되어, `h1` 요소가 조건부로 렌더링되어야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ visibility: false });
    return mockedComponent.state('visibility');
  };
  const second = () => {
    mockedComponent.find('button').simulate('click');
    return mockedComponent.state('visibility') && mockedComponent.find('h1').exists();
  };
  const third = () => {
    mockedComponent.find('button').simulate('click');
    return mockedComponent.state('visibility') && mockedComponent.find('h1').exists();
  };
  const firstValue = first();
  const secondValue = second();
  const thirdValue = third();
  assert(!firstValue && secondValue && !thirdValue);
})();
```

익명 함수가 `setState`로 전달되어야 합니다.

```js
const paramRegex = '[a-zA-Z$_]\\w*(,[a-zA-Z$_]\\w*)?';
assert(
  new RegExp(
    'this\\.setState\\((function\\(' +
      paramRegex +
      '\\){|([a-zA-Z$_]\\w*|\\(' +
      paramRegex +
      '\\))=>)'
  ).test(__helpers.removeWhiteSpace(code))
);
```

`setState` 안에서 `this`는 사용되지 말아야 합니다.

```js
assert(!/this\.setState\([^}]*this/.test(code));
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyComponent />, document.getElementById('root'));
```

## --seed-contents--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      visibility: false
    };
    // Change code below this line

    // Change code above this line
  }
  // Change code below this line

  // Change code above this line
  render() {
    if (this.state.visibility) {
      return (
        <div>
          <button onClick={this.toggleVisibility}>Click Me</button>
          <h1>Now you see me!</h1>
        </div>
      );
    } else {
      return (
        <div>
          <button onClick={this.toggleVisibility}>Click Me</button>
        </div>
      );
    }
  }
}
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      visibility: false
    };
    this.toggleVisibility = this.toggleVisibility.bind(this);
  }
  toggleVisibility() {
    this.setState(state => ({
      visibility: !state.visibility
    }));
  }
  render() {
    if (this.state.visibility) {
      return (
        <div>
          <button onClick={this.toggleVisibility}>Click Me</button>
          <h1>Now you see me!</h1>
        </div>
      );
    } else {
      return (
        <div>
          <button onClick={this.toggleVisibility}>Click Me</button>
        </div>
      );
    }
  }
}
```
