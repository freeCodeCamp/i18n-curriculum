---
id: 5a24c314108439a4d4036172
title: Den Zustand in der Benutzeroberfläche auf andere Weise darstellen
challengeType: 6
forumTopicId: 301408
dashedName: render-state-in-the-user-interface-another-way
---

# --description--

There is another way to access `state` in a component. In the `render()` method, before the `return` statement, you can write JavaScript directly. For example, you could declare functions, access data from `state` or `props`, perform computations on this data, and so on. Then, you can assign any data to variables, which you have access to in the `return` statement.

# --instructions--

Definiere in der Rendering-Methode von `MyComponent` eine Konstante(`const`) mit dem Namen `name` und setze sie auf den Wert des Namens im `state` der Komponente. Da du JavaScript direkt in diesen Teil des Codes schreiben kannst, musst du diesen Verweis nicht in geschweifte Klammern einschließen.

In der Return-Anweisung gibst du diesen Wert dann in einem `h1`-Tag mit der Variablen `name` wieder. Denke daran, dass du die JSX-Syntax (geschweifte Klammern für JavaScript) in der Return-Anweisung verwenden musst.

# --hints--

`MyComponent` sollte einen Schlüssel `name` mit dem Wert `freeCodeCamp` in seinem Zustand gespeichert haben.

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).state('name') ===
    'freeCodeCamp'
);
```

`MyComponent` sollte ein `h1`-Überschriftenelement darstellen, das von einem einzelnen `div` eingeschlossen ist.

```js
assert(
  /<div><h1>.*<\/h1><\/div>/.test(
    Enzyme.mount(React.createElement(MyComponent)).html()
  )
);
```

Das gerenderte `h1`-Tag sollte einen Verweis auf `{name}` enthalten.

```js
(getUserInput) =>
  assert(/<h1>\n*\s*\{\s*name\s*\}\s*\n*<\/h1>/.test(getUserInput('index')));
```

Das gerenderte `h1`-Überschriftenelement sollte Text enthalten, der aus dem Zustand der Komponente gerendert wurde.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ name: 'TestName' });
    return waitForIt(() => mockedComponent.html());
  };
  const firstValue = await first();
  assert(firstValue === '<div><h1>TestName</h1></div>');
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<MyComponent />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'freeCodeCamp'
    }
  }
  render() {
    // Change code below this line

    // Change code above this line
    return (
      <div>
        { /* Change code below this line */ }

        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
class MyComponent extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: 'freeCodeCamp'
    }
  }
  render() {
    // Change code below this line
    const name = this.state.name;
    // Change code above this line
    return (
      <div>
        { /* Change code below this line */ }
        <h1>{name}</h1>
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
