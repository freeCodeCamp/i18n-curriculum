---
id: 587d7fa7367417b2b2512bc7
title: Cambia estilos con base en los datos
challengeType: 6
forumTopicId: 301479
dashedName: change-styles-based-on-data
---

# --description--

D3 se trata de la visualización y presentación de datos. Probablemente vayas a querer estilizar los elementos con base en los datos. Por ejemplo, puede que desas colorear un punto de datos en azul si tiene un valor inferior a 20, y en rojo en caso contrario. Puedes utilizar una función callback en el método `style()` e incluir la lógica condicional. La función callback utiliza el parámetro `d` para representar el punto de datos:

```js
selection.style('color', d => {});
```

El método `style()` no se limita a establecer el `color` - también se puede utilizar con otras propiedades CSS.

# --instructions--

Agrega el método `style()` al código del editor para establecer el `color` de los elementos `h2` de forma condicional. Escribe la función callback de forma que si el valor de los datos es inferior a 20, devuelva rojo, en caso contrario devuelva verde.

**Nota:** Puedes utilizar la lógica if-else, o el operador ternario.

# --hints--

El primer `h2` debe tener un `color` rojo.

```js
const headingTwoFirst = document.querySelector('h2');
assert.exists(headingTwoFirst); 
const color = window.getComputedStyle(headingTwoFirst)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

El segundo `h2` debe tener un `color` verde.

```js
const headingTwoSecond = document.querySelectorAll('h2')[1];
assert.exists(headingTwoSecond); 
const color = window.getComputedStyle(headingTwoSecond)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

El tercer `h2` debe tener un `color` verde.

```js
const headingTwoThird = document.querySelectorAll('h2')[2];
assert.exists(headingTwoThird); 
const color = window.getComputedStyle(headingTwoThird)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

El cuarto `h2` debe tener un `color` rojo.

```js
const headingTwoFourth = document.querySelectorAll('h2')[3];
assert.exists(headingTwoFourth); 
const color = window.getComputedStyle(headingTwoFourth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

El quinto `h2` debe tener un `color` verde.

```js
const headingTwoFifth = document.querySelectorAll('h2')[4];
assert.exists(headingTwoFifth); 
const color = window.getComputedStyle(headingTwoFifth)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

El sexto `h2` debe tener un `color` rojo.

```js
const headingTwoSixth = document.querySelectorAll('h2')[5];
assert.exists(headingTwoSixth); 
const color = window.getComputedStyle(headingTwoSixth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

El séptimo `h2` debe tener un `color` verde.

```js
const headingTwoSeventh = document.querySelectorAll('h2')[6];
assert.exists(headingTwoSeventh); 
const color = window.getComputedStyle(headingTwoSeventh)['color'];
assert.strictEqual(color, 'rgb(0, 128, 0)');
```

El octavo `h2` debe tener un `color` rojo.

```js
const headingTwoEighth = document.querySelectorAll('h2')[7];
assert.exists(headingTwoEighth); 
const color = window.getComputedStyle(headingTwoEighth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

El noveno `h2` debe tener un `color` rojo.

```js
const headingTwoNinth = document.querySelectorAll('h2')[8];
assert.exists(headingTwoNinth); 
const color = window.getComputedStyle(headingTwoNinth)['color'];
assert.strictEqual(color, 'rgb(255, 0, 0)');
```

# --seed--

## --seed-contents--

```html
<body>
  <script>
    const dataset = [12, 31, 22, 17, 25, 18, 29, 14, 9];

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => d + ' USD');
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

    d3.select('body')
      .selectAll('h2')
      .data(dataset)
      .enter()
      .append('h2')
      .text(d => d + ' USD')
      .style('color', d => (d < 20 ? 'red' : 'green'));
  </script>
</body>
```
