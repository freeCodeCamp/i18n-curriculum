---
id: 672bbe9171a5cca90f2edeea
title: ¿Cuáles son ejemplos de pseudoclases de acción del usuario en elementos?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

La retroalimentación del usuario es un elemento crucial del diseño web. Por ejemplo, es importante que los usuarios reciban señales visuales cuando interactúan con elementos en un sitio web, como al pasar el ratón por encima de un botón o al hacer clic en un enlace. Esta retroalimentación ayuda a los usuarios a entender el estado de los elementos interactivos, como indicar si un enlace ha sido visitado o no.

Las pseudoclases de acción del usuario en CSS son palabras clave especiales que te permiten proporcionar este tipo de retroalimentación sin necesidad de JavaScript u otros lenguajes de programación.

Estas pseudoclases incluyen `:hover`, `:active`, `:focus` y `:visited`, entre otras. Te permiten cambiar la apariencia de elementos en función de las interacciones del usuario, mejorando la experiencia del usuario en general.

Vamos a profundizar en algunas de las pseudoclases de acción del usuario que tenemos y ver cómo funcionan.

La pseudoclase `:active` aplica estilos cuando un elemento es activado por el usuario. Por ejemplo, cuando el usuario hace clic en un botón o un enlace, proporciona retroalimentación visual inmediata, mostrando a los usuarios que sus acciones están siendo reconocidas.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

La pseudoclase `:hover` se activa cuando un usuario pasa el ratón por encima de un elemento con su ratón o dispositivo apuntador. Los desarrolladores a menudo la utilizan para crear retroalimentación visual para botones, enlaces o cualquier elemento que debe responder a la atención del usuario. Aquí hay un botón sobre el que un usuario podría pasar el ratón antes de hacer clic:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

La pseudoclase `:focus` aplica estilos cuando un elemento gana enfoque, normalmente a través de la navegación con teclado o cuando un usuario hace clic en una entrada de formulario. Esto no es solo para retroalimentación, sino también crucial para la accesibilidad. Asegura que los usuarios que dependen mucho de los teclados puedan identificar fácilmente con qué elemento están interactuando. 

Aquí tienes un ejemplo de un campo de entrada que obtiene el foco cuando haces clic o navegas a él mediante el teclado:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

La pseudoclase `:visited` apunta a un enlace que el usuario ha visitado. Esto puede ser útil para ayudar a los usuarios a distinguir entre las páginas que ya han visitado y las que aún no han visitado. Aquí hay un ejemplo de cambiar el color del texto del enlace a cian cuando el enlace está visitado:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

La pseudoclase `:checked` en CSS te permite diseñar elementos de formulario como casillas de verificación y botones de opción cuando están seleccionados (marcados). Esta pseudoclase es útil para personalizar la apariencia de estos elementos para mejorar la experiencia del usuario, aunque los navegadores ya proporcionan estilos predeterminados para ellos.

Aquí tienes un ejemplo con una casilla para aceptar los términos en un sitio web. 

**NOTA**: Parte del CSS en este ejemplo usa propiedades que aún no se han explicado. Esto es solo para darte una idea de cómo crear una casilla de verificación personalizada. Aprenderás cómo funciona todo esto en futuras lecciones y talleres. 

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

En este ejemplo, estamos usando la propiedad `appearance` configurada en `none` para eliminar el estilo predeterminado que el navegador aplica a los inputs de casilla de verificación. Cuando el usuario marque la casilla, tendrá un color de fondo `green`.

Otros ejemplos de pseudoclases de acción son:

- `:focus-within`: para aplicar estilos a un elemento cuando él o cualquiera de sus descendientes tienen enfoque.
- `:enabled`: para dirigirse a los botones de formulario u otros elementos que están habilitados actualmente.
- `:disabled`: para dirigirse a los botones de formulario u otros elementos que están deshabilitados.
- `:target`: para aplicar estilos a un elemento que es el objetivo de un fragmento de URL (la parte de una URL después del símbolo `#`).

# --questions--

## --text--

¿Qué permiten hacer las pseudoclases de acción del usuario?

## --answers--

Habilitan animaciones y transiciones.

### --feedback--

Piensa en cómo puedes interactuar con los usuarios únicamente con CSS.

---

Te permiten modificar la estructura del DOM dinámicamente.

### --feedback--

Piensa en cómo puedes interactuar con los usuarios únicamente con CSS.

---

Te permiten ofrecer retroalimentación al usuario sin depender de JavaScript.

---

Te permiten dar estilo al último elemento de una lista.

### --feedback--

Piensa en cómo puedes interactuar con los usuarios únicamente con CSS.

## --video-solution--

3

## --text--

¿Qué hace la pseudoclase `:checked` en CSS?

## --answers--

Selecciona un elemento cuando está deshabilitado.

### --feedback--

Piensa en cómo los formularios manejan las selecciones del usuario.

---

Selecciona un elemento cuando se pasa por encima.

### --feedback--

Piensa en cómo los formularios manejan las selecciones del usuario.

---

Aplica estilos a elementos como casillas de verificación o botones de opción que están marcados.

---

Aplica estilos a un elemento cuando gana enfoque.

### --feedback--

Piensa en cómo los formularios manejan las selecciones del usuario.

## --video-solution--

3

## --text--

¿Qué hace la pseudoclase `:focus`?

## --answers--

Selecciona un elemento cuando se pasa el ratón por encima de él.

### --feedback--

Piensa en cómo los usuarios navegan por formularios usando un teclado.

---

Aplica estilos cuando un elemento gana enfoque, generalmente a través de la navegación con teclado o un clic.

---

Selecciona un elemento después de enviar un formulario.

### --feedback--

Piensa en cómo los usuarios navegan por formularios usando un teclado.

---

Aplica estilos a un elemento cuando está deshabilitado.

### --feedback--

Piensa en cómo los usuarios navegan por formularios usando un teclado.

## --video-solution--

2
