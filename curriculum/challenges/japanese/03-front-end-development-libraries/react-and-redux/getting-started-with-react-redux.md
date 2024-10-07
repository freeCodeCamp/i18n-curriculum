---
id: 5a24c314108439a4d4036141
title: React Redux 入門
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

React コンポーネントで自身の状態をローカルに管理することもできますが、複雑なアプリの場合は、Redux を使用してアプリの状態を 1 か所に保つ方が通常は便利です。 ただし、個々のコンポーネントが自身に特有のローカルな状態を持つような場合は例外です。 また、Redux はそのままで React と連携するようには設計されていないため、`react-redux` パッケージを使用する必要があります。 このパッケージによって、React コンポーネントに Redux の `state` を渡して `props` として `dispatch` できるようになります。

以降のいくつかのチャレンジでは、まず、新しいテキストメッセージを入力できるシンプルな React コンポーネントを作成します。 メッセージは配列に追加され、ビューに表示されます。 このチャレンジは React のレッスンで学んだことを復習する良い機会になります。 次に、messages 配列の状態を管理する Redux ストアとアクションを作成します。 最後に、`react-redux` を使用して Redux ストアとコンポーネントを接続し、それを通じてローカルの state を Redux ストアに抽出します。

# --instructions--

`DisplayMessages` コンポーネントから作業を始めます。 このコンポーネントにコンストラクターを追加し、2 つのプロパティを持つ state で初期化してください。プロパティの 1 つは `input` で、空の文字列に設定します。もう 1 つは `messages` で、空の配列に設定します。

# --hints--

`DisplayMessages` コンポーネントで空の `div` 要素をレンダーします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

`DisplayMessages` コンストラクターを `super` を使用して正しく呼び出し、`props` を渡します。

```js
(getUserInput) =>
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(getUserInput('index'));
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

`DisplayMessages` コンポーネントの初期状態を `{input: "", messages: []}` にします。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      Array.isArray(initialState.messages) &&
      initialState.messages.length === 0
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  // Change code below this line

  // Change code above this line
  render() {
    return <div />
  }
};
```

# --solutions--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  render() {
    return <div/>
  }
};
```
