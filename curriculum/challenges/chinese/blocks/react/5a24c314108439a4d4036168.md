---
id: 5a24c314108439a4d4036168
title: 从零开始写一个 React 组件
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

定义一个 `MyComponent` 类，它是 `React.Component` 的扩展。 它的渲染方法应该返回一个 `div`，其中包含一个 `h1` 标签，标签文本为：`My First React Component!`。 准确使用此文本，大小写和标点符号也要考虑。 确保也调用组件的构造器。

使用 `ReactDOM.render()` 把该组件渲染到 DOM 中。 有一个 `id='challenge-node'` 的 `div` 可供渲染。

# --hints--

应该有一个名为 `MyComponent` 的 React 组件。

```js
assert(__helpers.removeWhiteSpace(code).includes('classMyComponentextendsReact.Component{'));
```

`MyComponent` 应该包含一个 `h1` 标签，标签的文本为 `My First React Component!`，区分大小写并有标点符号。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` 应该渲染到 DOM。

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` 应该有一个构造器，里面调用了传参 `props` 的 `super` 函数。

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
