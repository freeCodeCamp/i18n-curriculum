---
id: 5a24c314108439a4d4036142
title: 로컬 상태 먼저 관리하기
challengeType: 6
forumTopicId: 301431
dashedName: manage-state-locally-first
---

# --description--

Here you'll finish creating the `DisplayMessages` component.

# --instructions--

첫째, `render()` 메서드에서 컴포넌트가 `input` 요소, `button` 요소 및 `ul` 요소를 렌더링하도록 하십시오. `input` 요소가 변경되면 `handleChange()` 메서드가 트리거되어야 합니다. 또한, `input` 요소는 컴포넌트의 상태에 있는 `input` 값을 렌더링해야 합니다. `button` 요소를 클릭하면 `submitMessage()` 메서드가 트리거되어야 합니다.

둘째, 이 두 메서드를 작성하십시오. `handleChange()` 메서드는 사용자가 입력하는 내용으로 `input`을 업데이트해야 합니다. `submitMessage()` 메서드는 현재 메시지(상태의 `input`에 저장된)를 로컬 상태의 `messages` 배열에 더하고 `input`에 있는 값은 지워야 합니다.

마지막으로, `ul`을 사용하여 `messages` 배열을 매핑(mapping)하고 화면에 `li` 요소 목록으로 렌더링하십시오.

# --hints--

`DisplayMessages` 컴포넌트는 `{ input: "", messages: [] }`와 같은 상태로 초기화되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      initialState.messages.length === 0
    );
  })()
);
```

`DisplayMessages` 컴포넌트는 `div` 요소를 렌더링해야 하며, 그 안에는 `h2` 요소, `button` 요소, `ul` 요소 및 `li` 요소가 자식 요소로 포함되어 있어야 합니다.

```js
() => {
  const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
  const state = () => {
    mockedComponent.setState({ messages: ['__TEST__MESSAGE'] });
    return mockedComponent;
  };
  const updated = state();
  assert(
    updated.find('div').length === 1 &&
      updated.find('h2').length === 1 &&
      updated.find('button').length === 1 &&
      updated.find('ul').length === 1 &&
      updated.find('li').length > 0
  );
};
```

`messages` 배열에서 `.map`을 사용해야 합니다.

```js
assert(code.match(/this\.state\.messages\.map/g));
```

`input` 요소는 로컬 상태의 `input` 값을 렌더링해야 합니다.

```js
() => {
  const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
  const causeChange = (c, v) =>
    c.find('input').simulate('change', { target: { value: v } });
  const testValue = '__TEST__EVENT__INPUT';
  const changed = () => {
    causeChange(mockedComponent, testValue);
    return mockedComponent;
  };
  const updated = changed();
  assert(updated.find('input').props().value === testValue);
};
```

`handleChange` 메서드를 호출하면 상태의 `input` 값을 현재 입력 요소에 업데이트해야 합니다.

```js
() => {
  const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
  const causeChange = (c, v) =>
    c.find('input').simulate('change', { target: { value: v } });
  const initialState = mockedComponent.state();
  const testMessage = '__TEST__EVENT__MESSAGE__';
  const changed = () => {
    causeChange(mockedComponent, testMessage);
    return mockedComponent;
  };
  const afterInput = changed();
  assert(
    initialState.input === '' &&
      afterInput.state().input === '__TEST__EVENT__MESSAGE__'
  );
};
```

`Add message` 버튼을 클릭하면 `submitMessage` 메서드가 호출되어야 하며, 이는 현재 `input`을 상태의 `messages` 배열에 추가해야 합니다.

```js
() => {
  const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
  const causeChange = (c, v) =>
    c.find('input').simulate('change', { target: { value: v } });
  const initialState = mockedComponent.state();
  const testMessage_1 = '__FIRST__MESSAGE__';
  const firstChange = () => {
    causeChange(mockedComponent, testMessage_1);
    return mockedComponent;
  };
  const firstResult = firstChange();
  const firstSubmit = () => {
    mockedComponent.find('button').simulate('click');
    return mockedComponent;
  };
  const afterSubmit_1 = firstSubmit();
  const submitState_1 = afterSubmit_1.state();
  const testMessage_2 = '__SECOND__MESSAGE__';
  const secondChange = () => {
    causeChange(mockedComponent, testMessage_2);
    return mockedComponent;
  };
  const secondResult = secondChange();
  const secondSubmit = () => {
    mockedComponent.find('button').simulate('click');
    return mockedComponent;
  };
  const afterSubmit_2 = secondSubmit();
  const submitState_2 = afterSubmit_2.state();
  assert(
    initialState.messages.length === 0 &&
      submitState_1.messages.length === 1 &&
      submitState_2.messages.length === 2 &&
      submitState_2.messages[1] === testMessage_2
  );
};
```

`submitMessage` 메서드는 현재 입력 요소의 내용을 지워야 합니다.

```js
() => {
  const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
  const causeChange = (c, v) =>
    c.find('input').simulate('change', { target: { value: v } });
  const initialState = mockedComponent.state();
  const testMessage = '__FIRST__MESSAGE__';
  const firstChange = () => {
    causeChange(mockedComponent, testMessage);
    return mockedComponent;
  };
  const firstResult = firstChange();
  const firstState = firstResult.state();
  const firstSubmit = () => {
    mockedComponent.find('button').simulate('click');
    return mockedComponent;
  };
  const afterSubmit = firstSubmit();
  const submitState = afterSubmit.state();
  assert(firstState.input === testMessage && submitState.input === '');
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  // Add handleChange() and submitMessage() methods here

  render() {
    return (
      <div>
        <h2>Type in a new Message:</h2>
        { /* Render an input, button, and ul below this line */ }

        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
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
```
