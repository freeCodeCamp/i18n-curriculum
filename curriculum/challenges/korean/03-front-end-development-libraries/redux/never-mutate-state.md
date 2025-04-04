---
id: 5a24c314108439a4d4036158
title: 상태 변경 금지
challengeType: 6
forumTopicId: 301445
dashedName: never-mutate-state
---

# --description--

These final challenges describe several methods of enforcing the key principle of state immutability in Redux. Immutable state means that you never modify state directly, instead, you return a new copy of state.

시간 경과에 따른 Redux 앱의 상태를 스냅샷으로 찍으면 `state 1`, `state 2`, `state 3`, `state 4`, `...`와 같이 각 상태가 이전 상태와 비슷할 수 있지만 각각은 별개의 데이터 조각인 것을 확인할 수 있을 것 입니다. 사실 이 불변성이야말로 여러분이 들어보셨을 시간 여행 디버깅과 같은 기능을 제공하는 것입니다.

Redux는 저장소(store) 나 reducer에서 상태 불변성을 적극적으로 적용하지 않으며, 그 책임은 프로그래머에게 있습니다. 다행이도 자바스크립트 (특히 ES6) 는 상태가 `string`, `number`, `array`, or `object`인 경우에 상태의 불변성을 적용할 수 있는 여러 유용한 도구를 제공합니다. 문자열과 숫자는 원시 값이며 본질적으로 불변이라는 점에 유의하세요. 다시말해, 3은 언제나 3 입니다. 숫자 3의 값은 변경할 수 없습니다. 반면, `array`나 `object`는 변경가능합니다. 실제로 상태는 `array` 또는 `object`로 구성되는데, 이는 다양한 유형의 정보를 표현하는 데 유용한 데이터 구조이기 때문입니다.

# --instructions--

코드 에디터에 할 일 항목을 관리할 수 있는 `store`와 `reducer`가 있습니다. 새로운 할일 항목을 상태에 더하도록 reducer의 `ADD_TO_DO` 문을 완성하세요. 표준 자바스크립트 또는 ES6를 사용하여 이를 수행하는 몇 가지 방법이 있습니다. `action.todo`의 항목이 끝에 추가된 새 배열을 반환하는 방법을 찾을 수 있는지 알아보세요.

# --hints--

Redux 저장소가 존재해야 하며 코드 편집기에서 `todos` 배열과 동일한 상태로 초기화되어야 합니다.

```js
assert(
  (function () {
    const todos = [
      'Go to the store',
      'Clean the house',
      'Cook dinner',
      'Learn to code'
    ];
    const initialState = store.getState();
    return (
      Array.isArray(initialState) && initialState.join(',') === todos.join(',')
    );
  })()
);
```

`addToDo`와 `immutableReducer`는 모두 함수여야 합니다.

```js
assert(typeof addToDo === 'function' && typeof immutableReducer === 'function');
```

Redux 스토어에서 `ADD_TO_DO` 유형의 액션을 디스패치하면 `todo` 항목이 추가되어야 하며 상태를 변경해서는 안 됩니다.

```js
const initialState = store.getState();
const isFrozen = !!DeepFreeze(initialState);
store.dispatch(addToDo('__TEST__TO__DO__'));
const finalState = store.getState();
const expectedState = [
  'Go to the store',
  'Clean the house',
  'Cook dinner',
  'Learn to code',
  '__TEST__TO__DO__'
];
assert(isFrozen);
assert.deepEqual(finalState, expectedState);
```

# --seed--

## --seed-contents--

```js
const ADD_TO_DO = 'ADD_TO_DO';

// A list of strings representing tasks to do:
const todos = [
  'Go to the store',
  'Clean the house',
  'Cook dinner',
  'Learn to code',
];

const immutableReducer = (state = todos, action) => {
  switch(action.type) {
    case ADD_TO_DO:
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: ADD_TO_DO,
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const ADD_TO_DO = 'ADD_TO_DO';

const todos = [
  'Go to the store',
  'Clean the house',
  'Cook dinner',
  'Learn to code',
];

const immutableReducer = (state = todos, action) => {
  switch(action.type) {
    case ADD_TO_DO:
      return state.concat(action.todo);
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: ADD_TO_DO,
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```
