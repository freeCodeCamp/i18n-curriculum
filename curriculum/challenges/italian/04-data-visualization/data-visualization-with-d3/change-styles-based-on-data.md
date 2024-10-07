---
id: 587d7fa7367417b2b2512bc7
title: Cambiare lo stile in base ai dati
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

Il metodo `style()` non si limita a impostare il `color` - può essere utilizzato anche con altre proprietà CSS.

# --instructions--

Aggiungi il metodo `style()` al codice nell'editor per impostare il `color` dell'elemento `h2` con la logica condizionale. Scrivi la funzione di callback in modo tale che se il valore dei dati è inferiore a 20, restituisca rosso, altrimenti restituisca verde.

**Nota:** È possibile utilizzare la logica if-else o l'operatore ternario.

# --hints--

Il primo `h2` dovrebbe avere un `color` rosso.

```js
assert($('h2').eq(0).css('color') == 'rgb(255, 0, 0)');
```

Il secondo `h2` dovrebbe avere un `color` verde.

```js
assert($('h2').eq(1).css('color') == 'rgb(0, 128, 0)');
```

Il terzo `h2` dovrebbe avere un `color` verde.

```js
assert($('h2').eq(2).css('color') == 'rgb(0, 128, 0)');
```

Il quarto `h2` dovrebbe avere un `color` rosso.

```js
assert($('h2').eq(3).css('color') == 'rgb(255, 0, 0)');
```

Il quinto `h2` dovrebbe avere un `color` verde.

```js
assert($('h2').eq(4).css('color') == 'rgb(0, 128, 0)');
```

Il sesto `h2` dovrebbe avere un `color` rosso.

```js
assert($('h2').eq(5).css('color') == 'rgb(255, 0, 0)');
```

Il settimo `h2` dovrebbe avere un `color` verde.

```js
assert($('h2').eq(6).css('color') == 'rgb(0, 128, 0)');
```

L'ottavo `h2` dovrebbe avere un `color` rosso.

```js
assert($('h2').eq(7).css('color') == 'rgb(255, 0, 0)');
```

Il nono `h2` dovrebbe avere un `color` rosso.

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
