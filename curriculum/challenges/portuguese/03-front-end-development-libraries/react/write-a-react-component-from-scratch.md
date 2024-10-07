---
id: 5a24c314108439a4d4036168
title: Escrever um componente do React do zero
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

Define uma classe `MyComponent` que estende `React.Component`. Seu método de renderização deve retornar uma `div` que contém uma tag `h1` com o texto: `My First React Component!` nela. Use este texto exatamente, letras maiúsculas e minúsculas, e pontuação importam. Certifique-se de chamar o construtor para seu componente também.

Renderize este componente para o DOM usando `ReactDOM.render()`. Há um `div` com `id='challenge-node'` disponível para você usar.

# --hints--

Deve haver um componente React chamado `MyComponent`.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

`MyComponent` deve conter uma tag `h1` com texto `My First React Component!` Letras maiúsculas e minúsculas, e pontuação importam.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` deve existir e ser renderizado no DOM.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` deve ter um construtor chamando `super` com `props`.

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
