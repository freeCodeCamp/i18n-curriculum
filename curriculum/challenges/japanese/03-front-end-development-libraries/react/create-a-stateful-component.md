---
id: 5a24c314108439a4d4036170
title: ステートフルコンポーネントを作成する
challengeType: 6
forumTopicId: 301391
dashedName: create-a-stateful-component
---

# --description--

One of the most important topics in React is `state`. State consists of any data your application needs to know about, that can change over time. You want your apps to respond to state changes and present an updated UI when necessary. React offers a nice solution for the state management of modern web applications.

React コンポーネントで state を作成するには、`constructor` のコンポーネントクラスで `state` プロパティを宣言します。 これにより、コンポーネントが作成時に `state` で初期化されます。 `state` プロパティは JavaScript の `object` に設定する必要があります。 宣言は次のようになります。

```jsx
this.state = {

}
```

コンポーネントが存在している間は、`state` オブジェクトにアクセスすることができます。 更新したり、UI にレンダーしたり、props として子コンポーネントに渡したりすることができます。 `state` オブジェクトは必要に応じて単純なものにも複雑なものにもすることができます。 こうした `state` を作成するには、`React.Component` を拡張してクラスコンポーネントを作成する必要があります。

# --instructions--

コードエディターには `state` から `firstName` プロパティをレンダーしようとしているコンポーネントがあります。 しかし、`state` が定義されていません。 `constructor` で `state` を使用してコンポーネントを初期化し、`firstName` というプロパティにあなたの名前を割り当ててください。

# --hints--

`StatefulComponent` が存在し、レンダーする必要があります。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return mockedComponent.find('StatefulComponent').length === 1;
  })()
);
```

`StatefulComponent` で `div` および `h1` 要素をレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

`StatefulComponent` の state を初期化し、プロパティ `firstName` に文字列を設定します。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' && typeof initialState.firstName === 'string'
    );
  })()
);
```

`StatefulComponent` の state にあるプロパティ `firstName` を `h1` 要素にレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return mockedComponent.find('h1').text() === initialState.firstName;
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<StatefulComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    // Only change code below this line

    // Only change code above this line
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: 'freeCodeCamp!'
    }
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```
