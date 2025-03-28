---
id: 5a24c314108439a4d4036141
title: Iniziare con React Redux
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Anche se i componenti React possono gestire il proprio stato localmente, quando si dispone di un'app complessa è generalmente meglio mantenere lo stato dell'app in una singola posizione con Redux. Ci sono eccezioni quando i singoli componenti possono avere uno stato locale specifico solo per essi. Infine, dato che Redux non è progettato per essere pronto all'uso con React, è necessario utilizzare il pacchetto `react-redux`. Esso ti fornisce un modo per passare lo `state` di Redux e spedirlo (`dispatch`) ai componenti React sotto forma di `props`.

Nel corso delle prossime sfide, in primo luogo, creerai un semplice componente React che ti permetterà di inserire nuovi messaggi di testo. Questi vengono aggiunti ad un array che viene visualizzato nella vista. Questo dovrebbe essere un bel ripasso di quello che hai imparato nelle lezioni di React. Successivamente, creerai uno store Redux e delle azioni che gestiranno lo stato dell'array dei messaggi. Infine, userai `react-redux` per collegare lo store Redux con il tuo componente, estraendo lo stato locale nello store di Redux.

# --instructions--

Inizia con un componente `DisplayMessages`. Aggiungi un costruttore a questo componente e inizializzalo con uno stato che abbia due proprietà: `input`, impostato su una stringa vuota e `messages`, impostato su un array vuoto.

# --hints--

Il componente `DisplayMessages` dovrebbe presentare un elemento `div` vuoto.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

Il costruttore `DisplayMessages` dovrebbe essere chiamato correttamente con `super`, passandogli le `props`.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

Il componente `DisplayMessages` dovrebbe avere uno stato iniziale uguale a `{input: "", messages: []}`.

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
