---
id: 5a24c314108439a4d403616e
title: this.props 사용해서 프로퍼티에 접근하기
challengeType: 6
forumTopicId: 301375
dashedName: access-props-using-this-props
---

# --description--

앞의 몇 가지 도전에서 자식 컴포넌트로 프로퍼티(props)를 전달하는 기본적인 방법을 알아봤습니다. 하지만 프로퍼티를 전달받는 자식 컴포넌트가 상태가 없는 함수형 컴포넌트 대신에 ES6 클래스 컴포넌트라면 어떨까요? ES6 클래스 컴포넌트는 props에 접근하기 위해 조금 다른 규칙을 사용합니다.

클래스 컴포넌트 안에서 뭔가를 참조할 때는 `this` 키워드를 사용합니다. 즉, props에 접근하기 위해서도 `this`를 붙여줍니다. 예를 들면, ES6 클래스 컴포넌트에 `data` 프로퍼티가 있다면 JSX에서 `{this.props.data}`로 작성합니다.

# --instructions--

부모 컴포넌트인 `App`에 `Welcome` 컴포넌트 (인스턴스)를 렌더링 해보세요. `Welcome`의 프로퍼티로 문자열이 담긴 `name`을 할당해보세요. 자식 컴포넌트인 `Welcome`의 `strong` 태그안에서 `name` 프로퍼티에 접근해보세요.

# --hints--

`App` 컴포넌트는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(App));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`App` 컴포넌트의 자식은 `Welcome` 컴포넌트이어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(App));
    return (
      mockedComponent.children().childAt(0).name() === 'Welcome'
    );
  })()
);
```

`Welcome` 컴포넌트는 하나의 프로퍼티인 `name`을 가져야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(App));
    return mockedComponent.find('Welcome').props().name;
  })()
);
```

`Welcome` 컴포넌트는 `name`프로퍼티로 전달한 문자열을 `strong` 태그에서 보여줘야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(App));
    return (
      mockedComponent.find('strong').text() ===
      mockedComponent.find('Welcome').props().name
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<App />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class App extends React.Component {
  constructor(props) {
    super(props);

  }
  render() {
    return (
        <div>
            { /* Change code below this line */ }
            <Welcome />
            { /* Change code above this line */ }
        </div>
    );
  }
};

class Welcome extends React.Component {
  constructor(props) {
    super(props);

  }
  render() {
    return (
        <div>
          { /* Change code below this line */ }
          <p>Hello, <strong></strong>!</p>
          { /* Change code above this line */ }
        </div>
    );
  }
};
```

# --solutions--

```jsx
class Welcome extends React.Component {
  constructor(props) {
    super(props);

  }
  render() {
    return (
        <div>
          { /* Change code below this line */ }
          <p>Hello, <strong>{this.props.name}</strong>!</p>
          { /* Change code above this line */ }
        </div>
    );
  }
};

class App extends React.Component {
  constructor(props) {
    super(props);

  }
  render() {
    return (
        <div>
            { /* Change code below this line */ }
            <Welcome name="Quincy"/>
            { /* Change code above this line */ }
        </div>
    );
  }
};
```
