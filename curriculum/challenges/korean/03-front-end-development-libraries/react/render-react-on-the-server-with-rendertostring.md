---
id: 5a24c314108439a4d403618d
title: renderToString 사용해서 서버에 리액트 렌더링하기
challengeType: 6
forumTopicId: 301407
dashedName: render-react-on-the-server-with-rendertostring
---

# --description--

So far, you have been rendering React components on the client. Normally, this is what you will always do. However, there are some use cases where it makes sense to render a React component on the server. Since React is a JavaScript view library and you can run JavaScript on the server with Node, this is possible. In fact, React provides a `renderToString()` method you can use for this purpose.

서버 렌더링이 실제 앱에서 사용되는 두 가지 중요한 이유가 있습니다. 첫 번째로는, 서버 렌더링을 사용하지 않으면, 리액트 앱이 처음 브라우저에 로드될 때 상대적으로 비어있는 HTML 파일과 큰 사이즈의 자바스크립트로 구성될 것입니다. 그러면 사람들이 찾을 수 있도록 페이지 내용을 색인화하는 검색엔진에는 적합하지 않을 수 있습니다. 만약에 초기 HTML 마크업을 서버에서 렌더링하고 클라이언트로 전송하면, 초기 페이지에는 검색 엔진이 찾을 수 있는 페이지의 모든 마크업을 포함하고 있을 것입니다. 두 번째로는, 렌더링된 HTML이 전체 앱의 자바스크립트 코드보다 작기 때문에 초기 페이지 로딩 속도가 더 빠르게됩니다. 리액트는 서버 렌더링으로 초기 로드가 된 후에도 앱을 인지하고 관리할 수 있습니다.

# --instructions--

`renderToString()` 메서드는 `ReactDOMServer`에서 제공받습니다. 여기서는 전역 객체로 사용할 수 있습니다. 이 메서드는 하나의 리액트 엘리먼트를 인자로 받습니다. 이 메서드를 사용해서 문자열로 `App`에 렌더링해보세요.

# --hints--

`App` 컴포넌트는 `ReactDOMServer.renderToString` 사용해서 문자열로 렌더링해야 합니다.

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
