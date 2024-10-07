---
id: 5a24c314108439a4d403618d
title: Відтворіть React на сервері за допомогою renderToString
challengeType: 6
forumTopicId: 301407
dashedName: render-react-on-the-server-with-rendertostring
---

# --description--

So far, you have been rendering React components on the client. Normally, this is what you will always do. However, there are some use cases where it makes sense to render a React component on the server. Since React is a JavaScript view library and you can run JavaScript on the server with Node, this is possible. In fact, React provides a `renderToString()` method you can use for this purpose.

Існує дві ключові причини, чому відтворення на сервері може використовуватися в реальних застосунках. По-перше, якщо цього не робити, то застосунки React будуть складатися з відносно порожнього файлу HTML і великого набору JavaScript, коли він початково завантажений у браузер. Це погано для пошукової системи, яка намагається індексувати вміст сторінок, щоб люди змогли знайти вас. Якщо відтворити розмітку початкового HTML на сервері та надіслати її клієнту, то початкове завантаження сторінки міститиме всю розмітку, що може бути переглянуто пошуковими системами. По-друге, це створює швидше початкове завантаження сторінки, оскільки відтворений HTML менший, ніж JavaScript всього застосунку. React досі зможе розпізнати ваш застосунок і керувати ним після початкового завантаження.

# --instructions--

Метод `renderToString()` надано до `ReactDOMServer`, що доступний як глобальний об’єкт. Метод приймає один аргумент, який є елементом React. Використайте його, щоб відтворити `App` у вигляді рядка.

# --hints--

Компонент `App` має відтворитись як рядок за допомогою `ReactDOMServer.renderToString`.

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
