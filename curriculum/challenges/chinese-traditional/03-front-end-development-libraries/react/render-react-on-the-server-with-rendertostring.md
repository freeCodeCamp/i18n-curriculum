---
id: 5a24c314108439a4d403618d
title: 用 renderToString 在服務器上渲染 React
challengeType: 6
forumTopicId: 301407
dashedName: render-react-on-the-server-with-rendertostring
---

# --description--

So far, you have been rendering React components on the client. Normally, this is what you will always do. However, there are some use cases where it makes sense to render a React component on the server. Since React is a JavaScript view library and you can run JavaScript on the server with Node, this is possible. In fact, React provides a `renderToString()` method you can use for this purpose.

有兩個關鍵原因可以解釋爲什麼服務器上的渲染可能會在真實世界的應用程序中使用。 首先，如果不這樣做，當 React 應用程序最初加載到瀏覽器時，它將包含一個代碼量很少的 HTML 文件和一大堆 JavaScript。 這對於搜索引擎來說可能不太理想，因爲它們試圖爲網頁內容生成索引，以便人們可以找到這個應用。 如果在服務器上渲染初始 HTML 標記並將其發送到客戶端，則初始頁面加載的內容包含搜索引擎可以抓取的所有頁面標記。 其次，這創造了更快的初始頁面加載體驗，因爲渲染的 HTML 代碼量要比整個應用程序的 JavaScript 代碼小。 React 仍然能夠識別你的應用並在初始加載後進行管理。

# --instructions--

`renderToString()` 方法由 `ReactDOMServer` 提供，在這裏已爲你定義成全局變量。 這個方法接收一個 React 元素作爲參數。 用它來把 `App` 渲染成字符串。

# --hints--

`App` 組件應該使用 `ReactDOMServer.renderToString` 渲染一個字符串。

```js
() =>
  assert(
    code.replace(/ /g, '')
      .includes('ReactDOMServer.renderToString(<App/>)') &&
      Enzyme.mount(React.createElement(App)).children().name() === 'div'
  );
```

# --seed--

## --before-user-code--

```jsx
var ReactDOMServer = { renderToString(x) { return null; } };
```

## --after-user-code--

```jsx
ReactDOM.render(<App />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class App extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <div/>
  }
};

// Change code below this line
```

# --solutions--

```jsx
class App extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <div/>
  }
};

// Change code below this line
ReactDOMServer.renderToString(<App/>);
```
