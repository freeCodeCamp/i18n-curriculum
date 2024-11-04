---
id: 5a24c314108439a4d4036153
title: 스토어 리스너 등록하기
challengeType: 6
forumTopicId: 301446
dashedName: register-a-store-listener
---

# --description--

Another method you have access to on the Redux `store` object is `store.subscribe()`. This allows you to subscribe listener functions to the store, which are called whenever an action is dispatched against the store. One simple use for this method is to subscribe a function to your store that simply logs a message every time an action is received and the store is updated.

# --instructions--

스토어가 액션을 받을 때마다 전역 변수 `count`를 증가시키는 콜백 함수를 작성하고, 이 함수를 `store.subscribe()` 메소드에 전달하세요. `store.dispatch()`가 연속으로 세 번 호출되는 것을 볼 수 있습니다. 매번 호출할 때 마다 직접 액션 객체를 전달합니다. 액션 디스패치 사이의 콘솔 출력을 보면 업데이트가 이루어지는 것을 확인할 수 있습니다.

# --hints--

스토어에서 `ADD` 액션을 실행하면 상태가 `1`씩 증가합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch({ type: 'ADD' });
    const newState = store.getState();
    return newState === initialState + 1;
  })()
);
```

`store.subscribe`를 사용하여 스토어에 구독하는 리스너 함수가 있어야 합니다.

```js
assert.match(code, /store\s*\.\s*subscribe\(/gm);
```

`store.subscribe`가 함수를 받아야 합니다.

```js
assert.match(code, /(\s*function\s*)|(\s*\(\s*\)\s*=>)/gm);
```

The function passed to `store.subscribe` should not be called.

```js
assert.notMatch(code, /store\.subscribe\(.+\(\)\)/);
```

`store.subscribe`에 대한 콜백은 스토어가 업데이트될 때 글로벌 `count` 변수를 증가시켜야 합니다.

```js
assert.strictEqual(store.getState(), count);
```

# --seed--

## --before-user-code--

```js
count = 0;
```

## --seed-contents--

```js
const ADD = 'ADD';

const reducer = (state = 0, action) => {
  switch(action.type) {
    case ADD:
      return state + 1;
    default:
      return state;
  }
};

const store = Redux.createStore(reducer);

// Global count variable:
let count = 0;

// Change code below this line

// Change code above this line

store.dispatch({type: ADD});
console.log(count);
store.dispatch({type: ADD});
console.log(count);
store.dispatch({type: ADD});
console.log(count);
```

# --solutions--

```js
const ADD = 'ADD';

const reducer = (state = 0, action) => {
  switch(action.type) {
    case ADD:
      return state + 1;
    default:
      return state;
  }
};

const store = Redux.createStore(reducer);
 let count = 0;
// Change code below this line

store.subscribe( () =>
 {
 count++;
 }
);

// Change code above this line

store.dispatch({type: ADD});
store.dispatch({type: ADD});
store.dispatch({type: ADD});
```
