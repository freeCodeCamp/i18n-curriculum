---
id: 5a24c314108439a4d4036178
title: 제어된 인풋(Input) 만들기
challengeType: 6
forumTopicId: 301385
dashedName: create-a-controlled-input
---

# --description--

Your application may have more complex interactions between `state` and the rendered UI. For example, form control elements for text input, such as `input` and `textarea`, maintain their own state in the DOM as the user types. With React, you can move this mutable state into a React component's `state`. The user's input becomes part of the application `state`, so React controls the value of that input field. Typically, if you have React components with input fields the user can type into, it will be a controlled input form.

# --instructions--

코드 편집기에 제어된 `input`을 만들기 위한 `ControlledInput` 컴포넌트 뼈대가 있습니다. 컴포넌트의 `상태`는 빈 문자열을 갖는 `input` 프로퍼티로 초기화되어 있습니다. 프로퍼티의 값은 사용자가 `input` 필드에 입력하는 텍스트입니다.

우선 `event`라는 매개변수(parameter)를 갖는 `handleChange()` 메서드를 만들어보세요. 이 메서드가 호출되면, `input` 엘리먼트의 텍스트를 가진 `event` 객체를 받습니다. `event.target.value`로 메서드안에서 문자열에 접근할 수 있습니다. 컴포넌트의 `상태`인 `input` 프로퍼티를 새 문자열로 업데이트 해보세요.

`render` 메서드 안에 `input`를 `h4` 태그 위에 만들어보세요. `value` 속성을 추가해서, 컴포넌트 `상태`의 `input` 프로퍼티로 설정해보세요. 그런 다음 `onChange` 속성을 `handleChange()` 이벤트 핸들러 메서드로 설정하세요.

입력란에 입력을 하면, 해당 텍스트는 `handleChange()` 메서드로 처리되고, 로컬 `상태`의 `input` 프로퍼티로 설정되어 `input`의 값으로 렌더링되어 페이지에 보여지게 됩니다. 이렇게 함으로써 컴포넌트의 `상태`는 input 데이터의 믿음직스러운 유일한 출처가 됩니다(정확하게는 'single source of truth'라고 합니다.)

마지막으로 생성자(constructor)에 필요한 바인딩을 추가하는 것을 잊지마세요.

# --hints--

`ControlledInput`는 `input`과 `p`태그를 가진 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(ControlledInput))
    .find('div')
    .children()
    .find('input').length === 1 &&
    Enzyme.mount(React.createElement(ControlledInput))
      .find('div')
      .children()
      .find('p').length === 1
);
```

`ControlledInput`의 상태는 `input` 프로퍼티를 빈 문자열로 초기화해야 합니다.

```js
assert.strictEqual(
  Enzyme.mount(React.createElement(ControlledInput)).state('input'),
  ''
);
```

입력을 하면 상태와 input 값을 업데이트하고, `p` 엘리먼트가 이 상태를 렌더링해야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(ControlledInput));
  const _1 = () => {
    mockedComponent.setState({ input: '' });
    return waitForIt(() => mockedComponent.state('input'));
  };
  const _2 = () => {
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'TestInput' } });
    return waitForIt(() => ({
      state: mockedComponent.state('input'),
      text: mockedComponent.find('p').text(),
      inputVal: mockedComponent.find('input').props().value
    }));
  };
  const before = await _1();
  const after = await _2();
  assert(
    before === '' &&
      after.state === 'TestInput' &&
      after.text === 'TestInput' &&
      after.inputVal === 'TestInput'
  );
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<ControlledInput />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class ControlledInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    // Change code below this line

    // Change code above this line
  }
  // Change code below this line

  // Change code above this line
  render() {
    return (
      <div>
        { /* Change code below this line */}

        { /* Change code above this line */}
        <h4>Controlled Input:</h4>
        <p>{this.state.input}</p>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class ControlledInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  render() {
    return (
      <div>
        <input
          value={this.state.input}
          onChange={this.handleChange} />
        <h4>Controlled Input:</h4>

        <p>{this.state.input}</p>
      </div>
    );
  }
};
```
