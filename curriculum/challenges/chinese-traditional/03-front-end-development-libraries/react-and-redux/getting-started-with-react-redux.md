---
id: 5a24c314108439a4d4036141
title: React 和 Redux 入門
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

React 組件可以在本地管理自己的狀態，但是對於複雜的應用來說，它的狀態最好是用 Redux 保存在單一位置，有特定本地狀態的獨立組件例外。 當單個組件可能僅具有特定於其的本地狀態時，算是例外。 最後一點是，Redux 沒有內置的 React 支持，需要安裝 `react-redux`包， 通過這個方式把 Redux 的 `state` 和 `dispatch` 作爲 `props` 傳給組件。

在接下來的挑戰中，先要創建一個可輸入新文本消息的 React 組件， 添加這些消息到數組裏，在視圖上顯示數組。 這應該是 React 課程中的一個很好的回顧。 接着，創建 Redux store 和 actions 來管理消息數組的狀態。 最後，使用 `react-redux` 連接 Redux store 和組件，從而將本地狀態提取到 Redux store 中。

# --instructions--

從 `DisplayMessages` 組件開始。 把構造函數添加到此組件中，使用含兩個屬性的狀態初始化該組件，這兩個屬性爲：`input`（設置爲空字符串），`messages`（設置爲空數組）。

# --hints--

`DisplayMessages` 組件應渲染空的 `div` 元素。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

`DisplayMessages` 組件的構造函數應調用 `super`，傳入 `props`。

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

`DisplayMessages` 組件的初始狀態應是 `{input: "", messages: []}`。

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
