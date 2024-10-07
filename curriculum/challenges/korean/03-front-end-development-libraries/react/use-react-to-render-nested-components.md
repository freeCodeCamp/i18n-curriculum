---
id: 5a24c314108439a4d4036165
title: 중첩된 컴포넌트 렌더링하기
challengeType: 6
forumTopicId: 301420
dashedName: use-react-to-render-nested-components
---

# --description--

The last challenge showed a simple way to compose two components, but there are many different ways you can compose components with React.

컴포넌트를 합치는 것은 리액트의 강력한 기능 중 하나입니다. 리액트를 사용할 때는, 저번 도전의 App 예시처럼 컴포넌트 측면에서 사용자 인터페이스(UI)를 생각하는게 중요합니다. UI를 기본 구성 블록으로 분해하면, 그 블록들이 컴포넌트가 되는겁니다. 이 방법은 UI를 담당하는 코드와 애플리케이션의 로직을 처리하는 코드로 분리할 수 있도록 도와줍니다. 복잡합 프로젝트의 개발과 유지보수를 크게 간소화할 수 있습니다.

# --instructions--

코드 편집기에는 `TypesOfFruit`와 `Fruits`라는 두 개의 함수 컴포넌트가 정의되어 있습니다. `TypesOfFruit` 컴포넌트를 `Fruits` 컴포넌트에 집어 넣어보세요. 그리고 `Fruits` 컴포넌트를 `TypesOfFood` 컴포넌트에 집어 넣어보세요. 자식 컴포넌트가 부모 컴포넌트에 중첩되어 있고, 그 부모 컴포넌트도 그 위의 부모 컴포넌트에 중첩된 결과로 나오면 됩니다.

# --hints--

`TypesOfFood` 컴포넌트는 하나의 `div` 컴포넌트를 반환해야 합니다.

```js
assert(Enzyme.shallow(React.createElement(TypesOfFood)).type() === 'div');
```

`TypesOfFood` 컴포넌트는 `Fruits` 컴포넌트를 반환해야 합니다.

```js
assert(
  Enzyme.shallow(React.createElement(TypesOfFood)).props().children[1].type
    .name === 'Fruits'
);
```

`Fruits` 컴포넌트는 `TypesOfFruit` 컴포넌트를 반환해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(TypesOfFood)).find('h2').html() ===
    '<h2>Fruits:</h2>'
);
```

`TypesOfFruit` 컴포넌트는 `h2`와 `ul` 엘리먼트를 반환해야 합니다.

```js
assert(
  Enzyme.mount(React.createElement(TypesOfFood)).find('ul').text() ===
    'ApplesBlueberriesStrawberriesBananas'
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<TypesOfFood />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const TypesOfFruit = () => {
  return (
    <div>
      <h2>Fruits:</h2>
      <ul>
        <li>Apples</li>
        <li>Blueberries</li>
        <li>Strawberries</li>
        <li>Bananas</li>
      </ul>
    </div>
  );
};

const Fruits = () => {
  return (
    <div>
      { /* Change code below this line */ }

      { /* Change code above this line */ }
    </div>
  );
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
      </div>
    );
  }
};
```

# --solutions--

```jsx
const TypesOfFruit = () => {
  return (
    <div>
      <h2>Fruits:</h2>
      <ul>
        <li>Apples</li>
        <li>Blueberries</li>
        <li>Strawberries</li>
        <li>Bananas</li>
      </ul>
    </div>
  );
};

const Fruits = () => {
  return (
    <div>
      { /* Change code below this line */ }
        <TypesOfFruit />
      { /* Change code above this line */ }
    </div>
  );
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
        <Fruits />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
