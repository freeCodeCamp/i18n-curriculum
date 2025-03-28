---
id: 5a24c314108439a4d4036172
title: 사용자 인터페이스(UI)에 상태를 렌더링하는 다른 방법
challengeType: 6
forumTopicId: 301408
dashedName: render-state-in-the-user-interface-another-way
---

# --description--

There is another way to access `state` in a component. In the `render()` method, before the `return` statement, you can write JavaScript directly. For example, you could declare functions, access data from `state` or `props`, perform computations on this data, and so on. Then, you can assign any data to variables, which you have access to in the `return` statement.

# --instructions--

`MyComponent` 렌더링 메서드에 `const` 변수 `name`을 선언하고, `상태`에 있는 name 값으로 설정해보세요. 직접 자바스크립트를 사용할 수 있기 때문에, 중괄호로 묶어줄 필요가 없습니다.

그런 다음, 반환(return)문에 `name` 변수를 이용해서 `h1` 태그에 렌더링 해보세요. 반환문에서는 JSX 문법(자바스크립트를 묶는 중괄호)을 사용해야 하는 것을 기억하세요.

# --hints--

`MyComponent`는 `freeCodeCamp`을 값으로 가진 `name`키를 상태에 가지고 있어야 합니다.

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

렌더링되는 `h1` 태그는 `{name}`를 포함해야 합니다.

```js
assert(/<h1>\n*\s*\{\s*name\s*\}\s*\n*<\/h1>/.test(code));
```

렌더링된 `h1` 제목 엘리먼트는 컴포넌트의 상태에서 가져온 텍스트가 포함되어야 합니다.

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
  assert(firstValue === '<div><h1>TestName</h1></div>');
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
    // Change code below this line

    // Change code above this line
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
    // Change code below this line
    const name = this.state.name;
    // Change code above this line
    return (
      <div>
        { /* Change code below this line */ }
        <h1>{name}</h1>
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
