---
id: 5a24c314108439a4d4036168
title: Eine React-Komponente von Grund auf neu erstellen
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

Definiere eine Klasse `MyComponent`, die `React.Component` erweitert. Die Render-Methode sollte ein `div` zurückgeben, das ein `h1`-Tag mit dem Text: `My First React Component!` enthält. Verwende genau diesen Text, die Groß- und Kleinschreibung und die Zeichensetzung sind wichtig. Achte darauf, dass du auch den Konstruktor für deine Komponente aufrufst.

Rendere diese Komponente mit `ReactDOM.render()` in das DOM. Es gibt ein `div` mit `id='challenge-node'`, das du verwenden kannst.

# --hints--

Es sollte eine React-Komponente namens `MyComponent` vorhanden sein.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

`MyComponent` sollte einen `h1`-Tag mit dem Text `My First React Component!` enthalten, wobei Groß- und Kleinschreibung wichtig sind.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` soll in das DOM gerendert werden.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` sollte einen Konstruktor haben, der `super` mit `props` aufruft.

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
