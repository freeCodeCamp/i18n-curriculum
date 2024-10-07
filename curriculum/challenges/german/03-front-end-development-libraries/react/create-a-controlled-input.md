---
id: 5a24c314108439a4d4036178
title: Erstelle ein kontrolliertes Eingabefeld
challengeType: 6
forumTopicId: 301385
dashedName: create-a-controlled-input
---

# --description--

Your application may have more complex interactions between `state` and the rendered UI. For example, form control elements for text input, such as `input` and `textarea`, maintain their own state in the DOM as the user types. With React, you can move this mutable state into a React component's `state`. The user's input becomes part of the application `state`, so React controls the value of that input field. Typically, if you have React components with input fields the user can type into, it will be a controlled input form.

# --instructions--

Der Code-Editor hat das Skelett einer Komponente namens `ControlledInput`, um ein kontrolliertes `input`-Element zu erstellen. Der `state` der Komponente ist bereits mit einer `input`-Eigenschaft initialisiert, die einen leeren String enthält. Dieser Wert stellt den Text dar, den ein Benutzer in das Eingabefeld (`input`) eingibt.

Als erstes erstellst du eine Methode namens `handleChange()`, die einen Parameter namens `event` besitzt. Wenn die Methode aufgerufen wird, erhält sie ein `event`-Objekt, das einen String mit Text aus dem `input`-Element enthält. Auf diesen String kannst du mit `event.target.value` innerhalb der Methode zugreifen. Aktualisiere die `input`-Eigenschaft des `state` der Komponente mit diesem neuen String.

In der `render`-Methode erstellst du das `input`-Element über dem `h4`-Tag. Füge ein `value`-Attribut hinzu, das gleich der `input`-Eigenschaft des `state` der Komponente ist. Füge dann eine `onChange`-Eigenschaft hinzu, die auf die `handleChange()`-Ereignis-Handler-Methode gesetzt ist.

Wenn du in das Eingabefeld tippst, wird dieser Text von der `handleChange()`-Methode verarbeitet, als `input`-Eigenschaft im lokalen `state` gesetzt und als Wert im `input`-Feld auf der Seite dargestellt. Der `state` der Komponente ist die einzige Quelle der Wahrheit über die Eingabedaten.

Zu guter Letzt vergiss nicht, die notwendigen Bindungen im Konstruktor hinzuzufügen.

# --hints--

`ControlledInput` sollte ein `div`-Element zurückgeben, das ein `input` und ein `p`-Tag enthält.

```js
assert(
  Enzyme.mount(React.createElement(ControlledInput))
    .find('div')
    .children()
    .find('input').length === 1 &&
    Enzyme.mount(React.createElement(ControlledInput))
      .find('div')
      .children()
      .find('p').length === 1
);
```

Der Zustand von `ControlledInput` sollte mit einer `input`-Eigenschaft initialisiert werden, die auf einen leeren String gesetzt ist.

```js
assert.strictEqual(
  Enzyme.mount(React.createElement(ControlledInput)).state('input'),
  ''
);
```

Wenn du in das Eingabeelement tippst, sollten der Zustand und der Wert der Eingabe aktualisiert werden und das `p`-Element sollte diesen Zustand während der Eingabe wiedergeben.

```js
async () => {
  const waitForIt = (fn) =>
    new Promise((resolve, reject) => setTimeout(() => resolve(fn()), 250));
  const mockedComponent = Enzyme.mount(React.createElement(ControlledInput));
  const _1 = () => {
    mockedComponent.setState({ input: '' });
    return waitForIt(() => mockedComponent.state('input'));
  };
  const _2 = () => {
    mockedComponent
      .find('input')
      .simulate('change', { target: { value: 'TestInput' } });
    return waitForIt(() => ({
      state: mockedComponent.state('input'),
      text: mockedComponent.find('p').text(),
      inputVal: mockedComponent.find('input').props().value
    }));
  };
  const before = await _1();
  const after = await _2();
  assert(
    before === '' &&
      after.state === 'TestInput' &&
      after.text === 'TestInput' &&
      after.inputVal === 'TestInput'
  );
};
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<ControlledInput />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class ControlledInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    // Change code below this line

    // Change code above this line
  }
  // Change code below this line

  // Change code above this line
  render() {
    return (
      <div>
        { /* Change code below this line */}

        { /* Change code above this line */}
        <h4>Controlled Input:</h4>
        <p>{this.state.input}</p>
      </div>
    );
  }
};
```

# --solutions--

```jsx
class ControlledInput extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: ''
    };
    this.handleChange = this.handleChange.bind(this);
  }
  handleChange(event) {
    this.setState({
      input: event.target.value
    });
  }
  render() {
    return (
      <div>
        <input
          value={this.state.input}
          onChange={this.handleChange} />
        <h4>Controlled Input:</h4>

        <p>{this.state.input}</p>
      </div>
    );
  }
};
```
