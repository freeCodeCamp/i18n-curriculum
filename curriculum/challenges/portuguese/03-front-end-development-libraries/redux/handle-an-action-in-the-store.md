---
id: 5a24c314108439a4d4036150
title: Manipular uma ação na store
challengeType: 6
forumTopicId: 301444
dashedName: handle-an-action-in-the-store
---

# --description--

After an action is created and dispatched, the Redux store needs to know how to respond to that action. This is the job of a `reducer` function. Reducers in Redux are responsible for the state modifications that take place in response to actions. A `reducer` takes `state` and `action` as arguments, and it always returns a new `state`. It is important to see that this is the **only** role of the reducer. It has no side effects — it never calls an API endpoint and it never has any hidden surprises. The reducer is simply a pure function that takes state and action, then returns new state.

Outro princípio chave em Redux é que o `state` é somente de leitura. Em outras palavras, a função `reducer` deve **sempre** retornar uma nova cópia do `state` e nunca modificar o estado diretamente. Redux não impõe imutabilidade do estado. No entanto, você é responsável por aplicá-la no código de suas funções reducer. Você vai praticar isso em desafios futuros.

# --instructions--

O editor de código tem o exemplo anterior, bem como o início de uma função `reducer` para você. Preencha o corpo da função `reducer` para que se receber uma ação do tipo `'LOGIN'` ele retorna um objeto state com `login` definido como `true`. Caso contrário, retorna o `state` atual. Note que o `state` atual e a `action` despachada foram passados para o reducer, para que você possa acessar o tipo da ação diretamente com `action.type`.

# --hints--

Chamar a função `loginAction` deve retornar um objeto com a propriedade type definida para a string `LOGIN`.

```js
assert(loginAction().type === 'LOGIN');
```

A store deve ser inicializada com um objeto com a propriedade `login` definida como `false`.

```js
assert(store.getState().login === false);
```

Despachar `loginAction` deve atualizar a propriedade `login` no state da store para `true`.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(loginAction());
    const afterState = store.getState();
    return initialState.login === false && afterState.login === true;
  })()
);
```

Se a ação não é do tipo `LOGIN`, a store deve retornar o estado atual.

```js
assert(
  (function () {
    store.dispatch({ type: '__TEST__ACTION__' });
    let afterTest = store.getState();
    return typeof afterTest === 'object' && afterTest.hasOwnProperty('login');
  })()
);
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```

# --solutions--

```js
const defaultState = {
  login: false
};

const reducer = (state = defaultState, action) => {

  if (action.type === 'LOGIN') {
    return {login: true}
  }

  else {
    return state
  }

};

const store = Redux.createStore(reducer);

const loginAction = () => {
  return {
    type: 'LOGIN'
  }
};
```
