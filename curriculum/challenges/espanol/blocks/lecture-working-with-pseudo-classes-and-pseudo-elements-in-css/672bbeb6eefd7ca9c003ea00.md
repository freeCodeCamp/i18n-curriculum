---
id: 672bbeb6eefd7ca9c003ea00
title: ¿Cuáles son ejemplos de pseudo-clases estructurales de árbol?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

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

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

La pseudo-clase `:root` se usa comúnmente también en la configuración de variables CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Con variables CSS, puedes almacenar valores y reutilizarlos en tu hoja de estilo. Aprenderás más sobre esto más adelante.

Los elementos vacíos, es decir, elementos sin hijos distintos del espacio en blanco, también se incluyen en el árbol del documento. Por eso existe una pseudo-clase `:empty` para apuntar a elementos vacíos.  For example, this HTML code has two empty list items. Con la pseudo-clase `:empty`, puedes estilizar los elementos de lista vacíos de manera diferente:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

Lo más práctico con los elementos de lista vacíos es probablemente no mostrarlos en absoluto:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` te permite seleccionar elementos basados en su posición dentro de un padre, mientras `:nth-last-child(n)` te permite seleccionar elementos contando desde el final. El `n` puede ser un número específico o una palabra clave como `odd` o `even`. Esto es increíblemente útil en el estilizado de celdas de tabla basadas en su posición: par e impar.

Aquí tienes un ejemplo en HTML de una tabla con una lista de precios de frutas. El CSS usa la pseudo-clase `:nth-child` para seleccionar las celdas de la tabla según posiciones impares y pares:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
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

:::

Las pseudo-clases `:first-child`, `:last-child` y `:only-child` actúan sobre elementos dentro de un contenedor padre o todo el documento.

- `:first-child` selecciona el primer elemento en un elemento padre o el documento.
- `:last-child` selecciona el último elemento en un elemento padre o el documento.
- `:only-child` selecciona el único elemento en un elemento padre o el documento.

Usar las pseudo-clases `:first-child` y `:last-child` seleccionará tanto `Item 1` como `Item 3` en este ejemplo:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Si tienes más listas desordenadas en la página, debes ser más específico con la selección: 

Para mostrarte cómo funciona la pseudo-clase `:only-child`, aquí tienes un ejemplo en HTML con dos elementos `div` separados. Usar la pseudo-clase `:only-child` asegura que solo se seleccione el elemento `div` que tiene un único hijo:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

Las pseudo-clases `:first-of-type` y `:last-of-type` seleccionan la primera y última aparición de un tipo de elemento específico dentro de su padre. Son útiles para aplicar estilos únicos a la primera o última instancia de ese tipo de elemento entre sus hermanos.

En el ejemplo siguiente, `:first-of-type` y `:last-of-type` se aplican al primer elemento y al último elemento dentro del elemento `section`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

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

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` te permite seleccionar un elemento específico dentro de su padre basado en su posición entre hermanos del mismo tipo. Por ejemplo, en el HTML a continuación, `:nth-of-type(2)` apunta al segundo elemento en el contenedor:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` selecciona un elemento si es el único de su tipo dentro de su padre. Esto puede ser útil para enfatizar elementos únicos o asegurarse de que se resalten de manera diferente cuando no forman parte de un grupo.

En el ejemplo siguiente, hay dos elementos `div`, uno de los cuales tiene un solo elemento. El CSS solo se aplica al primer contenedor:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

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

Considera cómo estas pseudo-clases te ayudan a estilizar las primeras y últimas instancias de una etiqueta específica, como `p` o `h1`.

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

Piensa en cómo las dos pseudo-clases te ayudan a estilizar los primeros y últimos elementos dentro del mismo contenedor padre.

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
