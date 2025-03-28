---
id: 5a24c314108439a4d4036152
title: Використайте const для типів дій
challengeType: 6
forumTopicId: 301450
dashedName: use-const-for-action-types
---

# --description--

A common practice when working with Redux is to assign action types as read-only constants, then reference these constants wherever they are used. You can refactor the code you're working with to write the action types as `const` declarations.

# --instructions--

Оголосіть `LOGIN` та `LOGOUT` як значення `const` і відповідно призначте їх до рядків `'LOGIN'` та `'LOGOUT'`. Потім відредагуйте `authReducer()` та авторів дії, щоб вони посилались на ці константи, а не значення рядків.

**Примітка:** зазвичай константи пишуть у верхньому регістрі, це стандартна практика у Redux.

# --hints--

Виклик функції `loginUser` має повернути об’єкт з властивістю `type` зі значенням рядка `LOGIN`.

```js
assert(loginUser().type === 'LOGIN');
```

Виклик функції `logoutUser` має повернути об’єкт з властивістю `type` зі значенням рядка `LOGOUT`.

```js
assert(logoutUser().type === 'LOGOUT');
```

Сховище має бути ініціалізованим об’єктом, що має властивість `login` зі значенням `false`.

```js
assert(store.getState().authenticated === false);
```

Відправлення `loginUser` має оновити значення властивості `login` у стані сховища на `true`.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(loginUser());
    const afterLogin = store.getState();
    return (
      initialState.authenticated === false && afterLogin.authenticated === true
    );
  })()
);
```

Відправлення `logoutUser` має оновити значення властивості `login` у стані сховища на `false`.

```js
assert(
  (function () {
    store.dispatch(loginUser());
    const loggedIn = store.getState();
    store.dispatch(logoutUser());
    const afterLogout = store.getState();
    return (
      loggedIn.authenticated === true && afterLogout.authenticated === false
    );
  })()
);
```

Функція `authReducer` має обробити декілька типів дій за допомогою інструкції `switch`.

```js
assert(
    (function () {
      return (
        typeof authReducer === 'function' &&
        code.toString().includes('switch') &&
        code.toString().includes('case') &&
        code.toString().includes('default')
      );
    })()
  );
```

`LOGIN` та `LOGOUT` мають бути оголошеними як значення `const`, а також їм потрібно призначити рядки `LOGIN` та `LOGOUT`.

```js
const noWhiteSpace = __helpers.removeWhiteSpace(code);
assert(LOGIN === 'LOGIN' && LOGOUT === 'LOGOUT')
assert(noWhiteSpace.includes('const'))
```

Автори дій та редюсер мають посилатися на константи `LOGIN` та `LOGOUT`.

```js
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(
        code.toString()
      );
      return (
        noWhiteSpace.includes('caseLOGIN:') &&
        noWhiteSpace.includes('caseLOGOUT:') &&
        noWhiteSpace.includes('type:LOGIN') &&
        noWhiteSpace.includes('type:LOGOUT')
      );
    })()
  );
```

# --seed--

## --seed-contents--

```js


const defaultState = {
  authenticated: false
};

const authReducer = (state = defaultState, action) => {

  switch (action.type) {
    case 'LOGIN': 
      return {
        authenticated: true
      }
    case 'LOGOUT': 
      return {
        authenticated: false
      }

    default:
      return state;

  }

};

const store = Redux.createStore(authReducer);

const loginUser = () => {
  return {
    type: 'LOGIN'
  }
};

const logoutUser = () => {
  return {
    type: 'LOGOUT'
  }
};
```

# --solutions--

```js
const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

const defaultState = {
  authenticated: false
};

const authReducer = (state = defaultState, action) => {

  switch (action.type) {

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

const store = Redux.createStore(authReducer);

const loginUser = () => {
  return {
    type: LOGIN
  }
};

const logoutUser = () => {
  return {
    type: LOGOUT
  }
};
```
