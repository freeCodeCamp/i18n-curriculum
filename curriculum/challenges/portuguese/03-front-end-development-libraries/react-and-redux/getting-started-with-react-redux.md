---
id: 5a24c314108439a4d4036141
title: Primeiros passos com React Redux
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Embora componentes React podem gerenciar seus próprios estados localmente, quando você tem um app complexo, geralmente é melhor manter o estado do app em um único lugar com Redux. Existem exceções quando componentes individuais podem ter um estado local específico apenas para eles. Finalmente, como o Redux não é projetado para trabalhar com o React puro, você precisa usar o pacote `react-redux`. Ele fornece uma forma de você passar o `state` e `dispatch` do Redux para seus componentes React como `props`.

Ao longo dos próximos desafios, primeiro, você criará um componente React simples que lhe permite inserir novas mensagens de texto. Estas mensagens são adicionadas a um array que é exibido na exibição. Essa deve ser uma boa revisão do que você aprendeu nas lições do React. Em seguida, você vai criar uma store e ações do Redux que gerenciam o estado do array de mensagens. Finalmente, você usará `react-redux` para conectar a store do Redux com seu componente, deste modo extraindo o state local para a store do Redux.

# --instructions--

Comece com o componente `DisplayMessages`. Adicione um construtor para esse componente e inicialize ele com um state com duas propriedades: `input`, que é definido como uma string vazia, e `messages`, que é definido para um array vazio.

# --hints--

O componente `DisplayMessages` deve renderizar um elemento `div` vazio.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

O construtor `DisplayMessages` deve ser chamado corretamente com `super`, passando `props`.

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

O componente `DisplayMessages` deve ter um state inicial igual a `{input: "", messages: []}`.

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
