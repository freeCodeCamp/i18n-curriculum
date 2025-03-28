---
id: 5a24c314108439a4d4036154
title: Об’єднайте декілька редюсерів
challengeType: 6
forumTopicId: 301436
dashedName: combine-multiple-reducers
---

# --description--

When the state of your app begins to grow more complex, it may be tempting to divide state into multiple pieces. Instead, remember the first principle of Redux: all app state is held in a single state object in the store. Therefore, Redux provides reducer composition as a solution for a complex state model. You define multiple reducers to handle different pieces of your application's state, then compose these reducers together into one root reducer. The root reducer is then passed into the Redux `createStore()` method.

Щоб дозволити об’єднувати декілька редюсерів, Redux надає метод `combineReducers()`. Цей метод приймає об’єкт як аргумент, в якому визначено властивості, які пов’язують ключі з конкретними редюсерами. Redux використовуватиме назву, яку ви даєте ключам, як назву відповідної частини стану.

Як правило, для кожної частини застосунку корисно створити редюсера, якщо вони різні або унікальні. Наприклад, у застосунку «Нотатки» з автентифікацією користувача один редюсер оброблятиме автентифікацію, а інший оброблятиме текст та нотатки користувача. Для цього застосунку ми напишемо такий метод `combineReducers()`:

```js
const rootReducer = Redux.combineReducers({
  auth: authenticationReducer,
  notes: notesReducer
});
```

Тепер ключ `notes` міститиме весь стан, пов’язаний з нотатками, та оброблятиметься `notesReducer`. Ось так можна об’єднати декілька редюсерів, щоб керувати складнішим станом застосунку. Стан, збережений в сховищі Redux цього прикладу, буде єдиним об’єктом, який містить властивості `auth` та `notes`.

# --instructions--

У редакторі коду існують функції `counterReducer()` та `authReducer()`, а також сховище Redux. Допишіть функцію `rootReducer()`, використавши метод `Redux.combineReducers()`. Призначте `counterReducer` до ключа `count` та призначте `authReducer` до ключа `auth`.

# --hints--

`counterReducer` має збільшити та зменшити `state`.

```js
assert(
  (function () {
    const initialState = store.getState().count;
    store.dispatch({ type: INCREMENT });
    store.dispatch({ type: INCREMENT });
    const firstState = store.getState().count;
    store.dispatch({ type: DECREMENT });
    const secondState = store.getState().count;
    return firstState === initialState + 2 && secondState === firstState - 1;
  })()
);
```

`authReducer` має перемикати стан `authenticated` між `true` та `false`.

```js
assert(
  (function () {
    store.dispatch({ type: LOGIN });
    const loggedIn = store.getState().auth.authenticated;
    store.dispatch({ type: LOGOUT });
    const loggedOut = store.getState().auth.authenticated;
    return loggedIn === true && loggedOut === false;
  })()
);
```

Сховище `state` повинне мати два ключі: `count`, який містить число, та `auth`, який містить об’єкт. Об’єкт `auth` повинен мати властивість `authenticated`, яка містить булеве значення.

```js
assert(
  (function () {
    const state = store.getState();
    return (
      typeof state.auth === 'object' &&
      typeof state.auth.authenticated === 'boolean' &&
      typeof state.count === 'number'
    );
  })()
);
```

`rootReducer` має бути функцією, яка об’єднує `counterReducer` та `authReducer`.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        typeof rootReducer === 'function' &&
        noWhiteSpace.includes('Redux.combineReducers')
      );
    })()
  );
```

# --seed--

## --seed-contents--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const authReducer = (state = {authenticated: false}, action) => {
  switch(action.type) {
    case LOGIN:
      return {
        authenticated: true
      }
    case LOGOUT:
      return {
        authenticated: false
      }
    default:
      return state;
  }
};

const rootReducer = // Define the root reducer here

const store = Redux.createStore(rootReducer);
```

# --solutions--

```js
const INCREMENT = 'INCREMENT';
const DECREMENT = 'DECREMENT';

const counterReducer = (state = 0, action) => {
  switch(action.type) {
    case INCREMENT:
      return state + 1;
    case DECREMENT:
      return state - 1;
    default:
      return state;
  }
};

const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const authReducer = (state = {authenticated: false}, action) => {
  switch(action.type) {
    case LOGIN:
      return {
        authenticated: true
      }
    case LOGOUT:
      return {
        authenticated: false
      }
    default:
      return state;
  }
};

const rootReducer = Redux.combineReducers({
  count: counterReducer,
  auth: authReducer
});

const store = Redux.createStore(rootReducer);
```
