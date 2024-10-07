---
id: 5a24c314108439a4d403616f
title: 複習使用無狀態函數組件的 Props
challengeType: 6
forumTopicId: 301411
dashedName: review-using-props-with-stateless-functional-components
---

# --description--

Except for the last challenge, you've been passing props to stateless functional components. These components act like pure functions. They accept props as input and return the same view every time they are passed the same props. You may be wondering what state is, and the next challenge will cover it in more detail. Before that, here's a review of the terminology for components.

*無狀態函數組件*是一個函數，它接收 props 作爲輸入並返回 JSX。 另一方面，*無狀態組件*是一個類，它擴展了`React.Component`，但是不使用內部狀態（下一個挑戰中討論）。 最後，*狀態組件*是指維護其自身內部狀態的組件， 它簡稱組件或 React 組件。

一種常見的應用模式是儘可能減少狀態組件並創建無狀態的函數組件。 這有助於將狀態管理包含到應用程序的特定區域。 反過來，通過更容易地跟蹤狀態變化如何影響其行爲，可以改善應用程序的開發和維護。

# --instructions--

在代碼編輯器中有一個 `CampSite` 組件，它把 `Camper` 組件渲染爲自己的子組件。 定義 `Camper` 組件，併爲其分配默認 props `{ name: 'CamperBot' }`。 可以在 `Camper` 組件內部渲染任何你想要的代碼，但是要確保有一個 `p` 元素，它只包含作爲 `prop` 傳遞的 `name` 值。 最後，在 `Camper` 組件上定義 `propTypes`，要求提供 `name` 作爲 prop，並驗證它是 `string` 類型。

# --hints--

應該渲染 `CampSite` 組件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return mockedComponent.find('CampSite').length === 1;
  })()
);
```

應該渲染 `Camper` 組件。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return mockedComponent.find('Camper').length === 1;
  })()
);
```

`Camper` 組件應該包含默認 props，它將字符串 `CamperBot` 賦值給關鍵字 `name`。

```js
assert(
  /Camper.defaultProps={name:(['"`])CamperBot\1,?}/.test(
    __helpers.removeWhiteSpace(code)
  )
);
```

`Camper` 組件應該包含 `string` 類型的 `name` prop。

```js
assert(
  /Camper.propTypes={name:PropTypes.string.isRequired,?}/.test(
    __helpers.removeWhiteSpace(code)
  )
);
```

`Camper` 組件應該包含 `p` 元素，元素的文本是 prop 的 `name`。

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(CampSite));
    return (
      mockedComponent.find('p').text() ===
      mockedComponent.find('Camper').props().name
    );
  })()
);
```

# --seed--

## --before-user-code--

```jsx
var PropTypes = {
   string: { isRequired: true }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<CampSite />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class CampSite extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <Camper/>
      </div>
    );
  }
};
// Change code below this line
```

# --solutions--

```jsx
class CampSite extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <Camper/>
      </div>
    );
  }
};
// Change code below this line

const Camper = (props) => {
   return (
     <div>
       <p>{props.name}</p>
     </div>
   );
};

Camper.propTypes = {
  name: PropTypes.string.isRequired
};

Camper.defaultProps = {
  name: 'CamperBot'
};
```
