---
id: 5a24c314108439a4d4036147
title: تواصل Redux مع React
challengeType: 6
forumTopicId: 301426
dashedName: connect-redux-to-react
---

# --description--

Now that you've written both the `mapStateToProps()` and the `mapDispatchToProps()` functions, you can use them to map `state` and `dispatch` to the `props` of one of your React components. The `connect` method from React Redux can handle this task. This method takes two optional arguments, `mapStateToProps()` and `mapDispatchToProps()`. They are optional because you may have a component that only needs access to `state` but doesn't need to dispatch any actions, or vice versa.

لاستخدام هذه الطريقة، مرر الوظائف كحجج، وأستدعي فورا بالنتيجة المكون الخاص بك. هذه الجملة غير عادية بعض الشيء ويبدو كذلك:

```js
connect(mapStateToProps, mapDispatchToProps)(MyComponent)
```

**ملاحظة:** إذا كنت ترغب في حذف أحد الحجج في طريقة `connect`، مرر `null` في مكانها.

# --instructions--

يحتوي محرر التعليمات البرمجية على وظائف `mapStateToProps()`, و `mapDispatchToProps()`, و مكون React جديد يسمى `Presentational`. توصيل هذا المكون إلى Redux باستخدام طريقة `connect` من الكائن العالمي `ReactRedux`، ودعوها فورا على عنصر `Presentational`. عيّن النتيجة إلى `const` جديد يسمى `ConnectedComponent` الذي يمثل المكون المتصل. هذا كل شيء، أنت الآن متصل إلى Redux! حاول تغيير أي من الحجج `connect` إلى `null` وقم بملاحظة نتائج الاختبار.

# --hints--

يجب أن يقدم مكون `Presentational`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    return mockedComponent.find('Presentational').length === 1;
  })()
);
```

يجب أن يتلقى مكون `Presentational` مِيزة (prop) باسم `messages` عن طريق `connect`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return props.messages === '__INITIAL__STATE__';
  })()
);
```

يجب أن يتلقى مكون `Presentational` مِيزة (prop) باسم `submitNewMessage` عن طريق `connect`.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(AppWrapper));
    const props = mockedComponent.find('Presentational').props();
    return typeof props.submitNewMessage === 'function';
  })()
);
```

# --seed--

## --after-user-code--

```jsx
const store = Redux.createStore(
  (state = '__INITIAL__STATE__', action) => state
);
class AppWrapper extends React.Component {
  render() {
    return (
      <ReactRedux.Provider store = {store}>
        <ConnectedComponent/>
      </ReactRedux.Provider>
    );
  }
};
ReactDOM.render(<AppWrapper />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const addMessage = (message) => {
  return {
    type: 'ADD',
    message: message
  }
};

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: (message) => {
      dispatch(addMessage(message));
    }
  }
};

class Presentational extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <h3>This is a Presentational Component</h3>
  }
};

const connect = ReactRedux.connect;
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

const mapStateToProps = (state) => {
  return {
    messages: state
  }
};

const mapDispatchToProps = (dispatch) => {
  return {
    submitNewMessage: (message) => {
      dispatch(addMessage(message));
    }
  }
};

class Presentational extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <h3>This is a Presentational Component</h3>
  }
};

const connect = ReactRedux.connect;
// Change code below this line

const ConnectedComponent = connect(mapStateToProps, mapDispatchToProps)(Presentational);
```
