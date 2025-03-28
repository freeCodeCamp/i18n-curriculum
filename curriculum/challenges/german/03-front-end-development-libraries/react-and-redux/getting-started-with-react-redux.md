---
id: 5a24c314108439a4d4036141
title: Erste Schritte mit React Redux
challengeType: 6
forumTopicId: 301430
dashedName: getting-started-with-react-redux
---

# --description--

This series of challenges introduces how to use Redux with React. First, here's a review of some of the key principles of each technology. React is a view library that you provide with data, then it renders the view in an efficient, predictable way. Redux is a state management framework that you can use to simplify the management of your application's state. Typically, in a React Redux app, you create a single Redux store that manages the state of your entire app. Your React components subscribe to only the pieces of data in the store that are relevant to their role. Then, you dispatch actions directly from React components, which then trigger store updates.

Obwohl React-Komponenten ihren eigenen Zustand lokal verwalten können, ist es bei einer komplexen App in der Regel besser, den Zustand der App mit Redux an einem einzigen Ort zu bewahren. Es gibt Ausnahmen, in denen einzelne Komponenten lokale Zustände haben können, die nur für sie gelten. Da Redux nicht für die Zusammenarbeit mit React entwickelt wurde, musst du das `react-redux`-Paket verwenden. Es bietet dir die Möglichkeit, Redux `state` und `dispatch` als Eigenschaften (`props`) an deine React-Komponenten zu übergeben.

In den nächsten Aufgaben wirst du zunächst eine einfache React-Komponente erstellen, mit der du neue Textnachrichten eingeben kannst. Diese werden zu einem Array hinzugefügt, das in der Ansicht angezeigt wird. Dies ist eine gute Wiederholung dessen, was du in den React-Lektionen gelernt hast. Als Nächstes erstellst du einen Redux-Store und Aktionen, die den Status des Nachrichten-Arrays verwalten. Schließlich verwendest du `react-redux`, um den Redux-Store mit deiner Komponente zu verbinden und so den lokalen Zustand in den Redux-Store zu extrahieren.

# --instructions--

Beginne mit einer `DisplayMessages` Komponente. Füge einen Konstruktor zu dieser Komponente hinzu und initialisiere sie mit einem Status, der zwei Eigenschaften besitzt: `input`, die auf einen leeren String gesetzt wird, und `messages`, die auf ein leeres Array gesetzt wird.

# --hints--

Die Komponente `DisplayMessages` sollte ein leeres `div`-Element darstellen.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    return mockedComponent.find('div').text() === '';
  })()
);
```

Der Konstruktor `DisplayMessages` sollte richtig mit `super` aufgerufen werden und `props` übergeben.

```js
assert(
    (function () {
      const noWhiteSpace = __helpers.removeWhiteSpace(code);
      return (
        noWhiteSpace.includes('constructor(props)') &&
        noWhiteSpace.includes('super(props')
      );
    })()
  );
```

Die Komponente `DisplayMessages` sollte einen Anfangszustand haben, der `{input: "", messages: []}` lautet.

```js
assert(
  (function () {
    const mockedComponent = Enzyme.mount(React.createElement(DisplayMessages));
    const initialState = mockedComponent.state();
    return (
      typeof initialState === 'object' &&
      initialState.input === '' &&
      Array.isArray(initialState.messages) &&
      initialState.messages.length === 0
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<DisplayMessages />, document.getElementById('root'))
```

## --seed-contents--

```jsx
class DisplayMessages extends React.Component {
  // Change code below this line

  // Change code above this line
  render() {
    return <div />
  }
};
```

# --solutions--

```jsx
class DisplayMessages extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      input: '',
      messages: []
    }
  }
  render() {
    return <div/>
  }
};
```
