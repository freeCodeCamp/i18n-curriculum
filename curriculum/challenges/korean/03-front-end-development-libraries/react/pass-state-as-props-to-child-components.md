---
id: 5a24c314108439a4d403617a
title: 상태를 자식 컴포넌트에 Props로 전달
challengeType: 6
forumTopicId: 301403
dashedName: pass-state-as-props-to-child-components
---

# --description--

You saw a lot of examples that passed props to child JSX elements and child React components in previous challenges. You may be wondering where those props come from. A common pattern is to have a stateful component containing the `state` important to your app, that then renders child components. You want these components to have access to some pieces of that `state`, which are passed in as props.

예를 들어, 여러 컴포넌트들과 함께 `Navbar`를 렌더링하는 `App` 컴포넌트가 있다고 가정합니다. `App`에는 유저에 대한 많은 정보가 `state`에 저장되어 있지만, `Navbar`는 유저 이름에만 접근해서 보여주면 됩니다. 이 `state`의 일부를 `Navbar` 컴포넌트에 프로퍼티로 전달해줍니다.

이 패턴은 리액트의 몇 가지 중요한 패러다임을 보여줍니다. 첫 번째는 단방향 데이터의 흐름(*unidirectional data flow*)입니다. 상태는 상태가 있는 부모 컴포넌트에서 자식 컴포넌트로 나무를 타고 내려가듯 한 방향으로 이동합니다. 자식 컴포넌트는 필요한 상태 데이터를 받기만 합니다. 두 번째는 복잡한 상태가 있는 앱을 몇 개 혹은 한 개의 상태가 있는 컴포넌트로 분해한다는 것입니다. 나머지 컴포넌트는 단순히 상태를 부모로 부터 프로퍼티로 받아서 UI를 렌더링하면 됩니다. 이 방법은 상태 관리를 하는 부분과 UI 렌더링을 하는 부분으로 분리를 시킵니다. 상태 로직을 UI로직에서 분리하는 이 원칙은 리액트의 핵심 원칙 중 하나입니다. 올바르게 사용되면, 복잡한 상태가 있는 애플리케이션을 훨씬 쉽게 관리할 수 있습니다.

# --instructions--

`MyApp`은 상태가 있는 컴포넌트로 자식 컴포넌트 `Navbar`를 렌더링하고 있습니다. `state`의 `name` 프로퍼티를 자식 컴포넌트로 내려보내고, `Navbar`의 렌더링 메서드에 있는 `h1` 태그에 `name`를 보여주세요. `name`은 `Hello, my name is:` 텍스트 뒤에 나와야 합니다.

# --hints--

`MyApp` 컴포넌트 안에 `Navbar`를 렌더링해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyApp));
    return (
      mockedComponent.find('MyApp').length === 1 &&
      mockedComponent.find('Navbar').length === 1
    );
  })()
);
```

`Navbar` 컴포넌트는 `MyApp`의 상태 프로퍼티인 `name`을 받아야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyApp));
  const setState = () => {
    mockedComponent.setState({ name: 'TestName' });
    return waitForIt(() => mockedComponent.find('Navbar').props());
  };
  const navProps = await setState();
  assert(navProps.name === 'TestName');
};
```

`Navbar`의 `h1` 엘리먼트는 `name` 프로퍼티를 렌더링해야 합니다.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyApp));
  const navH1Before = mockedComponent.find('Navbar').find('h1').text();
  const setState = () => {
    mockedComponent.setState({ name: 'TestName' });
    return waitForIt(() => mockedComponent.find('Navbar').find('h1').text());
  };
  const navH1After = await setState();
  assert(new RegExp('TestName').test(navH1After) && navH1After !== navH1Before);
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
      name: 'CamperBot'
    }
  }
  render() {
    return (
       <div>
         {/* Change code below this line */}
         <Navbar />
         {/* Change code above this line */}
       </div>
    );
  }
};

class Navbar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
    <div>
      {/* Change code below this line */}
      <h1>Hello, my name is: </h1>
      {/* Change code above this line */}
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
      name: 'CamperBot'
    }
  }
  render() {
    return (
       <div>
         <Navbar name={this.state.name}/>
       </div>
    );
  }
};
class Navbar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
    <div>
      <h1>Hello, my name is: {this.props.name}</h1>
    </div>
    );
  }
};
```
