---
id: 5a24c314108439a4d4036168
title: Напишіть компонент React з нуля
challengeType: 6
forumTopicId: 301424
dashedName: write-a-react-component-from-scratch
---

# --description--

Now that you've learned the basics of JSX and React components, it's time to write a component on your own. React components are the core building blocks of React applications so it's important to become very familiar with writing them. Remember, a typical React component is an ES6 `class` which extends `React.Component`. It has a render method that returns HTML (from JSX) or `null`. This is the basic form of a React component. Once you understand this well, you will be prepared to start building more complex React projects.

# --instructions--

Визначте клас `MyComponent`, який розширює `React.Component`. Метод відтворення має повернути `div`, який містить тег `h1` з текстом `My First React Component!`. Використайте саме цей текст, зважайте на регістр та пунктуацію. Не забудьте викликати конструктор для компонента.

Відтворіть цей компонент в DOM, використавши `ReactDOM.render()`. Ви також можете використати `div` з `id='challenge-node'`.

# --hints--

Ви повинні мати компонент React під назвою `MyComponent`.

```js
(getUserInput) =>
  assert(
    __helpers
      .removeWhiteSpace(getUserInput('index'))
      .includes('classMyComponentextendsReact.Component{')
  );
```

`MyComponent` має містити тег `h1` з текстом `My First React Component!`. Регістр та пунктуація важливі.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
    return mockedComponent.find('h1').text() === 'My First React Component!';
  })()
);
```

`MyComponent` має відтворюватись в DOM.

```js
assert(document.getElementById('challenge-node').childNodes.length === 1);
```

`MyComponent` повинен мати конструктор, який викликає `super` з `props`.

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
