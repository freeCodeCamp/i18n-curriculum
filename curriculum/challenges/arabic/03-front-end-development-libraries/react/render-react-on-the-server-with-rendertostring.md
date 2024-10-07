---
id: 5a24c314108439a4d403618d
title: تقديم React على حاسب ألى (Server) مع renderToString
challengeType: 6
forumTopicId: 301407
dashedName: render-react-on-the-server-with-rendertostring
---

# --description--

So far, you have been rendering React components on the client. Normally, this is what you will always do. However, there are some use cases where it makes sense to render a React component on the server. Since React is a JavaScript view library and you can run JavaScript on the server with Node, this is possible. In fact, React provides a `renderToString()` method you can use for this purpose.

هناك سببان رئيسان وراء إمكانية استخدام الإنتاج على حاسب ألى (server) في تطبيق على أرض الواقع. أولا، دون فعل ذلك، ستتكون تطبيقات React الخاصة بك من مِلَفّ HTML فارغ نسبياً وحزمة كبيرة من JavaScript عندما يتم تحميلها في البداية تحميل المتصفح. قد لا يكون هذا مثالياً لمحركات البحث التي تحاول تحليل محتوى صفحاتك حتى يتمكن الناس من العثور عليك. إذا قديمت علامة HTML الأولية على حاسب ألى (server) وإرسال هذا إلى العميل (client)، تحتوي الحمولة الأولية للصفحة على جميع علامات الصفحة التي يمكن تحليلها بواسطة محركات البحث. ثانياً، هذا ينشئ تجرِبة تحميل صفحة أولية أسرع لأن HTML المقدمة أصغر من رمز JavaScript للتطبيق بِرُمَّته. سيظل React قادراً على التعرف على التطبيق الخاص بك وإدارتها بعد التحميل الأولي.

# --instructions--

يتم توفير طريقة `renderToString()` على `ReactDOMServer`، والمتاحة مثل كائن عالمي (global). وتأخذ الطريقة حَجَّة واحدة هي عنصر React. استخدم هذا لوضع `App` على شكل string.

# --hints--

يجب أن يقدم مكون `App` على شكل string باستخدام `ReactDOMServer.renderToString`.

```js
(getUserInput) =>
  assert(
    getUserInput('index')
      .replace(/ /g, '')
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
