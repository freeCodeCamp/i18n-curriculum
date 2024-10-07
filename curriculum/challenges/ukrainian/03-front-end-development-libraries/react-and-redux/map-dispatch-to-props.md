---
id: 5a24c314108439a4d4036146
title: Мапуйте відправлення до пропсів
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

Наприклад, у вас є автор дій `loginUser()`, який приймає `username` як корисне навантаження дії. Об’єкт, повернений від `mapDispatchToProps()`, для цього автора дій виглядатиме приблизно так:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

Редактор коду надає автора дії під назвою `addMessage()`. Напишіть функцію `mapDispatchToProps()`, яка приймає `dispatch` як аргумент, а потім повертає об’єкт. Об’єкт повинен мати властивість `submitNewMessage` зі значенням функції відправлення, яка приймає параметр для додавання нового повідомлення, коли відправляє `addMessage()`.

# --hints--

`addMessage` має повернути об’єкт з ключами `type` та `message`.

```js
assert(
  (function () {
    const addMessageTest = addMessage();
    return (
      addMessageTest.hasOwnProperty('type') &&
      addMessageTest.hasOwnProperty('message')
    );
  })()
);
```

`mapDispatchToProps` має бути функцією.

```js
assert(typeof mapDispatchToProps === 'function');
```

`mapDispatchToProps` має повернути об’єкт.

```js
assert(typeof mapDispatchToProps() === 'object');
```

Відправлення `addMessage` з `submitNewMessage` від `mapDispatchToProps` має повернути повідомлення до функції відправлення.

```js
assert(
  (function () {
    let testAction;
    const dispatch = (fn) => {
      testAction = fn;
    };
    let dispatchFn = mapDispatchToProps(dispatch);
    dispatchFn.submitNewMessage('__TEST__MESSAGE__');
    return (
      testAction.type === 'ADD' && testAction.message === '__TEST__MESSAGE__'
    );
  })()
);
```

# --seed--

## --seed-contents--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line
```

# --solutions--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

// Change code below this line

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: function(message) {
      dispatch(addMessage(message));
    }
  }
};
```
