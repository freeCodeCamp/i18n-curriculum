---
id: 5a24c314108439a4d4036168
title: كتابة مكون React من الصفر
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

تحديد الفئة `MyComponent` التي تمدد `React.Component`. طريقة التقديم يجب أن ينتج `div` الذي يحتوي على علامة `h1` مع النص: `My First React Component!` فيها. استخدم هذا النص بالضبط، الحالة وعلامات الترقيم مهمة. تيقن من الاتصال بالبناء للمكون (constructor) الخاص بك أيضا.

قدم هذا المكون إلى DOM باستخدام `ReactDOM.render()`. هناك `div` مع `id='challenge-node'` متاح لك للاستخدام.

# --hints--

يجب أن يكون هناك مكون React يسمى `MyComponent`.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

يجب أن يحتوي `MyComponent` على علامة `h1` مع النص `My First React Component!`, مهم الحالة وعلامات الترقيم.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` يجب أن يُنتج في DOM.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` يجب أن يكون لديه بناء (constructor) يتصل بطريقة `super` مع `props`.

```js
assert(
  MyComponent.toString().includes('MyComponent(props)') &&
    MyComponent.toString().includes('_super.call(this, props)')
);
```

# --seed--

## --seed-contents--

```jsx
// Change code below this line
```

# --solutions--

```jsx
// Change code below this line
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h1>My First React Component!</h1>
      </div>
    );
  }
};

ReactDOM.render(<MyComponent />, document.getElementById('challenge-node'));
```
