---
id: 5a24c314108439a4d4036155
title: 동작 데이터를 스토어로 보내기
challengeType: 6
forumTopicId: 301448
dashedName: send-action-data-to-the-store
---

# --description--

By now you've learned how to dispatch actions to the Redux store, but so far these actions have not contained any information other than a `type`. You can also send specific data along with your actions. In fact, this is very common because actions usually originate from some user interaction and tend to carry some data with them. The Redux store often needs to know about this data.

# --instructions--

코드 에디터에는 기본적인 `notesReducer()`와 `addNoteText()` 동작 생성자가 정의되어 있습니다. `action` 객체가 반환될 수 있도록 `addNoteText()` 함수의 본문을 완성시킵니다. 객체는 `ADD_NOTE` 값의 `type` 속성을 가져야 하고 동작 생성자에 전달된 `note` 데이터를 `text` 속성의 값으로 가져야 합니다. 액션 생성자를 호출할 때 객체에 접근할 수 있는 특정 노트 정보를 전달합니다.

`notesReducer()`에 있는 `switch` 문을 완성합니다. `addNoteText()` 동작을 처리하는 케이스가 있어야 합니다. 이 케이스는 `ADD_NOTE` 종류의 동작이 있을 때마다 실행되어야 하고 `text` 속성을 들어오는`action`에 새로운 `state`로 반환해야 합니다.

동작은 코드 끝에 배정합니다. 완성이 되면 코드를 실행하고 콘솔을 관찰합니다. 특정 동작을 위한 데이터를 전송하고 스토어 `state`를 업데이트했을 때 그 데이터를 사용하는 데에 필요한 것은 이게 다입니다.

# --hints--

`addNoteText` 동작 생성자는 `type`와 `text` 키를 가진 객체를 반환해야 합니다.

```js
assert(
  (function () {
    const addNoteFn = addNoteText('__TEST__NOTE');
    return addNoteFn.type === ADD_NOTE && addNoteFn.text === '__TEST__NOTE';
  })()
);
```

`addNoteText` 액션 생성자를 가진 `ADD_NOTE` 종류의 동작을 배정하면 동작 생성자에 전달된 문자열로`state`를 업데이트해야 합니다.

```js
assert(
  (function () {
    const initialState = store.getState();
    store.dispatch(addNoteText('__TEST__NOTE'));
    const newState = store.getState();
    return initialState !== newState && newState === '__TEST__NOTE';
  })()
);
```

# --seed--

## --seed-contents--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line

    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line

  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello!'));
console.log(store.getState());
```

# --solutions--

```js
const ADD_NOTE = 'ADD_NOTE';

const notesReducer = (state = 'Initial State', action) => {
  switch(action.type) {
    // Change code below this line
    case ADD_NOTE:
      return action.text;
    // Change code above this line
    default:
      return state;
  }
};

const addNoteText = (note) => {
  // Change code below this line
  return {
    type: ADD_NOTE,
    text: note
  }
  // Change code above this line
};

const store = Redux.createStore(notesReducer);

console.log(store.getState());
store.dispatch(addNoteText('Hello Redux!'));
console.log(store.getState());
```
