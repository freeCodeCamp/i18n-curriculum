---
id: 5a24c314108439a4d403616d
title: propTypes を使用して、期待する props を定義する
challengeType: 6
forumTopicId: 301419
dashedName: use-proptypes-to-define-the-props-you-expect
---

# --description--

React provides useful type-checking features to verify that components receive props of the correct type. For example, your application makes an API call to retrieve data that you expect to be in an array, which is then passed to a component as a prop. You can set `propTypes` on your component to require the data to be of type `array`. This will throw a useful warning when the data is of any other type.

prop の型が事前にわかっている場合は `propTypes` を設定することをお勧めします。 `defaultProps` の定義と同じ方法で、コンポーネントの `propTypes` プロパティを定義できます。 こうすることで、与えられたキーの props が与えられた型であるかどうかがチェックされます。 `handleClick` という prop に `function` 型を要求する例を次に示します。

```js
MyComponent.propTypes = { handleClick: PropTypes.func.isRequired }
```

この例では、`PropTypes.func` の部分で `handleClick` が関数かどうかをチェックします。 `isRequired` を追加することで、`handleClick` がそのコンポーネントに必要なプロパティであることを React に伝えます。 その prop が指定されていない場合は警告が表示されます。 また、`func` は `function` を表します。 JavaScript の 7 つのプリミティブ型の中で、`function` と `boolean` (`bool` と記述) の 2 つだけは通常と異なるスペルを使用します。 プリミティブ型に加えて、他にも利用可能な型があります。 たとえば、prop が React の要素かどうかをチェックできます。 オプションの一覧については <a href="https://reactjs.org/docs/typechecking-with-proptypes.html#proptypes" target="_blank" rel="noopener noreferrer nofollow">ドキュメント</a>を参照してください。

**注:** React v15.5.0 では `PropTypes` は React とは独立してインポートされます (例: `import PropTypes from 'prop-types';`)。

# --instructions--

prop として `quantity` を要求する `propTypes` を `Items` コンポーネントで定義し、`number` 型かどうかを検証してください。

# --hints--

`ShoppingCart` コンポーネントをレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('ShoppingCart').length === 1;
  })()
);
```

`Items` コンポーネントをレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('Items').length === 1;
  })()
);
```

`Items` コンポーネントに `propTypes` チェックを含めて、`quantity` の値を要求し、その値が数値であることを確認します。

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
