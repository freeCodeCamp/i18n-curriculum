---
id: 672bbec3b86dbdaa07a5a5be
title: '¿Cuáles son ejemplos de pseudo-clases funcionales?'
challengeType: 11
videoId: eQwf6Y3N_kY
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --description--

Mira el video o lee la transcripción y responde las preguntas a continuación.

# --transcript--

¿Cuáles son ejemplos de pseudo-clases funcionales?

Las pseudo-clases funcionales te permiten seleccionar elementos basados en condiciones o relaciones más complejas. A diferencia de las pseudo-clases regulares que seleccionan elementos basados en un estado, por ejemplo, `:hover`, `:focus`, las pseudo-clases funcionales aceptan argumentos dentro de paréntesis, de ahí el nombre "pseudo-clases funcionales".

Ejemplos de pseudo-clases funcionales son:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

Veamos más a fondo cada una de estas pseudo-clases funcionales con ejemplos.

La pseudo-clase `:is()` es útil cuando deseas aplicar estilos a un grupo de elementos que comparten algunas, pero no todas, características. Por ejemplo, podrías querer estilizar diferentes tipos de botones en tu sitio web, incluyendo elementos `button`, enlaces estilizados como botones, y elementos `input` con tipos `submit` y `reset`. Aquí hay un ejemplo HTML que lo representa:

```html
<button>Click Me</button>
<a href="#" class="button">Click Me Too</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

Sin la función `:is()`, tendrías que escribir un selector complejo como este:

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: lightblue;
  border-color: lightblue;
}
```

Con la función `:is()`, puedes escribir un selector más compacto y comprensible como este:

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

La pseudo-clase `:where()` funciona de manera similar a `:is()`, pero no incrementa la especificidad de tus selectores. Esto lo hace ideal para aplicar estilos sin afectar la especificidad de otras reglas.

Por ejemplo, puedes usar la función `:where()` para aplicar cero `margin` y `padding` a los elementos de encabezado. Esto asegura que el restablecimiento no interferirá con estilos más específicos que podrías aplicar más tarde. Aquí está el HTML para eso:

```html
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>
```

Y este es el CSS:

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

Estilizar un elemento padre basado en los estados de sus hijos era previamente un desafío hasta que se introdujo la pseudo-clase `:has()`. Permite aplicar estilos a un elemento padre basado en la presencia o el estado de sus elementos hijos.

Por ejemplo, el CSS de abajo solo se aplicará a cualquier elemento `article` que tenga un `h2` en él:

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

Aquí está el HTML para eso:

```html
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

La pseudo-clase `:not()` es ideal para situaciones donde deseas aplicar estilos a un grupo de elementos, excluyendo una o más excepciones específicas. En el CSS abajo, cualquier botón que no sea un botón principal tendrá un fondo gris:

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

Aquí está el HTML para los botones:

```html
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

# --questions--

## --text--

¿Qué pseudo-clase funciona como `:is()`, pero no agrega ninguna especificidad a tu selectores?

## --answers--

`:not()`

### --feedback--

Esta pseudo-clase es ideal para aplicar estilos amplios y no invasivos.

---

`:has()`

### --feedback--

Esta pseudo-clase es ideal para aplicar estilos amplios y no invasivos.

---

`:where()`

---

`:empty`

### --feedback--

Esta pseudo-clase es ideal para aplicar estilos amplios y no invasivos.

## --video-solution--

3

## --text--

¿Cuál de estos no es una pseudo-clase funcional?

## --answers--

`:is()`

### --feedback--

Las pseudo-clases funcionales usan paréntesis y aceptan argumentos dentro de ellos.

---

`:first-child`

### --feedback--

Las pseudo-clases funcionales usan paréntesis y aceptan argumentos dentro de ellos.

---

`:has()`

### --feedback--

Las pseudo-clases funcionales usan paréntesis y aceptan argumentos dentro de ellos.

---

`:where()`

### --feedback--

Las pseudo-clases funcionales usan paréntesis y aceptan argumentos dentro de ellos.

## --video-solution--

2

## --text--

¿Cuál pseudo-clase es perfecta para una situación en la que deseas aplicar estilos a un grupo de elementos sin una o dos excepciones?

## --answers--

`:has()`

### --feedback--

Piensa en cómo puedes excluir elementos específicos de ser estilizados.

---

`:is()`

### --feedback--

Piensa en cómo puedes excluir elementos específicos de ser estilizados.

---

`:not()`

---

`:where()`

### --feedback--

Piensa en cómo puedes excluir elementos específicos de ser estilizados.

## --video-solution--

3
