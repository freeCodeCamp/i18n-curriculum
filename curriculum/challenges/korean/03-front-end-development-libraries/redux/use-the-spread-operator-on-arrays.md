---
id: 5a24c314108439a4d4036159
title: 배열에서 전개 연산자를 사용하기
challengeType: 6
forumTopicId: 301452
dashedName: use-the-spread-operator-on-arrays
---

# --description--

One solution from ES6 to help enforce state immutability in Redux is the spread operator: `...`. The spread operator has a variety of applications, one of which is well-suited to the previous challenge of producing a new array from an existing array. This is relatively new, but commonly used syntax. For example, if you have an array `myArray` and write:

```js
let newArray = [...myArray];
```

`newArray`는 `myArray`의 복제본이 됩니다. 두 배열은 각각 메모리에 독립적으로 존재합니다. `newArray.push(5)` 와 같은 변형을 수행해도 `myArray`가 변경되지 않습니다. `...`는 효과적으로 `myArray`안의 값들을 새로운 배열으로 *전개* 합니다. 배열을 복제하되 새 배열에 추가 값을 추가하려면 `[...myArray, 'new value']`와 같이 작성할 수 있습니다. 이렇게 하면 `myArray`의 값과 마지막 값으로 문자열 `new value`로 구성된 새 배열이 반환됩니다. 전개 구문은 이와 같은 배열 구성에서 여러 번 사용할 수 있지만, 배열의 얕은 복사본만 만든다는 점에 유의해야 합니다. 이는 즉, 1차원 배열에 대한 불변 배열 연산만 제공한다는 뜻 입니다.

# --instructions--

전개 연산자를 사용하여 할 일이 추가되면 상태의 새 복사본을 반환합니다.

# --hints--

Redux 저장소가 존재해야 하며 `["Do not mutate state!"]`와 동일한 상태로 초기화되어야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    return (
      Array.isArray(initialState) === true &&
      initialState[0] === 'Do not mutate state!'
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
const expectedState = ['Do not mutate state!', '__TEST__TO__DO__'];
assert(isFrozen)
assert.deepEqual(finalState, expectedState);
```

전개 연산자는 새 상태를 반환하는 데 사용해야 합니다.

```js
assert(code.includes('...state'));
```

# --seed--

## --seed-contents--

```js
const immutableReducer = (state = ['Do not mutate state!'], action) => {
  switch(action.type) {
    case 'ADD_TO_DO':
      // Don't mutate state here or the tests will fail
      return
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: 'ADD_TO_DO',
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```

# --solutions--

```js
const immutableReducer = (state = ['Do not mutate state!'], action) => {
  switch(action.type) {
    case 'ADD_TO_DO':
      return [
        ...state,
        action.todo
      ];
    default:
      return state;
  }
};

const addToDo = (todo) => {
  return {
    type: 'ADD_TO_DO',
    todo
  }
}

const store = Redux.createStore(immutableReducer);
```
