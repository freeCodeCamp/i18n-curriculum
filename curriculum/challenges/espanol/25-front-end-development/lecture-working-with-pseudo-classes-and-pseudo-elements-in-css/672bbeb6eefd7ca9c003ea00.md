---
id: 672bbeb6eefd7ca9c003ea00
title: '¿Cuáles son ejemplos de pseudo-clases estructurales de árbol?'
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --description--

Las pseudo-clases estructurales de árbol te permiten apuntar y estilizar elementos basados en su posición dentro del árbol del documento. El árbol del documento se refiere a la estructura jerárquica de elementos en un documento HTML.

Aquí hay una lista de pseudo-clases estructurales de árbol:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Echemos un vistazo más de cerca a cada una de las pseudo-clases estructurales de árbol, acompañadas de ejemplos.

La pseudo-clase ​​`:root` es usualmente el elemento raíz `html`. Te ayuda a apuntar al nivel más alto en el documento para que puedas aplicar un estilo común a todo el documento.

```css
:root {
  background: black;
  color: aliceblue;
}
```

La pseudo-clase `:root` se usa comúnmente también en la configuración de variables CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Con variables CSS, puedes almacenar valores y reutilizarlos en tu hoja de estilo. Aprenderás más sobre esto más adelante.

Los elementos vacíos, es decir, elementos sin hijos distintos del espacio en blanco, también se incluyen en el árbol del documento. Por eso existe una pseudo-clase `:empty` para apuntar a elementos vacíos. Por ejemplo, este código HTML tiene dos elementos de lista vacíos:

```html
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

Con la pseudo-clase `:empty`, puedes estilizar los elementos de lista vacíos de manera diferente:

```css
:empty {
  background: black;
}
```

Lo más práctico con los elementos de lista vacíos es probablemente no mostrarlos en absoluto:

```css
:empty {
  display: none;
}
```

`:nth-child(n)` te permite seleccionar elementos basados en su posición dentro de un padre, mientras `:nth-last-child(n)` te permite seleccionar elementos contando desde el final. El `n` puede ser un número específico o una palabra clave como `odd` o `even`. Esto es increíblemente útil en el estilizado de celdas de tabla basadas en su posición: par e impar.

Aquí hay un ejemplo en HTML de una tabla de precios de frutas:

```html
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

Aquí está el CSS utilizando la pseudo-clase `:nth-child` para apuntar a las celdas de la tabla basadas en posiciones pares e impares:

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

Las pseudo-clases `:first-child`, `:last-child` y `:only-child` actúan sobre elementos dentro de un contenedor padre o todo el documento.

- `:first-child` selecciona el primer elemento en un elemento padre o el documento.
- `:last-child` selecciona el último elemento en un elemento padre o el documento.
- `:only-child` selecciona el único elemento en un elemento padre o el documento.

Usando las pseudo-clases `:first-child` y `:last-child` se seleccionarán ambos `Item 1` y `Item 3` en este HTML:

```html
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

Aquí está el CSS:

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

Si tienes más listas desordenadas en la página, debes ser más específico con la selección:

```css
ul li:first-child {
  background-color: orangered;
}

ul li:last-child {
  background-color: lightgreen;
}
```

Para mostrarte cómo funciona la pseudo-clase `:only-child`, aquí hay un ejemplo en HTML con dos elementos `div` por separado:

```html
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

Usar la pseudo-clase `:only-child` asegura que solo se seleccione el elemento `div` con un solo hijo:

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

Las pseudo-clases `:first-of-type` y `:last-of-type` seleccionan la primera y última aparición de un tipo de elemento específico dentro de su padre. Son útiles para aplicar estilos únicos a la primera o última instancia de ese tipo de elemento entre sus hermanos.

En el HTML a continuación, `:first-of-type` y `:last-of-type` se aplican al primer elemento y al último elemento dentro del elemento `section`:

```html
<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

Aquí está el CSS:

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

`:nth-of-type(n)` te permite seleccionar un elemento específico dentro de su padre basado en su posición entre hermanos del mismo tipo. Por ejemplo, en el HTML a continuación, `:nth-of-type(2)` apunta al segundo elemento en el contenedor:

```html
<div class="container">
  <p>First paragraph</p>
  <h2>First heading</h2>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
  <h2>Second heading</h2>
</div>
```

Aquí está el CSS:

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

`:only-of-type` selecciona un elemento si es el único de su tipo dentro de su padre. Esto puede ser útil para enfatizar elementos únicos o asegurarse de que se resalten de manera diferente cuando no forman parte de un grupo.

En el HTML a continuación, hay dos elementos `div` con uno teniendo un solo elemento:

```html
<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

Aquí está el CSS que solo se aplica al primer contenedor:

```css
p:only-of-type {
  border: 4px solid green;
}
```

# --questions--

## --text--

¿Cuál es la diferencia entre la `:first-of-type` y la `:last-of-type` pseudo-clases?

## --answers--

`:first-of-type` apunta al primer elemento de un tipo específico dentro de su padre, mientras `:last-of-type` apunta al último elemento de un tipo diferente.

### --feedback--

Considera cómo estas pseudo-clases te ayudan a estilizar las primeras y últimas instancias de una etiqueta específica, como `p` o `h1`.

---

`:first-of-type` y `:last-of-type` ambos apuntan a la primera aparición de un elemento pero en secciones diferentes del documento.

### --feedback--

Considera cómo estas pseudo-clases te ayudan a estilizar las primeras y últimas instancias de una etiqueta específica, como `p` o `h1`.

---

`:first-of-type` selecciona la primera aparición de un tipo de elemento específico dentro de su padre, mientras `:last-of-type` selecciona la última aparición de ese mismo tipo de elemento dentro de su padre.

---

`:last-of-type` aplica estilos a los primeros y últimos elementos dentro del documento, mientras `:last-of-type` aplica estilos a todos los elementos de un tipo específico.

### --feedback--

Consider how these pseudo-classes help you style the first and last instances of a particular tag, like `p` or `h1`.

## --video-solution--

3

## --text--

¿Cuál es la diferencia entre la `:first-child` y la `:last-child` pseudo-clases?

## --answers--

`:first-child` apunta al primer elemento dentro de su padre, mientras `:last-child` apunta al último elemento dentro de un padre diferente.

### --feedback--

Piensa en cómo las dos pseudo-clases te ayudan a estilizar los primeros y últimos elementos dentro del mismo contenedor padre.

---

`:first-child` apunta al primer elemento dentro de su padre, mientras `:last-child` apunta al último elemento dentro del mismo padre.

---

`:first-child` apunta al primer elemento de un tipo específico dentro de su padre, mientras `:last-child` apunta al último elemento de un tipo diferente dentro de su padre.

### --feedback--

Think about how the two pseudo-classes help you style the first and last elements within the same parent container.

---

`:first-child` apunta a los primeros y últimos elementos dentro de un padre, mientras `:last-child` apunta a todos los demás elementos.

### --feedback--

Piensa en cómo las dos pseudo-clases te ayudan a estilizar los primeros y últimos elementos dentro del mismo contenedor padre.

## --video-solution--

2

## --text--

¿Cuál pseudo-clase te permite apuntar a elementos que no tienen hijos, incluidos aquellos que contienen solo espacios en blanco?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Piensa en cómo puedes estilizar elementos que no tienen contenido.

---

`:last-child`

### --feedback--

Piensa en cómo puedes estilizar elementos que no tienen contenido.

---

`:only-of-type`

### --feedback--

Piensa en cómo puedes estilizar elementos que no tienen contenido.

## --video-solution--

1
