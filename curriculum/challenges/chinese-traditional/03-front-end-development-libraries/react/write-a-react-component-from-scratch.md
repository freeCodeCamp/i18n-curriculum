---
id: 5a24c314108439a4d4036168
title: 從零開始寫一個 React 組件
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

定義一個 `MyComponent` 類，它是 `React.Component` 的擴展。 它的渲染方法應該返回一個 `div`，其中包含一個 `h1` 標籤，標籤文本爲：`My First React Component!`。 準確使用此文本，大小寫和標點符號也要考慮。 確保也調用組件的構造器。

使用 `ReactDOM.render()` 把該組件渲染到 DOM 中。 有一個 `id='challenge-node'` 的 `div` 可供渲染。

# --hints--

應該有一個名爲 `MyComponent` 的 React 組件。

```js
assert(__helpers.removeWhiteSpace(code).includes('classMyComponentextendsReact.Component{'));
```

`MyComponent` 應該包含一個 `h1` 標籤，標籤的文本爲 `My First React Component!`，區分大小寫並有標點符號。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` 應該渲染到 DOM。

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` 應該有一個構造器，裏面調用了傳參 `props` 的 `super` 函數。

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
