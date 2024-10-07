---
id: 5a24c314108439a4d4036156
title: Usa middleware para manejar acciones asíncronas
challengeType: 6
forumTopicId: 301451
dashedName: use-middleware-to-handle-asynchronous-actions
---

# --description--

So far these challenges have avoided discussing asynchronous actions, but they are an unavoidable part of web development. At some point you'll need to call asynchronous endpoints in your Redux app, so how do you handle these types of requests? Redux provides middleware designed specifically for this purpose, called Redux Thunk middleware. Here's a brief description how to use this with Redux.

Para incluir el Redux Thunk middleware, lo pasas como argumento a `Redux.applyMiddleware()`. Esta declaración se proporciona entonces como un segundo parámetro opcional a la función `createStore()`. Echa un vistazo al código en la parte inferior del editor para ver esto. Entonces, para crear una acción asíncrona, se devuelve una función en el creador de acción que toma `dispatch` como argumento. Dentro de esta función, se pueden enviar acciones y realizar peticiones asíncronas.

En este ejemplo, se simula una petición asíncrona con una llamada `setTimeout()`. Es común enviar una acción antes de iniciar cualquier comportamiento asíncrono para que el estado de tu aplicación sepa que se están solicitando algunos datos (este estado podría mostrar un icono de carga, por ejemplo). Luego, una vez que recibes los datos, envía otra acción que lleva los datos como carga útil junto con la información de que la acción se ha completado.

Recuerda que estás pasando `dispatch` como parámetro a este creador de acciones especiales. Esto es lo que usarás para enviar tus acciones, simplemente pasas la acción directamente a dispatch y el middleware se encarga del resto.

# --instructions--

Escribe ambos envíos en el creador de acción `handleAsync()`. Envía `requestingData()` antes del `setTimeout()` (la llamada al API simulada). A continuación, después de recibir los datos (fingidos), envía la acción `receivedData()`, pasando estos datos. Ahora ya sabes cómo manejar las acciones asíncronas en Redux. Todo lo demás sigue comportándose como antes.

# --hints--

El creador de acción `requestingData` debe devolver un objeto de tipo igual al valor de `REQUESTING_DATA`.

```js
assert(requestingData().type === REQUESTING_DATA);
```

El creador de acción `receivedData` debe devolver un objeto de tipo igual al valor de `RECEIVED_DATA`.

```js
assert(receivedData('data').type === RECEIVED_DATA);
```

`asyncDataReducer` debe ser una función.

```js
assert(typeof asyncDataReducer === 'function');
```

Enviar el creador de acción `requestingData` debe actualizar la propiedad store `state` de fetching a `true`.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(requestingData());
    const reqState = store.getState();
    return initialState.fetching === false && reqState.fetching === true;
  })()
);
```

El envío de `handleAsync` debe enviar la acción de solicitud de datos y luego enviar la acción de datos recibidos después de un retraso.

```js
assert(
  (function () {
    const noWhiteSpace = __helpers.removeWhiteSpace(handleAsync.toString());
    return (
      noWhiteSpace.includes('dispatch(requestingData())') === true &&
      noWhiteSpace.includes('dispatch(receivedData(data))') === true
    );
  })()
);
```

# --seed--

## --seed-contents--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    // Dispatch request action here

    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      // Dispatch received data action here

    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```

# --solutions--

```js
const REQUESTING_DATA = 'REQUESTING_DATA'
const RECEIVED_DATA = 'RECEIVED_DATA'

const requestingData = () => { return {type: REQUESTING_DATA} }
const receivedData = (data) => { return {type: RECEIVED_DATA, users: data.users} }

const handleAsync = () => {
  return function(dispatch) {
    dispatch(requestingData());
    setTimeout(function() {
      let data = {
        users: ['Jeff', 'William', 'Alice']
      }
      dispatch(receivedData(data));
    }, 2500);
  }
};

const defaultState = {
  fetching: false,
  users: []
};

const asyncDataReducer = (state = defaultState, action) => {
  switch(action.type) {
    case REQUESTING_DATA:
      return {
        fetching: true,
        users: []
      }
    case RECEIVED_DATA:
      return {
        fetching: false,
        users: action.users
      }
    default:
      return state;
  }
};

const store = Redux.createStore(
  asyncDataReducer,
  Redux.applyMiddleware(ReduxThunk.default)
);
```
