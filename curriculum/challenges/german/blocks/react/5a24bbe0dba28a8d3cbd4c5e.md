---
id: 5a24bbe0dba28a8d3cbd4c5e
title: Kommentare in JSX hinzufügen
challengeType: 6
forumTopicId: 301376
dashedName: add-comments-in-jsx
---

# --description--

JSX ist eine Syntax, die in gültiges JavaScript kompiliert wird. Manchmal müssen Sie zur besseren Lesbarkeit Kommentare in Ihren Code einfügen. Wie die meisten Programmiersprachen hat auch JSX eine eigene Art, dies zu tun.

Um Kommentare innerhalb von JSX zu setzen, verwenden Sie die Syntax `{/* */}`, um den Kommentartext einzuschließen.

# --instructions--

Der Code-Editor enthält ein JSX-Element, das dem ähnelt, was Sie in der letzten Aufgabe erstellt haben. Fügen Sie irgendwo innerhalb des bereitgestellten `div`-Elements einen Kommentar hinzu, ohne die vorhandenen `h1`- oder `p`-Elemente zu verändern.

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

Die vorhandenen `h1`- und `p`-Elemente sollten nicht verändert werden.

```js
assert(
  JSX.props.children[0].props.children === 'This is a block of JSX' &&
    JSX.props.children[1].props.children === "Here's a subtitle"
);
```

Das `JSX` sollte gültige Kommentarsyntax verwenden.

```js
assert(/<div>[\s\S]*{\s*\/\*[\s\S]*\*\/\s*}[\s\S]*<\/div>/.test(code));
```

# --seed--

## --seed-contents--

```jsx
const JSX = (
  <div>
    <h1>This is a block of JSX</h1>
    <p>Here's a subtitle</p>
  </div>
);
```

# --solutions--

```jsx
const JSX = (
<div>
  <h1>This is a block of JSX</h1>
  { /* this is a JSX comment */ }
  <p>Here's a subtitle</p>
</div>);
```
