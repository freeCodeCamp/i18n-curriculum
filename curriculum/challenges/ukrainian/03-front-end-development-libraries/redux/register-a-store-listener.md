---
id: 5a24c314108439a4d4036153
title: Зареєструйте слухача сховища
challengeType: 6
forumTopicId: 301446
dashedName: register-a-store-listener
---

# --description--

Another method you have access to on the Redux `store` object is `store.subscribe()`. This allows you to subscribe listener functions to the store, which are called whenever an action is dispatched against the store. One simple use for this method is to subscribe a function to your store that simply logs a message every time an action is received and the store is updated.

# --instructions--

Напишіть функцію зворотного виклику, яка збільшує глобальну змінну `count` кожен раз, коли сховище отримує дію, і передайте цю функцію до методу `store.subscribe()`. Ви побачите, що `store.dispatch()` викликається три рази підряд, щоразу передаючи об’єкт дії. Спостерігайте за виводом консолі між відправленнями дії, щоб побачити оновлення.

# --hints--

Відправлення дії `ADD` до сховища має збільшити стан на `1`.

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

Має існувати функція слухача, прив’язана до сховища за допомогою `store.subscribe`.

```js
assert.match(code, /store\s*\.\s*subscribe\(/gm);
```

`store.subscribe` має отримати функцію.

```js
assert.match(code, /(\s*function\s*)|(\s*\(\s*\)\s*=>)/gm);
```

The function passed to `store.subscribe` should not be called.

```js
assert.notMatch(code, /store\.subscribe\(.+\(\)\)/);
```

Зворотний виклик до `store.subscribe` має збільшити глобальну змінну `count` при оновленні сховища.

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
