---
id: 5a24c314108439a4d4036169
title: 將 Props 傳遞給無狀態函數組件
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

可以把創建的 React 支持的**自定義 HTML 屬性**傳遞給組件。 在上面的例子裏，將創建的屬性 `user` 傳遞給組件 `Welcome`。 由於 `Welcome` 是一個無狀態函數組件，它可以像這樣訪問該值：

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

調用 `props` 這個值是常見做法，當處理無狀態函數組件時，基本上可以將其視爲返回 JSX 的函數的參數。 這樣，你就可以在函數體中訪問該值。 但對於類組件，訪問方式會略有不同。

# --instructions--

代碼編輯器中有 `Calendar` 和 `CurrentDate` 組件。 從 `Calendar` 組件渲染 `CurrentDate` 時，從 JavaScript 的 `Date` 對象分配當前日期，並將其作爲 `date` 屬性傳入。 然後訪問 `CurrentDate` 組件的 `prop`，並在 `p` 標籤中顯示其值。 請注意，要將 `prop` 的值視爲 JavaScript，必須將它們括在花括號中，例如`date={Date()}`。

# --hints--

`Calendar` 組件應該返回單個 `div` 元素。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

`Calendar` 組件的第二個子元素應該是 `CurrentDate` 組件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

`CurrentDate` 組件應該有一個名爲 `date` 的 prop。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

`CurrentDate` 的 `date` prop 應該包含一段文本字符串。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

`date` 屬性應該通過調用 `Date()` 生成。

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

`CurrentDate` 組件應該把 `date` 屬性渲染在 `p` 標籤內。

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
