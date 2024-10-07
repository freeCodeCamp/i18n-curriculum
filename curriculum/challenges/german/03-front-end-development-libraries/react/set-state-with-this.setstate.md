---
id: 5a24c314108439a4d4036173
title: Zustand mit this.setState setzen
challengeType: 6
forumTopicId: 301412
dashedName: set-state-with-this-setstate
---

# --description--

The previous challenges covered component `state` and how to initialize state in the `constructor`. There is also a way to change the component's `state`. React provides a method for updating component `state` called `setState`. You call the `setState` method within your component class like so: `this.setState()`, passing in an object with key-value pairs. The keys are your state properties and the values are the updated state data. For instance, if we were storing a `username` in state and wanted to update it, it would look like this:

```jsx
this.setState({
  username: 'Lewis'
});
```

React erwartet, dass du den `state` nie direkt änderst, sondern immer `this.setState()` verwendest, wenn Zustandsänderungen auftreten. Außerdem solltest du beachten, dass React mehrere Zustandsaktualisierungen stapeln kann, um die Leistung zu verbessern. Das bedeutet, dass Zustandsaktualisierungen durch die Methode `setState` asynchron sein können. Es gibt eine alternative Syntax für die Methode `setState`, mit der sich dieses Problem umgehen lässt. Das ist zwar selten nötig, aber es ist gut, es im Hinterkopf zu behalten! Weitere Informationen findest du in unserem <a href="https://www.freecodecamp.org/news/what-is-state-in-react-explained-with-examples/" target="_blank" rel="noopener noreferrer nofollow">React Artikel</a>.

# --instructions--

Im Code-Editor gibt es ein `button`-Element, das einen `onClick()`-Handler hat. Dieser Handler wird ausgelöst, wenn der `button` ein Klick-Ereignis im Browser erhält und führt die Methode `handleClick` aus, die auf `MyComponent` definiert ist. Innerhalb der Methode `handleClick` aktualisierst du den `state` der Komponente mit `this.setState()`. Setze die Eigenschaft `name` in `state` auf den String `React Rocks!`.

Klicke auf den Button und beobachte, wie der gerenderte Zustand aktualisiert wird. Mach dir keine Sorgen, wenn du an dieser Stelle noch nicht ganz verstehst, wie der Klick-Handler-Code funktioniert. Das wird in den kommenden Aufgaben behandelt.

# --hints--

Der Zustand von `MyComponent` sollte mit dem Schlüssel-Wert-Paar `{ name: Initial State }` initialisiert werden.

```js
assert(
  Enzyme.mount(React.createElement(MyComponent)).state('name') ===
    'Initial State'
);
```

`MyComponent` sollte ein `h1`-Überschriftenelement darstellen.

```js
assert(Enzyme.mount(React.createElement(MyComponent)).find('h1').length === 1);
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
  assert(/<h1>TestName<\/h1>/.test(firstValue));
};
```

Der Aufruf der Methode `handleClick` auf `MyComponent` sollte die Eigenschaft name in state auf den Wert `React Rocks!` setzen.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(MyComponent));
  const first = () => {
    mockedComponent.setState({ name: 'Before' });
    return waitForIt(() => mockedComponent.state('name'));
  };
  const second = () => {
    mockedComponent.instance().handleClick();
    return waitForIt(() => mockedComponent.state('name'));
  };
  const firstValue = await first();
  const secondValue = await second();
  assert(firstValue === 'Before' && secondValue === 'React Rocks!');
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
      name: 'Initial State'
    };
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick() {
    // Change code below this line

    // Change code above this line
  }
  render() {
    return (
      <div>
        <button onClick={this.handleClick}>Click Me</button>
        <h1>{this.state.name}</h1>
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
      name: 'Initial State'
    };
    this.handleClick = this.handleClick.bind(this);
  }
  handleClick() {
     // Change code below this line
    this.setState({
      name: 'React Rocks!'
    });
    // Change code above this line
  }
  render() {
    return (
      <div>
        <button onClick = {this.handleClick}>Click Me</button>
        <h1>{this.state.name}</h1>
      </div>
    );
  }
};
```
