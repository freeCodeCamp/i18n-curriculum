---
id: 587d7fa6367417b2b2512bc3
title: Selezionare un gruppo di elementi con D3
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll('a');
```

Come il metodo `select()`, `selectAll()` supporta la concatenazione dei metodi, e puoi usarlo con altri metodi.

# --instructions--

Seleziona tutti i tag `li` nel documento, e cambia il loro testo nella stringa `list item` concatenando il metodo `.text()`.

# --hints--

Nella pagina ci dovrebbero essere 3 elementi `li`, e il testo in ciascuno di essi dovrebbe dire `list item`. Le maiuscole e la spaziatura dovrebbero corrispondere esattamente.

```js
const listItems = document.querySelectorAll('li');
assert.lengthOf(listItems, 3);
for (let i = 0; i < listItems.length; i++) {
  assert.match(listItems[i]?.textContent, /list item/g);
}
```

Il tuo codice dovrebbe accedere all'oggetto `d3`.

```js
assert.match(code, /d3/g);
```

Il tuo codice dovrebbe utilizzare il metodo `selectAll`.

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
