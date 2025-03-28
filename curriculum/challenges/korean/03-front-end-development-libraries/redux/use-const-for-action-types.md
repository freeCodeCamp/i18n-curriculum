---
id: 5a24c314108439a4d4036152
title: 액션 타입에 const를 사용하기
challengeType: 6
forumTopicId: 301450
dashedName: use-const-for-action-types
---

# --description--

A common practice when working with Redux is to assign action types as read-only constants, then reference these constants wherever they are used. You can refactor the code you're working with to write the action types as `const` declarations.

# --instructions--

`LOGIN`과 `LOGOUT`을 `const` 값으로 선언하고, 각각 문자열 `'LOGIN'`과 `'LOGOUT'`에 할당하세요. 그런 다음, `authReducer()`와 액션 생성자들을 수정하여 문자열 값 대신 이 상수를 참조하도록 하세요.

**참고:** 일반적으로 상수를 모두 대문자로 작성하는 것이 관례이며, Redux에서도 표준 관행입니다.

# --hints--

`loginUser` 함수를 호출하면 `type` 속성이 `LOGIN` 문자열로 설정된 객체가 반환되어야 합니다.

```js
assert(loginUser().type === 'LOGIN');
```

`logoutUser` 함수를 호출하면 `type` 속성이 `LOGOUT` 문자열로 설정된 객체가 반환되어야 합니다.

```js
assert(logoutUser().type === 'LOGOUT');
```

스토어는 `login` 속성이 `false`로 설정된 객체로 초기화되어야 합니다.

```js
assert(store.getState().authenticated === false);
```

`loginUser`를 디스패치하면 스토어 상태의 `login` 속성이 `true`로 업데이트되어야 합니다.

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

`logoutUser`를 디스패치하면 스토어 상태의 `login` 속성이 `false`로 업데이트되어야 합니다.

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

`authReducer` 함수는 switch 문을 사용하여 여러 액션 타입을 처리해야 합니다.

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

`LOGIN`과 `LOGOUT`은 `const` 값으로 선언되고, 각각 `LOGIN`과 `LOGOUT` 문자열로 할당되어야 합니다.

```js
const noWhiteSpace = __helpers.removeWhiteSpace(code);
assert(LOGIN === 'LOGIN' && LOGOUT === 'LOGOUT')
assert(noWhiteSpace.includes('const'))
```

액션 생성자와 리듀서는 `LOGIN`과 `LOGOUT` 상수를 참조해야 합니다.

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
