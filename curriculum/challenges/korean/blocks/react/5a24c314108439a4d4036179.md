---
id: 5a24c314108439a4d4036179
title: 제어된 폼(Form) 만들기
challengeType: 6
forumTopicId: 301384
dashedName: create-a-controlled-form
---

# --description--

The last challenge showed that React can control the internal state for certain elements like `input` and `textarea`, which makes them controlled components. This applies to other form elements as well, including the regular HTML `form` element.

# --instructions--

`MyForm` 컴포넌트에는 제출(submit) 핸들러가 있는 빈 `form`이 있습니다. 이 제출 핸들러는 폼이 제출되면 호출됩니다.

폼을 제출하는 버튼을 추가해두었습니다. 이 버튼은 폼의 제어를 뜻하는 `type`에 `submit`으로 설정되어 있습니다. `form`에 `input` 엘리먼트를 추가하고, 이전 도전과 같이 `value`와 `onChange()` 속성을 설정해보세요. 그런 다음 `handleSubmit` 메서드를 완성해서, input의 로컬 `상태`값을 컴포넌트의 프로퍼티인 `submit` 값으로 설정되도록 해보세요.

**참고:** 폼을 제출할 때 기본 동작인 웹 페이지 새로고침을 방지하려면 `event.preventDefault()`을 호출해야 합니다. FreeCode캠퍼들의 편의를 위해서, 새로고침되어 코드가 리셋되는 기본동작을 방지해두었습니다.

마지막으로, `form` 다음에 `h1` 태그를 만들어보세요. 이 태그는 컴포넌트의 `상태`의 `submit` 값을 렌더링해야 합니다. 그런 다음 폼에 입력을 하고 버튼을 클릭하거나 엔터를 눌러서, 입력된 값이 페이지에 렌더링되는 것을 확인해보세요.

# --hints--

`MyForm`은 `form`과 `h1`태그를 가진 `div` 엘리먼트를 반환해야 합니다. 폼은 `input`과 `button`을 가지고 있어야 합니다.

```js
assert(
  (() => {
    const mockedComponent = Enzyme.mount(React.createElement(MyForm));
    return (
      mockedComponent.find('div').children().find('form').length === 1 &&
      mockedComponent.find('div').children().find('h1').length === 1 &&
      mockedComponent.find('form').children().find('input').length === 1 &&
      mockedComponent.find('form').children().find('button').length === 1
    );
  })()
);
```

`MyForm`의 상태는 `input`과 `submit` 프로퍼티를 빈 문자열로 초기화해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(MyForm)).state('input') === '' &&
    Enzyme.mount(React.createElement(MyForm)).state('submit') === ''
);
```

`input` 엘리먼트에 입력을 하면 컴포넌트 상태의 `input` 프로퍼티를 업데이트 해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyForm));
  const _1 = () => {
    mockedComponent.setState({ input: '' });
    return mockedComponent.state('input');
  };
  const _2 = () => {
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'TestInput' } });
    return {
      state: mockedComponent.state('input'),
      inputVal: mockedComponent.find('input').props().value
    };
  };
  const before = _1();
  const after = _2();
  assert(
    before === '' &&
      after.state === 'TestInput' &&
      after.inputVal === 'TestInput'
  );
})();
```

폼을 제출하면 `handleSubmit`을 실행되고, 상태의 `submit` 프로퍼티는 현재 입력값으로 설정되어야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyForm));
  const _1 = () => {
    mockedComponent.setState({ input: '' });
    mockedComponent.setState({ submit: '' });
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'SubmitInput' } });
    return mockedComponent.state('submit');
  };
  const _2 = () => {
    mockedComponent.find('form').simulate('submit');
    return mockedComponent.state('submit');
  };
  const before = _1();
  const after = _2();
  assert(before === '' && after === 'SubmitInput');
})();
```

`handleSubmit`은 `event.preventDefault`를 호출해야 합니다.

```js
assert(
  __helpers.isCalledWithNoArgs(
    'event.preventDefault',
    MyForm.prototype.handleSubmit.toString()
  )
);
```

`h1` 제목 엘리먼트는 컴포넌트 상태의 `submit`의 값을 렌더링해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyForm));
  const _1 = () => {
    mockedComponent.setState({ input: '' });
    mockedComponent.setState({ submit: '' });
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'TestInput' } });
    return mockedComponent.find('h1').text();
  };
  const _2 = () => {
    mockedComponent.find('form').simulate('submit');
    return mockedComponent.find('h1').text();
  };
  const before = _1();
  const after = _2();
  assert(before === '' && after === 'TestInput');
})();
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyForm />, document.getElementById('root'));
```

## --seed-contents--

```jsx
class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      submit: ''
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  handleSubmit(event) {
    // Change code below this line

    // Change code above this line
  }
  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          {/* Change code below this line */}

          {/* Change code above this line */}
          <button type='submit'>Submit!</button>
        </form>
        {/* Change code below this line */}

        {/* Change code above this line */}
      </div>
    );
  }
}
```

# --solutions--

```jsx
class MyForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      submit: ''
    };
    this.handleChange = this.handleChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  handleSubmit(event) {
    event.preventDefault();
    this.setState(state => ({
      submit: state.input
    }));
  }
  render() {
    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input value={this.state.input} onChange={this.handleChange} />
          <button type='submit'>Submit!</button>
        </form>
        <h1>{this.state.submit}</h1>
      </div>
    );
  }
}
```
