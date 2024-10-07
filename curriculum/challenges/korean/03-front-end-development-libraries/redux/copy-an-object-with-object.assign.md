---
id: 5a24c314108439a4d403615b
title: Object.assign을 사용해 객체 복사하기
challengeType: 6
forumTopicId: 301437
dashedName: copy-an-object-with-object-assign
---

# --description--

The last several challenges worked with arrays, but there are ways to help enforce state immutability when state is an `object`, too. A useful tool for handling objects is the `Object.assign()` utility. `Object.assign()` takes a target object and source objects and maps properties from the source objects to the target object. Any matching properties are overwritten by properties in the source objects. This behavior is commonly used to make shallow copies of objects by passing an empty object as the first argument followed by the object(s) you want to copy. Here's an example:

```js
const newObject = Object.assign({}, obj1, obj2);
```

이 코드는 새 `object`인 `newObject`를 생성하는데, 이 객체는 `obj1`과 `obj2`에 존재하는 속성들을 포함합니다.

# --instructions--

Redux의 state와 action들은 `state`를 담는 `object`를 처리하기 위해 수정되었습니다. 주어진 코드를 수정하여, 새로운 `state` 객체를 반환하도록 하세요. 이 객체는action의 타입이 `ONLINE`인 경우, `status` 속성의 값을 `online`이라는 문자열로 설정합니다. 이 도전 과제에서 `Object.assign()`을 사용해보세요.

# --hints--

Redux 스토어가 존재해야 하며, 이는 첫 번째 줄에서 선언된 `defaultState` 객체와 동일하게 초기화되어야 합니다.

```js
assert(
  (function () {
    const expectedState = {
      user: 'CamperBot',
      status: 'offline',
      friends: '732,982',
      community: 'freeCodeCamp'
    };
    const initialState = store.getState();
    return DeepEqual(expectedState, initialState);
  })()
);
```

`wakeUp`과 `immutableReducer`는 모두 함수여야 합니다.

```js
assert(typeof wakeUp === 'function' && typeof immutableReducer === 'function');
```

`ONLINE`타입의 액션을 발생시키면, 상태의 `status` 속성을 `online`으로 업데이트해야 합니다. 상태 자체를 변경하면 안 됩니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    const isFrozen = DeepFreeze(initialState);
    store.dispatch({ type: 'ONLINE' });
    const finalState = store.getState();
    const expectedState = {
      user: 'CamperBot',
      status: 'online',
      friends: '732,982',
      community: 'freeCodeCamp'
    };
    return isFrozen && DeepEqual(finalState, expectedState);
  })()
);
```

새 상태를 반환할 때 `Object.assign`을 사용해야 합니다.

```js
(getUserInput) => assert(getUserInput('index').includes('Object.assign'));
```

# --seed--

## --seed-contents--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const defaultState = {
  user: 'CamperBot',
  status: 'offline',
  friends: '732,982',
  community: 'freeCodeCamp'
};

const immutableReducer = (state = defaultState, action) => {
  switch(action.type) {
    case 'ONLINE':
      return Object.assign({}, state, {
        status: 'online'
      });
    default:
      return state;
  }
};

const wakeUp = () => {
  return {
    type: 'ONLINE'
  }
};

const store = Redux.createStore(immutableReducer);
```
