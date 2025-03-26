---
id: 587d7fa6367417b2b2512bc3
title: Selecciona un grupo de elementos con D3
challengeType: 6
forumTopicId: 301490
dashedName: select-a-group-of-elements-with-d3
---

# --description--

D3 also has the `selectAll()` method to select a group of elements. It returns an array of HTML nodes for all the items in the document that match the input string. Here's an example to select all the anchor tags in a document:

```js
const anchors = d3.selectAll('a');
```

Al igual que el método `select()`, `selectAll()` soporta el encadenamiento de métodos, y puedes usarlo con otros métodos.

# --instructions--

Selecciona todas las etiquetas `li` en el documento, y cambia su texto a la cadena `list item` concatenando el método `.text()`.

# --hints--

Debe haber 3 elementos `li` en la pagina, y el texto en cada uno debe ser `list item`. Las mayúsculas y los espacios deben coincidir exactamente.

```js
const listItems = document.querySelectorAll('li');
assert.lengthOf(listItems, 3);
for (let i = 0; i < listItems.length; i++) {
  assert.match(listItems[i]?.textContent, /list item/g);
}
```

Tu código debe acceder al objeto `d3`.

```js
assert.match(code, /d3/g);
```

Tu código debe utilizar el método `selectAll`.

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
