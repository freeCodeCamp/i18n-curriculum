---
id: 5a24c314108439a4d4036169
title: 将 Props 传递给无状态函数组件
challengeType: 6
forumTopicId: 301402
dashedName: pass-props-to-a-stateless-functional-component
---

# --description--

The previous challenges covered a lot about creating and composing JSX elements, functional components, and ES6 style class components in React. With this foundation, it's time to look at another feature very common in React: **props**. In React, you can pass props, or properties, to child components. Say you have an `App` component which renders a child component called `Welcome` which is a stateless functional component. You can pass `Welcome` a `user` property by writing:

```jsx
<App>
  <Welcome user='Mark' />
</App>
```

可以把创建的 React 支持的**自定义 HTML 属性**传递给组件。 在上面的例子里，将创建的属性 `user` 传递给组件 `Welcome`。 由于 `Welcome` 是一个无状态函数组件，它可以像这样访问该值：

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

调用 `props` 这个值是常见做法，当处理无状态函数组件时，基本上可以将其视为返回 JSX 的函数的参数。 这样，你就可以在函数体中访问该值。 但对于类组件，访问方式会略有不同。

# --instructions--

代码编辑器中有 `Calendar` 和 `CurrentDate` 组件。 从 `Calendar` 组件渲染 `CurrentDate` 时，从 JavaScript 的 `Date` 对象分配当前日期，并将其作为 `date` 属性传入。 然后访问 `CurrentDate` 组件的 `prop`，并在 `p` 标签中显示其值。 请注意，要将 `prop` 的值视为 JavaScript，必须将它们括在花括号中，例如`date={Date()}`。

# --hints--

`Calendar` 组件应该返回单个 `div` 元素。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`Calendar` 组件的第二个子元素应该是 `CurrentDate` 组件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

`CurrentDate` 组件应该有一个名为 `date` 的 prop。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

`CurrentDate` 的 `date` prop 应该包含一段文本字符串。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

`date` 属性应该通过调用 `Date()` 生成。

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

`CurrentDate` 组件应该把 `date` 属性渲染在 `p` 标签内。

```js
let date = 'dummy date';
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(CurrentDate, { date })
    );
    return mockedComponent.find('p').html().includes(date);
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Calendar />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: </p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: {props.date}</p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate date={Date()} />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
