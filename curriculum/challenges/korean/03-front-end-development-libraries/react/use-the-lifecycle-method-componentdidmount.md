---
id: 5a24c314108439a4d403617d
title: 라이프사이클 메서드 componentDidMount 사용하기
challengeType: 6
forumTopicId: 301422
dashedName: use-the-lifecycle-method-componentdidmount
---

# --description--

Most web developers, at some point, need to call an API endpoint to retrieve data. If you're working with React, it's important to know where to perform this action.

가장 좋은 방법은 라이프사이클(lifecycle) 메서드 `componentDidMount()`에서 API 호출 혹은 서버로 호출을 하는 것입니다. 이 메서드는 컴포넌트가 DOM에 올라간(mount) 후에 호출됩니다. 여기에서 `setState()`를 사용하면 컴포넌트의 재렌더링을 실행하게 됩니다. 이 메서드에서 API콜을 하고, 상태를 받을 데이터로 설정을 해주면, 데이터를 받으면 자동으로 업데이트가 실행됩니다.

# --instructions--

`componentDidMount()`에 가짜 API 호출이 있습니다. 2.5초 뒤에 서버에 호출해서 데이터를 받아 상태를 설정하는 설정입니다. 이 예시는 사이트의 현재 접속자의 수를 요청합니다. 렌더 메서드에 `activeUsers`의 값을 `h1`에 렌더링 해보세요, `Active Users:` 다음에 넣으면 됩니다. 어떤 일이 일어나는지 보고, 시간을 자유롭게 변경해서 다른 효과도 확인해보세요.

# --hints--

`MyComponent`는 `h1`를 가진 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  (() => {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

`componentDidMount`의 타임아웃 함수로 컴포넌트의 상태가 업데이트 되어야 합니다.

```js
assert(
  (() => {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return new RegExp('setTimeout(.|\n)+setState(.|\n)+activeUsers').test(
      String(mockedComponent.instance().componentDidMount)
    );
  })()
);
```

`h1` 태그는 `MyComponent`의 상태인 `activeUsers` 값을 렌더링해야 합니다.

```js
(() => {
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ activeUsers: 1237 });
    return mockedComponent.find('h1').text();
  };
  const second = () => {
    mockedComponent.setState({ activeUsers: 1000 });
    return mockedComponent.find('h1').text();
  };
  assert(new RegExp('1237').test(first()) && new RegExp('1000').test(second()));
})();
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
      activeUsers: null
    };
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({
        activeUsers: 1273
      });
    }, 2500);
  }
  render() {
    return (
      <div>
        {/* Change code below this line */}
        <h1>Active Users: </h1>
        {/* Change code above this line */}
      </div>
    );
  }
}
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      activeUsers: null
    };
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({
        activeUsers: 1273
      });
    }, 2500);
  }
  render() {
    return (
      <div>
        <h1>Active Users: {this.state.activeUsers}</h1>
      </div>
    );
  }
}
```
