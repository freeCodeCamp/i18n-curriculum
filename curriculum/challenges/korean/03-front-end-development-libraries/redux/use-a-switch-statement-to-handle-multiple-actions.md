---
id: 5a24c314108439a4d4036151
title: 다수 행동을 다루기 위한 Switch문 사용하기
challengeType: 6
forumTopicId: 301449
dashedName: use-a-switch-statement-to-handle-multiple-actions
---

# --description--

You can tell the Redux store how to handle multiple action types. Say you are managing user authentication in your Redux store. You want to have a state representation for when users are logged in and when they are logged out. You represent this with a single state object with the property `authenticated`. You also need action creators that create actions corresponding to user login and user logout, along with the action objects themselves.

# --instructions--

코드 편집기에는 스토어, 행동, 그리고 행동 생성자가 설정되어 있습니다. 여러 인증 액션을 처리하도록 `reducer` 함수를 작성하시오. `reducer`에서 JavaScript `switch` 문을 사용하여 다른 액션 이벤트에 대응하시오. 이것은 Redux reducer를 작성할 때 사용하는 표준 패턴입니다. Switch문은 `action.type` 을 기준으로 전환하여 적절한 인증 상태를 반환해야 합니다.

참고: 이 단계에서는 상태의 불변성에 대해 걱정하지 않아도 됩니다. 이 예에서는 상태가 작고 단순하기 때문입니다. 각 액션에 대해 `{authenticated: true}`와 같은 새로운 객체를 반환할 수 있습니다. 또한 switch문에서 현재 `state`를 반환하는 `default` 케이스를 작성하는 것을 잊지 마시오. 이것은 중요합니다. 왜냐하면 앱에 여러 개의 리듀서가 있을 때, 액션이 해당 리듀서와 관련이 없더라도 액션이 디스패치될 때마다 모든 리듀서가 실행되기 때문입니다. 이 경우, 현재 `state`를 반환하도록 해야 합니다.

# --hints--

함수 `loginUser` 호출은 문자열 `LOGIN`로 설정된 type 속성을 가진 객체를 반환해야 합니다.

```js
assert(loginUser().type === 'LOGIN');
```

함수 `logoutUser` 호출은 문자열 `LOGOUT`로 설정된 type 속성을 가진 객체를 반환해야 합니다.

```js
assert(logoutUser().type === 'LOGOUT');
```

스토어는 `false`로 설정된 `authenticated` 속성을 가진 객체로 초기화되어야 합니다.

```js
assert(store.getState().authenticated === false);
```

`loginUser`를 디스패칭하면 스토어 상태에 있는 `authenticated` 속성을 `true`로 업데이트해야 합니다.

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

`logoutUser`를 디스패칭하면 스토어 상태에 있는 `authenticated`속성을 `false`로 업데이트해야 합니다.

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

`authReducer` 함수는 `switch`문으로 다수의 action 유형을 다루어야 합니다.

```js
(getUserInput) =>
  assert(
    getUserInput('index').toString().includes('switch') &&
      getUserInput('index').toString().includes('case') &&
      getUserInput('index').toString().includes('default')
  );
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  authenticated: false
};

const authReducer = (state = defaultState, action) => {
  // Change code below this line

  // Change code above this line
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
