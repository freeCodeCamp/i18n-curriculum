---
id: 5a24c314108439a4d4036171
title: 사용자 인터페이스(UI)에 상태 렌더링하기
challengeType: 6
forumTopicId: 301409
dashedName: render-state-in-the-user-interface
---

# --description--

Once you define a component's initial state, you can display any part of it in the UI that is rendered. If a component is stateful, it will always have access to the data in `state` in its `render()` method. You can access the data with `this.state`.

렌더링 메서드의 `return` 안에서 상태 값에 접근하려면, 중괄호로 묶어야 합니다.

상태(`state`)는 리액트에서 가장 강력한 컴포넌트 기능 중 하나입니다. 앱에서 중요한 데이터를 추적하고, 이 데이터의 변화에 따라 UI를 렌더링할 수 있습니다. 이 말은 데이터가 변화면, UI도 변한다는 말입니다. 리액트는 보이지 않는 곳에서 가상 DOM(virtual DOM)이라는 것으로 변경 사항을 추적합니다. 가상 DOM은 상태의 데이터가 변하면, 그 데이터를 사용하고 있는 컴포넌트와 그 데이터를 프로퍼티로 받는 자식 컴포넌트를 다시 렌더링합니다. 리액트는 실제 DOM을 필요한 경우에만 업데이트 합니다. 이 말은 DOM의 변경에 대해 신경쓰지 않고, UI가 어떻게 보일지만 신경을 쓰면 된다는 의미입니다.

여기서 기억할 점은 상태가 있는 어떤 컴포넌트를 만들었다면, 다른 컴포넌트들은 이 컴포넌트의 상태(`state`)를 인식하지 못합니다. 상태 데이터를 자식 컴포넌트에 프로퍼티(`props`)로 전달하지 않는 한 `상태`는 그 컴포넌트에 완전히 캡슐화(컴포넌트 안에서만 사용) 됩니다. `상태`의 캡슐화 개념은 매우 중요합니다. 왜냐하면 이 개념은 어떤 로직을 만들었다면, 그 로직을 특정 코드에 포함하거나 분리할 수 있도록 도와주기 때문입니다.

# --instructions--

코드 편집기에 있는 `MyComponent`는 이미 상태가 있습니다. 컴포넌트의 렌더링 메서드 안에서 컴포넌트 상태의 `name`의 값을 `h1`에 선언해보세요.

**참고:** `h1`는 오직 `state`의 값만 렌더링해야 합니다. JSX에서 중괄호`{ }` 안에 작성한 모든 코드는 자바스크립트로 처리됩니다. 즉, `state`의 값에 접근하기 위해서 중괄호로 묶어주세요.

# --hints--

`MyComponent`는 `freeCodeCamp`를 값으로 가진 `name`키를 상태에 가지고 있어야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).state('name') ===
    'freeCodeCamp'
);
```

`MyComponent`는 하나의 `div`로 묶인 `h1` 제목 엘리먼트를 렌더링해야 합니다.

```js
assert(
  /<div><h1>.*<\/h1><\/div>/.test(
    Enzyme.mount(React.createElement(MyComponent)).html()
  )
);
```

렌더링된 `h1` 제목 엘리먼트는 컴포넌트의 상태에서 가져온 특정 텍스트만 포함되어야 합니다.

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
  const getValue = firstValue.replace(/\s/g, '');
  assert(getValue === '<div><h1>TestName</h1></div>');
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
      name: 'freeCodeCamp'
    }
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
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'freeCodeCamp'
    }
  }
  render() {
    return (
      <div>
        { /* Change code below this line */ }
        <h1>{this.state.name}</h1>
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
