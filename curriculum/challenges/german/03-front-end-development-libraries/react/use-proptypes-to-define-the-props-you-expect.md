---
id: 5a24c314108439a4d403616d
title: Verwende PropTypes, um die Eigenschaften zu definieren, die du erwartest
challengeType: 6
forumTopicId: 301419
dashedName: use-proptypes-to-define-the-props-you-expect
---

# --description--

React provides useful type-checking features to verify that components receive props of the correct type. For example, your application makes an API call to retrieve data that you expect to be in an array, which is then passed to a component as a prop. You can set `propTypes` on your component to require the data to be of type `array`. This will throw a useful warning when the data is of any other type.

Es gilt als bewährte Methode, `propTypes` zu setzen, wenn du den Typ einer Eigenschaft schon vorher kennst. Du kannst eine `propTypes`-Eigenschaft für eine Komponente auf dieselbe Weise definieren wie `defaultProps`. Dadurch wird geprüft, ob Eigenschaften eines bestimmten Schlüssels mit einem bestimmten Typ vorhanden sind. Hier ist ein Beispiel, das den Typ `function` für eine Eigenschaft namens `handleClick` erfordert:

```js
MyComponent.propTypes = { handleClick: PropTypes.func.isRequired }
```

Im obigen Beispiel prüft der `PropTypes.func` Teil, dass `handleClick` eine Funktion ist. Das Hinzufügen von `isRequired` sagt React, dass `handleClick` eine erforderliche Eigenschaft für diese Komponente ist. Du wirst eine Warnung sehen, wenn diese Eigenschaft nicht vorhanden ist. Beachte auch, dass `func` eine `function` darstellt. Von den sieben primitiven JavaScript-Typen sind `function` und `boolean` (geschrieben als `bool`) die einzigen beiden, die eine ungewöhnliche Schreibweise verwenden. Zusätzlich zu den primitiven Typen gibt es noch andere Typen. Du kannst zum Beispiel prüfen, ob eine Eigenschaft ein React-Element ist. Alle Optionen findest du in der <a href="https://reactjs.org/docs/typechecking-with-proptypes.html#proptypes" target="_blank" rel="noopener noreferrer nofollow">Dokumentation</a>.

**Hinweis:** Seit React v15.5.0 wird `PropTypes` unabhängig von React importiert, etwa so: `import PropTypes from 'prop-types';`

# --instructions--

Definiere `propTypes` für die Komponente `Items`, um `quantity` als Eigenschaft zu verlangen und stelle sicher, dass sie vom Typ `number` ist.

# --hints--

Die Komponente `ShoppingCart` sollte gerendert werden.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('ShoppingCart').length === 1;
  })()
);
```

Die Komponente `Items` sollte gerendert werden.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(ShoppingCart));
    return mockedComponent.find('Items').length === 1;
  })()
);
```

Die Komponente `Items` sollte eine `propTypes`-Prüfung enthalten, um einen Wert für `quantity` zu verlangen und sicherzustellen, dass der Wert eine Zahl ist.

```js
(getUserInput) =>
  assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(getUserInput('index'));
      return (
        noWhiteSpace.includes('quantity:PropTypes.number.isRequired') &&
        noWhiteSpace.includes('Items.propTypes=')
      );
    })()
  );
```

# --seed--

## --before-user-code--

```jsx
var PropTypes = {
  number: { isRequired: true }
};
```

## --after-user-code--

```jsx
ReactDOM.render(<ShoppingCart />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line

// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```

# --solutions--

```jsx
const Items = (props) => {
  return <h1>Current Quantity of Items in Cart: {props.quantity}</h1>
};

// Change code below this line
Items.propTypes = {
  quantity: PropTypes.number.isRequired
};
// Change code above this line

Items.defaultProps = {
  quantity: 0
};

class ShoppingCart extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return <Items />
  }
};
```
