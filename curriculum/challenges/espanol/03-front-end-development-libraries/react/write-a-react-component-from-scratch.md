---
id: 5a24c314108439a4d4036168
title: Escribe un componente React desde cero
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

Define una clase `MyComponent` que herede de `React.Component`. Su método render debe devolver un `div` que contenga una etiqueta `h1` con el texto: `My First React Component!` en él. Utiliza este texto de manera exacta, las mayúsculas, minúsculas y puntuación son importantes. También asegúrate de llamar el constructor de tu componente.

Renderiza este componente al DOM usando `ReactDOM.render()`. Hay un `div` con `id='challenge-node'` disponible para que lo uses.

# --hints--

Debe existir un componente React llamado `MyComponent`.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

`MyComponent` debe contener una etiqueta `h1` con texto `My First React Component!`. Las mayúsculas, minúsculas y puntuación son importantes.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` debe renderizarse al DOM.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` debe tener un constructor invocando `super` con las `props`.

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
