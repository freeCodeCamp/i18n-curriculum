---
id: 5a24c314108439a4d403615a
title: 배열에서 요소 제거하기
challengeType: 6
forumTopicId: 301447
dashedName: remove-an-item-from-an-array
---

# --description--

Time to practice removing items from an array. The spread operator can be used here as well. Other useful JavaScript methods include `slice()` and `concat()`.

# --instructions--

리듀서와 액션 생성자가 수정되어 요소의 인덱스를 기반으로 배열에서 요소를 제거합니다. 특정 인덱스의 요소가 제거된 새로운 상태 배열이 반환되도록 리듀서를 마저 작성해보세요.

# --hints--

Redux 저장소가 존재해야 하며 `[0,1,2,3,4,5]`와 같은 상태로 초기화되어야 합니다.

```js
const initialState = store.getState();
assert.isArray(initialState) 
assert.deepEqual(initialState, [0, 1, 2, 3, 4, 5])
```

`removeItem`와 `immutableReducer` 는 모두 함수여야 합니다.

```js
assert(
  typeof removeItem === 'function' && typeof immutableReducer === 'function'
);
```

`removeItem` 액션 생성자를 디스패치 하면 상태(state)에서 요소를 제거해야 하며 상태를 변경하면 안됩니다.

```js
const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch(removeItem(3));
const state_1 = store.getState();
store.dispatch(removeItem(2));
const state_2 = store.getState();
store.dispatch(removeItem(0));
store.dispatch(removeItem(0));
store.dispatch(removeItem(0));
const state_3 = store.getState();

assert(isFrozen)
assert.deepEqual(state_1, [0, 1, 2, 4, 5]) 
assert.deepEqual(state_2, [0, 1, 4, 5]) 
assert.deepEqual(state_3, [5])

```

# --seed--

## --seed-contents--

```js
const immutableReducer = (state = [0,1,2,3,4,5], action) => {
  switch(action.type) {
    case 'REMOVE_ITEM':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const removeItem = (index) => {
  return {
    type: 'REMOVE_ITEM',
    index
  }
}

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const immutableReducer = (state = [0,1,2,3,4,5], action) => {
  switch(action.type) {
    case 'REMOVE_ITEM':
      return [
        ...state.slice(0, action.index),
        ...state.slice(action.index + 1)
      ];
    default:
      return state;
  }
};

const removeItem = (index) => {
  return {
    type: 'REMOVE_ITEM',
    index
  }
}

const store = Redux.createStore(immutableReducer);
```
