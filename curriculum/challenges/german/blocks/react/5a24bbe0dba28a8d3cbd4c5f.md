---
id: 5a24bbe0dba28a8d3cbd4c5f
title: HTML-Elemente im DOM rendern
challengeType: 6
forumTopicId: 301406
dashedName: render-html-elements-to-the-dom
---

# --description--

Bis jetzt haben Sie gelernt, dass JSX ein praktisches Werkzeug ist, um lesbares HTML innerhalb von JavaScript zu schreiben. Mit React können wir dieses JSX direkt in das HTML-DOM rendern, und zwar mit der Rendering-API von React, die ReactDOM heißt.

ReactDOM bietet eine einfache Methode, um React-Elemente im DOM zu rendern, die so aussieht: `ReactDOM.render(componentToRender, targetNode)`, wobei das erste Argument das React-Element oder die Komponente ist, die Sie rendern möchten, und das zweite Argument der DOM-Knoten, in den Sie die Komponente rendern wollen.

Wie zu erwarten, muss `ReactDOM.render()` nach den JSX-Element-Deklarationen aufgerufen werden, genau wie Sie Variablen deklarieren müssen, bevor Sie sie verwenden.

# --instructions--

Der Code-Editor enthält eine einfache JSX-Komponente. Verwenden Sie die `ReactDOM.render()`-Methode, um diese Komponente auf der Seite zu rendern. Sie können definierte JSX-Elemente direkt als erstes Argument übergeben und `document.getElementById()` verwenden, um den DOM-Knoten auszuwählen, in den sie gerendert werden sollen. Es steht Ihnen ein `div` mit `id='challenge-node'` zur Verfügung. Achten Sie darauf, die `JSX`-Konstante nicht zu verändern.

# --hints--

Die Konstante `JSX` sollte ein `div`-Element zurückgeben.

```js
assert(JSX.type === 'div');
```

Das `div` sollte als erstes Element einen `h1`-Tag enthalten.

```js
assert(JSX.props.children[0].type === 'h1');
```

Das `div` sollte als zweites Element einen `p`-Tag enthalten.

```js
assert(JSX.props.children[1].type === 'p');
```

Das bereitgestellte JSX-Element sollte im DOM-Knoten mit der ID `challenge-node` gerendert werden.

```js
assert(
  document.getElementById('challenge-node').childNodes[0].innerHTML ===
    '<h1>Hello World</h1><p>Lets render this to the DOM</p>'
);
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>Hello World</h1>
    <p>Lets render this to the DOM</p>
  </div>
);
// Add your code below this line
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello World</h1>
  <p>Lets render this to the DOM</p>
</div>
);
// Add your code below this line
ReactDOM.render(JSX, document.getElementById('challenge-node'));
```
