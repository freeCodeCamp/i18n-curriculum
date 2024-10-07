---
id: 5a24c314108439a4d4036189
title: 컴포넌트의 상태에 따라 인라인 CSS 변경
challengeType: 6
forumTopicId: 301380
dashedName: change-inline-css-conditionally-based-on-component-state
---

# --description--

At this point, you've seen several applications of conditional rendering and the use of inline styles. Here's one more example that combines both of these topics. You can also render CSS conditionally based on the state of a React component. To do this, you check for a condition, and if that condition is met, you modify the styles object that's assigned to the JSX elements in the render method.

이 패러다임은 중요합니다. DOM 엘리먼트를 직접 수정해서 스타일을 적용시키는 전통적인 접근 방법에서 크게 벗어나기 때문입니다.(전통적인 방법은 jQuery에서 흔하게 볼 수 있죠) 전통적인 접근 방법에서는 엘리먼트의 변경을 추적해야 하고, 직접 실제 조작을 처리해야 합니다. 변경 내용을 추적하기 어려워져 UI가 예측 불가능 해질 가능성도 있습니다. 하지만 스타일 객체를 조건에 따라 설정하면, 애플리케이션의 상태의 함수가 어떤 UI로 보이게 될 지 만들어줍니다. 이러면 한 방향으로 움직이는 정보의 흐름이 뚜렷해집니다. 그래서 이 방법이 리액트로 애플리케이션을 만들 때 선호됩니다.

# --instructions--

코드 편집기에는 스타일된 테두리(border)가 있는 간단한 제어된 input 컴포넌트가 있습니다. 사용자가 15자 이상의 텍스트를 input에 입력하면 테두리를 빨강으로 만들고 싶습니다. 이 조건을 추가하고, 조건이 만족되면 테두리 스타일을 `3px solid red`로 설정해보세요. 텍스트를 입력해서 확인해보세요.

# --hints--

`GateKeeper` 컴포넌트는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.find('div').length === 1;
  })()
);
```

`GateKeeper` 컴포넌트는 빈 문자열을 가진 `input` 상태와 초기화되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return mockedComponent.state().input === '';
  })()
);
```

`GateKeeper` 컴포넌트는 하나의 `h3` 태그와 하나의 `input` 태그를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('h3').length === 1 &&
      mockedComponent.find('input').length === 1
    );
  })()
);
```

`input` 태그는 처음에 `border` 속성에 `1px solid black` 스타일을 가져야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
    return (
      mockedComponent.find('input').props().style.border === '1px solid black'
    );
  })()
);
```

`input` 태그는 상태의 `input` 값이 15자를 넘어가면 테두리는 `3px solid red`로 스타일되어야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 100));
  const mockedComponent = Enzyme.mount(React.createElement(GateKeeper));
  const simulateChange = (el, value) =>
    el.simulate('change', { target: { value } });
  let initialStyle = mockedComponent.find('input').props().style.border;
  const state_1 = () => {
    mockedComponent.setState({ input: 'this is 15 char' });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const state_2 = () => {
    mockedComponent.setState({
      input: 'A very long string longer than 15 characters.'
    });
    return waitForIt(() => mockedComponent.find('input').props().style.border);
  };
  const style_1 = await state_1();
  const style_2 = await state_2();
  assert(
    initialStyle === '1px solid black' &&
      style_1 === '1px solid black' &&
      style_2 === '3px solid red'
  );
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<GateKeeper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    // Change code below this line

    // Change code above this line
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```

# --solutions--

```jsx
class GateKeeper extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({ input: event.target.value })
  }
  render() {
    let inputStyle = {
      border: '1px solid black'
    };
    if (this.state.input.length > 15) {
      inputStyle.border = '3px solid red';
    };
    return (
      <div>
        <h3>Don't Type Too Much:</h3>
        <input
          type="text"
          style={inputStyle}
          value={this.state.input}
          onChange={this.handleChange} />
      </div>
    );
  }
};
```
