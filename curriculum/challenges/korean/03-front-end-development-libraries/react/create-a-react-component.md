---
id: 5a24c314108439a4d4036163
title: 리액트 컴포넌트 만들기
challengeType: 6
forumTopicId: 301386
dashedName: create-a-react-component
---

# --description--

The other way to define a React component is with the ES6 `class` syntax. In the following example, `Kitten` extends `React.Component`:

```jsx
class Kitten extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <h1>Hi</h1>
    );
  }
}
```

위의 코드는 `React.Component` 클래스를 상속한 ES6 클래스인 `Kitten`을 생성합니다. 그럼 이제 `Kitten` 클래스는 지역 상태(Local State)와 생명주기(lifecycle) 훅(hooks) 같은 여러 유용한 기능들에 접근할 수 있습니다. 아직 이런 용어에 익숙하지 않더라고 걱정하지 마세요, 앞으로의 도전에서 더 자세하게 알아 볼 거에요. 우선 `Kitten` 클래스에 있는 `constructor`가 `super()`를 호출하는 것을 확인해보세요. Kitten 클래스는 `super()`를 이용하여 부모 클래스의 생성자(Constructor)를 부르게 되는데, 이 경우 부모 클래스는 `React.Component` 입니다. constructor는 `class` 키워드로 생성된 객체의 초기 내용을 설정하는데 사용되는 특별한 메서드입니다. 가장 좋은 방법은 위의 예시처럼 컴포넌트의 `constructor`를 `super`와 호출하고, `props`를 둘 다에게 전달하는 것입니다. 이렇게 하면 컴포넌트가 올바르게 초기화됩니다. 지금은, 이 코드가 포함되는 것이 표준이라고만 알아두세요. 곧 생성자와 `props`의 다른 용도를 보게 될 것입니다.

# --instructions--

코드 편집기를 보면 클래스 문법으로 작성된 `MyComponent`가 있습니다. `render` 메서드를 완성해서, `Hello React!` 텍스트의 `h1` 태그가 포함된 `div` 엘리먼트를 반환하게 해보세요.

# --hints--

리액트 컴포넌트는 하나의 `div` 엘리먼트를 반환해야 합니다.

```js
assert(Enzyme.shallow(React.createElement(MyComponent)).type() === 'div');
```

반환된 `div`는 하나의 `h1` 제목 엘리먼트를 렌더링해야 합니다.

```js
assert(
  /<div><h1>.*<\/h1><\/div>/.test(
    Enzyme.shallow(React.createElement(MyComponent)).html()
  )
);
```

`h1` 제목 엘리먼트는 `Hello React!` 문자를 포함해야 합나다.

```js
assert(
  Enzyme.shallow(React.createElement(MyComponent)).html() ===
    '<div><h1>Hello React!</h1></div>'
);
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
  }
  render() {
    // Change code below this line



    // Change code above this line
  }
};
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    // Change code below this line
    return (
      <div>
        <h1>Hello React!</h1>
      </div>
    );
    // Change code above this line
  }
};
```
