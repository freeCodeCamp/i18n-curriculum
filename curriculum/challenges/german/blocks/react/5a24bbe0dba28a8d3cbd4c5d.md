---
id: 5a24bbe0dba28a8d3cbd4c5d
title: Erstellen Sie ein komplexes JSX-Element
challengeType: 6
forumTopicId: 301382
dashedName: create-a-complex-jsx-element
---

# --description--

Die letzte Aufgabe war ein einfaches Beispiel für JSX, aber JSX kann auch komplexeres HTML darstellen.

Eine wichtige Sache, die Sie über verschachteltes JSX wissen sollten, ist, dass es ein einzelnes Element zurückgeben muss.

Dieses eine Elternelement würde alle anderen Ebenen der verschachtelten Elemente umschließen.

Zum Beispiel werden mehrere JSX-Elemente, die als Geschwister ohne ein umschließendes Elternelement geschrieben sind, nicht transpiliert.

Hier ist ein Beispiel:

**Gültiges JSX:**

```jsx
<div>
  <p>Paragraph One</p>
  <p>Paragraph Two</p>
  <p>Paragraph Three</p>
</div>
```

**Ungültiges JSX:**

```jsx
<p>Paragraph One</p>
<p>Paragraph Two</p>
<p>Paragraph Three</p>
```

# --instructions--

Definieren Sie eine neue Konstante `JSX`, die ein `div` rendert, das die folgenden Elemente in dieser Reihenfolge enthält:

Ein `h1`, ein `p` und eine ungeordnete Liste, die drei `li`-Elemente enthält. Sie können in jedem Element beliebigen Text einfügen.

**Hinweis:** Wenn Sie mehrere Elemente so rendern, können Sie sie alle in runde Klammern setzen, aber das ist nicht zwingend erforderlich. Beachten Sie auch, dass diese Aufgabe ein `div`-Tag verwendet, um alle Kind-Elemente innerhalb eines einzigen Elternelements zu umschließen. Wenn Sie das `div` entfernen, wird das JSX nicht mehr transpiliert. Behalten Sie das im Hinterkopf, da dies auch gilt, wenn Sie JSX-Elemente in React-Komponenten zurückgeben.

# --hints--

Die Konstante `JSX` sollte ein `div`-Element zurückgeben.

```js
assert(JSX.type === 'div');
```

Das `div` sollte als erstes Element ein `h1`-Tag enthalten.

```js
assert(JSX.props.children[0].type === 'h1');
```

Das `div` sollte als zweites Element ein `p`-Tag enthalten.

```js
assert(JSX.props.children[1].type === 'p');
```

Das `div` sollte als drittes Element ein `ul`-Tag enthalten.

```js
assert(JSX.props.children[2].type === 'ul');
```

Das `ul` sollte drei `li`-Elemente enthalten.

```js
assert(
  JSX.props.children
    .filter((ele) => ele.type === 'ul')[0]
    .props.children.filter((ele) => ele.type === 'li').length === 3
);
```

# --seed--

## --seed-contents--

```jsx

```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>Hello JSX!</h1>
  <p>Some info</p>
  <ul>
    <li>An item</li>
    <li>Another item</li>
    <li>A third item</li>
  </ul>
</div>);
```
