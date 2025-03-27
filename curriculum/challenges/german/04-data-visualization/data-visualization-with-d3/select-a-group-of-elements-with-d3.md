---
id: 587d7fa6367417b2b2512bc3
title: Eine Elementgruppe mit D3 auswählen
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll('a');
```

Wie die `select()`-Methode unterstützt auch `selectAll()` die Aneinanderreihung von Methoden – du kannst sie gemeinsam mit anderen Methoden verwenden.

# --instructions--

Wähle alle `li`-Tags im Dokument aus und setze deren Text auf `list item`, indem du `.text()` anreihst.

# --hints--

Die Seite sollte über 3 `li`-Elemente verfügen und der Text eines jeden solchen Elements sollte `list item` sein. Die Groß- und Kleinschreibung und die Abstände sollten genau übereinstimmen.

```js
const listItems = document.querySelectorAll('li');
assert.lengthOf(listItems, 3);
for (let i = 0; i < listItems.length; i++) {
  assert.match(listItems[i]?.textContent, /list item/g);
}
```

Dein Code sollte auf das `d3`-Objekt zugreifen.

```js
assert.match(code, /d3/g);
```

Dein Code sollte die `selectAll`-Methode verwenden.

```js
assert.match(code, /\.selectAll/g);
```

# --seed--

## --seed-contents--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    // Add your code below this line



    // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <ul>
    <li>Example</li>
    <li>Example</li>
    <li>Example</li>
  </ul>
  <script>
    d3.selectAll('li').text('list item');
  </script>
</body>
```
