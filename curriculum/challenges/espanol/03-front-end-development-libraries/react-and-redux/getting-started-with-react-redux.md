---
id: 5a24c314108439a4d4036141
title: Introducción a React Redux
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Aunque los componentes de React pueden gestionar su propio estado localmente, cuando se tiene una aplicación compleja, generalmente es mejor mantener el estado de la aplicación en una sola ubicación con Redux. Hay excepciones cuando los componentes individuales pueden tener un estado local específico sólo para ellos. Por último, debido a que Redux no está diseñado para trabajar con React de fábrica, es necesario utilizar el paquete `react-redux`. Proporciona una forma para pasar Redux `state` y `dispatch` a tus componentes React como `props`.

A lo largo de los siguientes desafíos, primero crearás un simple componente React que te permita introducir nuevos mensajes de texto. Estos se añaden a un arreglo que se muestra en la vista. Esto debería ser un buen repaso de lo aprendido en las lecciones de React. A continuación, crearás un almacén Redux y acciones que gestionen el estado del arreglo de mensajes. Por último, utilizarás `react-redux` para conectar el almacén Redux con tu componente, extrayendo así el estado local en el almacén Redux.

# --instructions--

Comienza con un componente `DisplayMessages`. Añade un constructor a este componente e inicialízalo con un estado que tenga dos propiedades: `input`, que se establece como una cadena vacía, y `messages`, que se establece como un arreglo vacío.

# --hints--

El componente `DisplayMessages` debe mostrar un elemento `div` vacío.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

El constructor `DisplayMessages` debe ser llamado correctamente con `super`, pasando `props`.

```js
(getUserInput) =>
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(getUserInput('index'));
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

El componente `DisplayMessages` debe tener un estado inicial igual a `{input: "", messages: []}`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      Array.isArray(initialState.messages) &&
      initialState.messages.length === 0
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  // Change code below this line

  // Change code above this line
  render() {
    return <div />
  }
};
```

# --solutions--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  render() {
    return <div/>
  }
};
```
