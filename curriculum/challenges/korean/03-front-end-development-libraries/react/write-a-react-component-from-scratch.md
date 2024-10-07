---
id: 5a24c314108439a4d4036168
title: 리액트 컴포넌트 처음부터 작성하기
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

`React.Component`를 상속한 `MyComponent` 클래스를 정의해보세요. 렌더링 메서드는 `div`를 반환하는데, 이 안에는 `My First React Component!` 텍스트의 `h1`를 포함합니다. 대소문자와 맞춤법을 정확히 해주세요. 생성자(constructor)도 호출해주세요.

`ReactDOM.render()`를 사용해서 DOM에 렌더링하세요. `id='challenge-node'`를 가진 `div`를 사용하면 됩니다.

# --hints--

코드 편집기에 `MyComponent`라는 리액트 컴포넌트가 있어야 합니다.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

`MyComponent`는 대소문자와 맞춤법이 정확한 `My First React Component!` 텍스트의 `h1` 태그를 가지고 있어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent`는 DOM에 렌더링되어야 합니다.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent`는 `props`로 `super`를 호출하는 생성자가 있어야 합니다.

```js
assert(
  MyComponent.toString().includes('MyComponent(props)') &&
    MyComponent.toString().includes('_super.call(this, props)')
);
```

# --seed--

## --seed-contents--

```jsx
// Change code below this line
```

# --solutions--

```jsx
// Change code below this line
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h1>My First React Component!</h1>
      </div>
    );
  }
};

ReactDOM.render(<MyComponent />, document.getElementById('challenge-node'));
```
