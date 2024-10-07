---
id: 5a24c314108439a4d4036169
title: Übergabe von Eigenschaften an eine zustandslose funktionale Komponente
challengeType: 6
forumTopicId: 301402
dashedName: pass-props-to-a-stateless-functional-component
---

# --description--

The previous challenges covered a lot about creating and composing JSX elements, functional components, and ES6 style class components in React. With this foundation, it's time to look at another feature very common in React: **props**. In React, you can pass props, or properties, to child components. Say you have an `App` component which renders a child component called `Welcome` which is a stateless functional component. You can pass `Welcome` a `user` property by writing:

```jsx
<App>
  <Welcome user='Mark' />
</App>
```

Du verwendest **eigene HTML-Attribute**, die von dir erstellt und von React unterstützt werden, um sie an die Komponente zu übergeben. In diesem Fall wird die erstellte Eigenschaft `user` an die Komponente `Welcome` übergeben. Da `Welcome` eine zustandslose funktionale Komponente ist, kann sie auf diesen Wert wie folgt zugreifen:

```jsx
const Welcome = (props) => <h1>Hello, {props.user}!</h1>
```

Es ist Standard, diesen Wert `props` zu nennen. Wenn du mit zustandslosen funktionalen Komponenten arbeitest, betrachtest du ihn grundsätzlich als Argument für eine Funktion, die JSX zurückgibt. Du kannst auf den Wert des Arguments im Funktionskörper zugreifen. Bei Klassenkomponenten ist das ein bisschen anders.

# --instructions--

Im Code-Editor gibt es die Komponenten `Calendar` und `CurrentDate`. Wenn du `CurrentDate` aus der Kompente `Calendar` renderst, übergibst du eine Eigenschaft von `date`, die dem aktuellen Datum aus dem `Date`-Objekt von JavaScript zugewiesen ist. Dann greifst du auf diese `prop` in der Komponente `CurrentDate` zu und zeigst ihren Wert innerhalb der `p`-Tags an. Beachte, dass `prop`-Werte in geschweifte Klammern eingeschlossen sein müssen, damit sie als JavaScript ausgewertet werden können, zum Beispiel `date={Date()}`.

# --hints--

Die Komponente `Calendar` sollte ein einzelnes `div`-Element zurückgeben.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().type() === 'div';
  })()
);
```

Das zweite Kindelement der Komponente `Calendar` sollte die Komponente `CurrentDate` sein.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).name() === 'CurrentDate';
  })()
);
```

Die Komponente `CurrentDate` sollte eine Eigenschaft namens `date` besitzen.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    return mockedComponent.children().childAt(1).props().date;
  })()
);
```

Die Eigenschaft `date` des `CurrentDate` sollte einen String mit Text enthalten.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(Calendar));
    const prop = mockedComponent.children().childAt(1).props().date;
    return typeof prop === 'string' && prop.length > 0;
  })()
);
```

Die Eigenschaft `date` sollte durch den Aufruf `Date()` erzeugt werden

```js
assert(/<CurrentDatedate={Date\(\)}\/>/.test(__helpers.removeWhiteSpace(code)));
```

Die Komponente `CurrentDate` sollte den Wert aus dem `date`-prop im `p`-Tag wiedergeben.

```js
let date = 'dummy date';
assert(
  (function () {
    const mockedComponent = Enzyme.mount(
      React.createElement(CurrentDate, { date })
    );
    return mockedComponent.find('p').html().includes(date);
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Calendar />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: </p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```

# --solutions--

```jsx
const CurrentDate = (props) => {
  return (
    <div>
      { /* Change code below this line */ }
      <p>The current date is: {props.date}</p>
      { /* Change code above this line */ }
    </div>
  );
};

class Calendar extends React.Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <div>
        <h3>What date is it?</h3>
        { /* Change code below this line */ }
        <CurrentDate date={Date()} />
        { /* Change code above this line */ }
      </div>
    );
  }
};
```
