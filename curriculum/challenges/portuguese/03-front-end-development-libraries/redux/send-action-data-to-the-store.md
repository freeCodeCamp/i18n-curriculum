---
id: 5a24c314108439a4d4036155
title: Enviar dados de ação para a store
challengeType: 6
forumTopicId: 301448
dashedName: send-action-data-to-the-store
---

# --description--

By now you've learned how to dispatch actions to the Redux store, but so far these actions have not contained any information other than a `type`. You can also send specific data along with your actions. In fact, this is very common because actions usually originate from some user interaction and tend to carry some data with them. The Redux store often needs to know about this data.

# --instructions--

Há dois criadores de ações básicos, `notesReducer()` e um `addNoteText()`, definidos no editor de código. Finalize o corpo da função `addNoteText()` para que ela retorne um objeto `action`. O objeto deve incluir a propriedade `type` com o valor `ADD_NOTE` e também uma propriedade `text` definida para o dado `note` que foi passado ao criador de ação. Quando você chama o criador de ação, você passará uma informação note específica que você pode acessar para o objeto.

Em seguida, termine de escreve a instrução `switch` no `notesReducer()`. Você precisa adicionar um caso que lide com ações do `addNoteText()`. Esse caso deve ser acionado sempre que há uma ação do tipo `ADD_NOTE` e ele deve retornar a propriedade `text` na `action` chegando como o novo `state`.

A ação é despachada no final do código. Quando terminar, rode o código e olhe o console. Isso é tudo que é necessário para enviar dados específicos de ações ao store e o usar quando você atualizar o `state` do store.

# --hints--

O criador de ação `addNoteText` deve retornar um objeto com chaves `type` e `text`.

```js
assert(
  (function () {
    const addNoteFn = addNoteText('__TEST__NOTE');
    return addNoteFn.type === ADD_NOTE && addNoteFn.text === '__TEST__NOTE';
  })()
);
```

Despachar uma ação do tipo `ADD_NOTE` com o criador de ação `addNoteText` deve atualizar o `state` para a string passada para o criador da ação.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(addNoteText('__TEST__NOTE'));
    const newState = store.getState();
    return initialState !== newState && newState === '__TEST__NOTE';
  })()
);
```

# --seed--

## --seed-contents--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line

    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello!'));
console.log(store.getState());
```

# --solutions--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line
    case ADD_NOTE:
      return action.text;
    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line
  return {
    type: ADD_NOTE,
    text: note
  }
  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello Redux!'));
console.log(store.getState());
```
