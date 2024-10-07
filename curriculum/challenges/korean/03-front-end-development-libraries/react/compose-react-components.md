---
id: 5a24c314108439a4d4036166
title: 리액트 컴포넌트 구성하기
challengeType: 6
forumTopicId: 301381
dashedName: compose-react-components
---

# --description--

As the challenges continue to use more complex compositions with React components and JSX, there is one important point to note. Rendering ES6 style class components within other components is no different than rendering the simple components you used in the last few challenges. You can render JSX elements, stateless functional components, and ES6 class components within other components.

# --instructions--

코드 편집기에, `TypesOfFood` 컴포넌트가 이미 `Vegetables` 컴포넌트를 렌더링하고 있습니다. 또한 이전 도전에서 알아본 `Fruits` 컴포넌트가 있습니다.

두 개의 컴포넌트 `NonCitrus`와 `Citrus`를 `Fruits` 컴포넌트에 집어넣으세요. 이 두 컴포넌트는 안보이는 곳에 내장되어 있습니다. 그럼 다음, `Fruits` 클래스 컴포넌트를 `TypesOfFood` 컴포넌트 안에 집어넣으세요, 위치는 `h1` 제목 엘리먼트와 `Vegetables` 컴포넌트 사이입니다. 결과적으로 2가지 형태의 컴포넌트가 들어간 컴포넌트로 구성됩니다.

# --hints--

`TypesOfFood` 컴포넌트는 하나의 `div` 컴포넌트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(TypesOfFood));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`TypesOfFood` 컴포넌트는 `Fruits` 컴포넌트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(TypesOfFood));
    return mockedComponent.children().childAt(1).name() === 'Fruits';
  })()
);
```

`Fruits` 컴포넌트는 `NonCitrus` 컴포넌트와 `Citrus` 컴포넌트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(TypesOfFood));
    return (
      mockedComponent.find('Fruits').children().find('NonCitrus').length ===
        1 &&
      mockedComponent.find('Fruits').children().find('Citrus').length === 1
    );
  })()
);
```

`TypesOfFood` 컴포넌트는 `Fruits` 컴포넌트 밑에 있는 `Vegetables` 컴포넌트를 반환해야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(TypesOfFood));
    return mockedComponent.children().childAt(2).name() === 'Vegetables';
  })()
);
```

# --seed--

## --before-user-code--

```jsx
class NonCitrus extends React.Component {
  render() {
    return (
      <div>
        <h4>Non-Citrus:</h4>
        <ul>
          <li>Apples</li>
          <li>Blueberries</li>
          <li>Strawberries</li>
          <li>Bananas</li>
        </ul>
      </div>
    );
  }
};
class Citrus extends React.Component {
  render() {
    return (
      <div>
        <h4>Citrus:</h4>
        <ul>
          <li>Lemon</li>
          <li>Lime</li>
          <li>Orange</li>
          <li>Grapefruit</li>
        </ul>
      </div>
    );
  }
};
class Vegetables extends React.Component {
  render() {
    return (
      <div>
        <h2>Vegetables:</h2>
        <ul>
          <li>Brussel Sprouts</li>
          <li>Broccoli</li>
          <li>Squash</li>
        </ul>
      </div>
    );
     }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<TypesOfFood />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class Fruits extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h2>Fruits:</h2>
        { /* Change code below this line */ }

        { /* Change code above this line */ }
      </div>
    );
  }
};

class TypesOfFood extends React.Component {
  constructor(props) {
     super(props);
  }
  render() {
    return (
      <div>
        <h1>Types of Food:</h1>
        { /* Change code below this line */ }

        { /* Change code above this line */ }
        <Vegetables />
      </div>
    );
  }
};
```

# --solutions--

```jsx
class Fruits extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h2>Fruits:</h2>
        { /* Change code below this line */ }
        <NonCitrus />
        <Citrus />
        { /* Change code above this line */ }
      </div>
    )
  }
}

class TypesOfFood extends React.Component {
  constructor(props) {
     super(props);
  }
    render() {
      return (
        <div>
        <h1>Types of Food:</h1>
          { /* Change code below this line */ }
          <Fruits />
          { /* Change code above this line */ }
          <Vegetables />
        </div>
      );
    }
};
```
