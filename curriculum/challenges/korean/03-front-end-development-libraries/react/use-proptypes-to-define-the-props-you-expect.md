---
id: 5a24c314108439a4d403616d
title: PropTypes로 예상되는 props 타입 정의하기
challengeType: 6
forumTopicId: 301419
dashedName: use-proptypes-to-define-the-props-you-expect
---

# --description--

React provides useful type-checking features to verify that components receive props of the correct type. For example, your application makes an API call to retrieve data that you expect to be in an array, which is then passed to a component as a prop. You can set `propTypes` on your component to require the data to be of type `array`. This will throw a useful warning when the data is of any other type.

이미 Prop의 타입을 알고 있다면 `propTypes`를 설정하는 것이 좋습니다. `defaultProps`를 정의한 것과 동일한 방법으로 컴포넌트의 `propTypes`를 정의할 수 있습니다. 이렇게 하면 특정 키의 프로퍼티가 특정 타입인지 확인이 가능합니다. 다음 예시에서는 `handleClick`이라는 prop이 `function` 타입이어야 합니다.

```js
MyComponent.propTypes = { handleClick: PropTypes.func.isRequired }
```

위의 예시에서 `PropTypes.func` 부분은 `handleClick`이 함수인지 확인을 합니다. `isRequired`를 추가하면 `handleClick`이 해당 컴포넌트에 필수 프로퍼티라고 알려주는 겁니다. 그래서 만약 `handleClick`이 제공되지 않으면 경고가 표시됩니다. 여기서 `func`은 `function`을 나타내는 겁니다. 7가지 자바스크립트 원시 타입 중에서 `function`과 `boolean`(`bool`이라고 쓰임)만 다른 철자를 사용합니다. 추가적으로 원시 타입 외에도 다른 타입을 사용할 수 있습니다. 예를 들면, prop이 리액트 엘리먼트인지도 확인할 수 있습니다. 다양한 옵션에 대해 자세한 내용은 <a href="https://reactjs.org/docs/typechecking-with-proptypes.html#proptypes" target="_blank" rel="noopener noreferrer nofollow">문서</a>를 참조하세요.

**참고:** 리액트 v15.5.0 부터 `PropTypes`를 이렇게 가져와서 사용합니다: `import PropTypes from 'prop-types';`

# --instructions--

`Items` 컴포넌트의 `propTypes`를 정의해보세요. `quantity` 프로퍼티를 가지고 있어야 하고 타입은 `number` 입니다.

# --hints--

`ShoppingCart` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('ShoppingCart').length === 1;
  })()
);
```

`Items` 컴포넌트가 렌더링 되어야 합니다.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('Items').length === 1;
  })()
);
```

`Items` 컴포넌트는 `quantity`의 값이 숫자인지 확인하는 `propTypes`를 가지고 있어야 합니다.

```js
(getUserInput) =>
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(getUserInput('index'));
      return (
        noWhiteSpace.includes('quantity:PropTypes.number.isRequired') &&
        noWhiteSpace.includes('Items.propTypes=')
      );
    })()
  );
```

# --seed--

## --before-user-code--

```jsx
var PropTypes = {
  number: { isRequired: true }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<ShoppingCart />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line

// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```

# --solutions--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line
Items.propTypes = {
  quantity: PropTypes.number.isRequired
};
// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```
