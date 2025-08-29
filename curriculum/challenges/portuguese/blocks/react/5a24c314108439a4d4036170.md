---
id: 5a24c314108439a4d4036170
title: Criar um componente stateful
challengeType: 6
forumTopicId: 301391
dashedName: create-a-stateful-component
---

# --description--

One of the most important topics in React is `state`. State consists of any data your application needs to know about, that can change over time. You want your apps to respond to state changes and present an updated UI when necessary. React offers a nice solution for the state management of modern web applications.

Você pode criar um estado em um componente React ao declarar a propriedade `state` na classe do componente no seu `constructor`. Isso inicializa o componente com `state` quando é criado. A propriedade `state` deve ser definida para um `object` JavaScript. Declarando, ele se parece com isso:

```jsx
this.state = {

}
```

Você precisa acessar o objeto `state` ao longo da vida do seu componente. Você pode atualizá-lo, renderizá-lo na sua interface do usuário e o passar como props para componentes filhos. O objeto `state` pode ser tão complexo ou simples quanto você precise. Note que você precisa criar uma classe de componente ao estender `React.Component` para criar `state` dessa forma.

# --instructions--

Há um componente no editor de código que está tentando renderizar a propriedade `firstName` de seu `state`. No entanto, não há nenhum `state` definido. Inicialize o componente com `state` no `constructor` e atribua o seu nome para a propriedade `firstName`.

# --hints--

`StatefulComponent` deve existir e renderizar.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return mockedComponent.find('StatefulComponent').length === 1;
  })()
);
```

`StatefulComponent` deve renderizar um elemento `div` e um elemento `h1`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    return (
      mockedComponent.find('div').length === 1 &&
      mockedComponent.find('h1').length === 1
    );
  })()
);
```

O estado de `StatefulComponent` deve ser inicializado com uma propriedade `firstName` definida como uma string.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' && typeof initialState.firstName === 'string'
    );
  })()
);
```

A propriedade `firstName` no state de `StatefulComponent` deve renderizar o elemento `h1`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(StatefulComponent)
    );
    const initialState = mockedComponent.state();
    return mockedComponent.find('h1').text() === initialState.firstName;
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<StatefulComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    // Only change code below this line

    // Only change code above this line
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class StatefulComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: 'freeCodeCamp!'
    }
  }
  render() {
    return (
      <div>
        <h1>{this.state.firstName}</h1>
      </div>
    );
  }
};
```
