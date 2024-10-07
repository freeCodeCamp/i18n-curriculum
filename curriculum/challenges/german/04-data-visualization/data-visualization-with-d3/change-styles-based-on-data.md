---
id: 587d7fa7367417b2b2512bc7
title: Stiländerung basierend auf Daten
challengeType: 6
forumTopicId: 301479
dashedName: change-styles-based-on-data
---

# --description--

D3 is about visualization and presentation of data. It's likely you'll want to change the styling of elements based on the data. For example, you may want to color a data point blue if it has a value less than 20, and red otherwise. You can use a callback function in the `style()` method and include the conditional logic. The callback function uses the `d` parameter to represent the data point:

```js
selection.style("color", (d) => {

});
```

Die `style()`-Methode kann nicht nur zum Festlegen der `color` verwendet werden - sie kann auch für andere CSS-Eigenschaften verwendet werden.

# --instructions--

Füge die `style()`-Methode zum Code im Editor hinzu, um die `color` der `h2`-Elemente bedingt festzulegen. Schreibe die Callback-Funktion so, dass sie rot zurückgibt, wenn der Datenwert kleiner ist als 20, und andernfalls grün.

**Hinweis:** Du kannst die if-else-Logik oder den ternären Operator verwenden.

# --hints--

Die erste `h2` sollte die `color` Rot haben.

```js
assert($('h2').eq(0).css('color') == 'rgb(255, 0, 0)');
```

Die zweite `h2` sollte die `color` Grün haben.

```js
assert($('h2').eq(1).css('color') == 'rgb(0, 128, 0)');
```

Die dritte `h2` sollte die `color` Grün haben.

```js
assert($('h2').eq(2).css('color') == 'rgb(0, 128, 0)');
```

Die vierte `h2` sollte die `color` Rot haben.

```js
assert($('h2').eq(3).css('color') == 'rgb(255, 0, 0)');
```

Die fünfte `h2` sollte die `color` Grün haben.

```js
assert($('h2').eq(4).css('color') == 'rgb(0, 128, 0)');
```

Die sechste `h2` sollte die `color` Rot haben.

```js
assert($('h2').eq(5).css('color') == 'rgb(255, 0, 0)');
```

Die siebte `h2` sollte die `color` Grün haben.

```js
assert($('h2').eq(6).css('color') == 'rgb(0, 128, 0)');
```

Die achte `h2` sollte die `color` Rot haben.

```js
assert($('h2').eq(7).css('color') == 'rgb(255, 0, 0)');
```

Die neunte `h2` sollte die `color` Rot haben.

```js
assert($('h2').eq(8).css('color') == 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      // Add your code below this line



      // Add your code above this line
  </script>
</body>
```

# --solutions--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select("body").selectAll("h2")
      .data(dataset)
      .enter()
      .append("h2")
      .text((d) => (d + " USD"))
      .style("color", (d) => d < 20 ? "red" : "green")
  </script>
</body>
```
