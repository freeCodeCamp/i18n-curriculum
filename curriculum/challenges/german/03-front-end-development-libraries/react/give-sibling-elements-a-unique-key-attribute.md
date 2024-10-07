---
id: 5a24c314108439a4d403618b
title: Geschwisterelemente mit einem eindeutigen Schlüsselattribut versehen
challengeType: 6
forumTopicId: 301394
dashedName: give-sibling-elements-a-unique-key-attribute
---

# --description--

The last challenge showed how the `map` method is used to dynamically render a number of elements based on user input. However, there was an important piece missing from that example. When you create an array of elements, each one needs a `key` attribute set to a unique value. React uses these keys to keep track of which items are added, changed, or removed. This helps make the re-rendering process more efficient when the list is modified in any way.

**Hinweis:** Schlüssel müssen nur zwischen Geschwisterelementen eindeutig sein, sie müssen in deiner Anwendung nicht global eindeutig sein.

# --instructions--

Der Code-Editor enthält ein Array mit einigen Frontend-Frameworks und eine zustandslose funktionale Komponente namens `Frameworks()`. `Frameworks()` muss das Array in eine ungeordnete Liste umwandeln, ähnlich wie in der letzten Aufgabe. Vervollständige den `map`-Callback, um ein `li`-Element für jedes Framework im `frontEndFrameworks`-Array zurückzugeben. Achte dieses Mal darauf, dass du jedem `li` ein `key`-Attribut zuweist, das auf einen eindeutigen Wert gesetzt ist. Die `li`-Elemente sollten auch Text aus `frontEndFrameworks` enthalten.

Normalerweise solltest du den Schlüssel so gestalten, dass er das darzustellende Element eindeutig identifiziert. Als letzter Ausweg kann der Array-Index verwendet werden, aber normalerweise solltest du versuchen, eine eindeutige Kennung zu verwenden.

# --hints--

Die Komponente `Frameworks` sollte existieren und auf der Seite angezeigt werden.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('Frameworks').length === 1
);
```

`Frameworks` sollte ein `h1`-Element darstellen.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('h1').length === 1);
```

`Frameworks` sollten ein `ul`-Element darstellen.

```js
assert(Enzyme.mount(React.createElement(Frameworks)).find('ul').length === 1);
```

Das `ul`-Tag sollte 6 untergeordnete `li`-Elemente darstellen.

```js
assert(
  Enzyme.mount(React.createElement(Frameworks)).find('ul').children().length ===
    6 &&
    Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .childAt(0)
      .name() === 'li' &&
    Enzyme.mount(React.createElement(Frameworks)).find('li').length === 6
);
```

Jedes Listenelement sollte ein eindeutiges `key`-Attribut besitzen.

```js
assert(
  (() => {
    const ul = Enzyme.mount(React.createElement(Frameworks)).find('ul');
    const keys = new Set([
      ul.childAt(0).key(),
      ul.childAt(1).key(),
      ul.childAt(2).key(),
      ul.childAt(3).key(),
      ul.childAt(4).key(),
      ul.childAt(5).key()
    ]);
    return keys.size === 6;
  })()
);
```

Jedes Listenelement sollte Text aus `frontEndFrameworks` enthalten.

```js
assert(
  (() => {
    const li = Enzyme.mount(React.createElement(Frameworks))
      .find('ul')
      .children();
    return [...Array(5)].every((_, i) =>
      frontEndFrameworks.includes(li.at(i).text())
    );
  })()
);
```

# --seed--

## --after-user-code--

```jsx
ReactDOM.render(<Frameworks />, document.getElementById('root'))
```

## --seed-contents--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = null; // Change this line
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```

# --solutions--

```jsx
const frontEndFrameworks = [
  'React',
  'Angular',
  'Ember',
  'Knockout',
  'Backbone',
  'Vue'
];

function Frameworks() {
  const renderFrameworks = frontEndFrameworks.map((fw, i) => <li key={i}>{fw}</li>);
  return (
    <div>
      <h1>Popular Front End JavaScript Frameworks</h1>
      <ul>
        {renderFrameworks}
      </ul>
    </div>
  );
};
```
