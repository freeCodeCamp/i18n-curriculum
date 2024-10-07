---
id: 5a24c314108439a4d4036146
title: ركّب (Map) الإرسال (Dispatch) في مِيزات (Props)
challengeType: 6
forumTopicId: 301432
dashedName: map-dispatch-to-props
---

# --description--

The `mapDispatchToProps()` function is used to provide specific action creators to your React components so they can dispatch actions against the Redux store. It's similar in structure to the `mapStateToProps()` function you wrote in the last challenge. It returns an object that maps dispatch actions to property names, which become component `props`. However, instead of returning a piece of `state`, each property returns a function that calls `dispatch` with an action creator and any relevant action data. You have access to this `dispatch` because it's passed in to `mapDispatchToProps()` as a parameter when you define the function, just like you passed `state` to `mapStateToProps()`. Behind the scenes, React Redux is using Redux's `store.dispatch()` to conduct these dispatches with `mapDispatchToProps()`. This is similar to how it uses `store.subscribe()` for components that are mapped to `state`.

على سبيل المثال، لديك منشئ إجراء `loginUser()` يأخذ `username` كحمولة للإجراء. هذا الكائن ينتج من `mapDispatchToProps()` لمنشئ هذا الإجراء سيبدو شيئا مثل:

```jsx
{
  submitLoginUser: function(username) {
    dispatch(loginUser(username));
  }
}
```

# --instructions--

يوفر محرر التعليمات البرمجية منشئ إجراء يسمى `addMessage()`. اكتب الوظيفة `mapDispatchToProps()` التي تأخذ `dispatch` كحجة، ثم ارجع كائن. يجب أن يكون هذا الكائن خاصيّة `submitNewMessage` التي تم تعيينها إلى وظيفة الإرسال (dispatch)، الذي يأخذ حِجَّة الرسالة الجديدة لإضافتها عندما ترسل `addMessage()`.

# --hints--

يجب أن ينتج `addMessage` كائن مع هُوِيَّتين `type` و `message`.

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

يجب أن تكون `mapDispatchToProps` وظيفة function.

```js
assert(typeof mapDispatchToProps === 'function');
```

يجب أن تكون `mapDispatchToProps` كائن object.

```js
assert(typeof mapDispatchToProps() === 'object');
```

إرسال `addMessage` مع `submitNewMessage` من `mapDispatchToProps` يجب أن ينتج رسالة إلى وظيفة الإرسال.

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
