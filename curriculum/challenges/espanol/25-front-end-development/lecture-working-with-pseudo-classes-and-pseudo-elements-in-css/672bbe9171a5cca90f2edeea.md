---
id: 672bbe9171a5cca90f2edeea
title: '¿Cuáles son ejemplos de pseudoclases de acción del usuario en elementos?'
challengeType: 11
videoId: M80PYgBglmY
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --description--

Mira el video o lee la transcripciónresponde las preguntas siguientes.

# --transcript--

¿Cuáles son ejemplos de las pseudoclases de acción del usuario en elementos?

La retroalimentación del usuario es un elemento crucial del diseño web. Por ejemplo, es importante que los usuarios reciban señales visuales cuando interactúan con elementos en un sitio web, como al pasar el ratón por encima de un botón o al hacer clic en un enlace. Esta retroalimentación ayuda a los usuarios a entender el estado de los elementos interactivos, como indicar si un enlace ha sido visitado o no.

Las pseudoclases de acción del usuario en CSS son palabras clave especiales que te permiten proporcionar este tipo de retroalimentación sin necesidad de JavaScript u otros lenguajes de programación.

Estas pseudoclases incluyen `:hover`, `:active`, `:focus` y `:visited`, entre otras. Te permiten cambiar la apariencia de elementos en función de las interacciones del usuario, mejorando la experiencia del usuario en general.

Vamos a profundizar en algunas de las pseudoclases de acción del usuario que tenemos y ver cómo funcionan.

La pseudoclase `:active` aplica estilos cuando un elemento es activado por el usuario. Por ejemplo, cuando el usuario hace clic en un botón o un enlace, proporciona retroalimentación visual inmediata, mostrando a los usuarios que sus acciones están siendo reconocidas.

```css
a:active {
  color: crimson;
}
```

La pseudoclase `:hover` se activa cuando un usuario pasa el ratón por encima de un elemento con su ratón o dispositivo apuntador. Los desarrolladores a menudo la utilizan para crear retroalimentación visual para botones, enlaces o cualquier elemento que debe responder a la atención del usuario. Aquí hay un botón sobre el que un usuario podría pasar el ratón antes de hacer clic:

```html
<button class="btn">Hover Over Me</button>
```

Aquí está el CSS que cambia el color, el color de fondo y el cursor del botón una vez que el usuario pasa el ratón por encima:

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

La pseudoclase `:focus` aplica estilos cuando un elemento gana enfoque, normalmente a través de la navegación con teclado o cuando un usuario hace clic en una entrada de formulario. Esto no es solo para retroalimentación, sino también crucial para la accesibilidad. Asegura que los usuarios que dependen mucho de los teclados puedan identificar fácilmente con qué elemento están interactuando.

Aquí hay un elemento de entrada dentro de un formulario:

```html
<form>
  <input type="text" />
</form>
```

Aquí está el CSS que le da al input un borde verde oscuro sólido y un `border-radius` cuando el usuario hace clic:

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

La pseudoclase `:visited` apunta a un enlace que el usuario ha visitado. Esto puede ser útil para ayudar a los usuarios a distinguir entre las páginas que ya han visitado y las que aún no han visitado. Aquí hay un ejemplo de cambiar el color del texto del enlace a cian cuando el enlace está visitado:

```css
a:visited {
  color: cyan;
}
```

La pseudoclase `:checked` en CSS te permite diseñar elementos de formulario como casillas de verificación y botones de opción cuando están seleccionados (marcados). Esta pseudoclase es útil para personalizar la apariencia de estos elementos para mejorar la experiencia del usuario, aunque los navegadores ya proporcionan estilos predeterminados para ellos.

Aquí está el tipo de casilla que usualmente marcas para aceptar términos en un sitio web:

```html
<form>
  Agree <input class="checkbox" type="checkbox" />
</form>
```

Así es como puedes usar la pseudoclase `:checked` para indicar al usuario que está marcada:

```css
.checkbox:checked {
  appearance: none;
  width: 12px;
  height: 12px;
  background-color: red;
}
```

En este ejemplo, estamos utilizando la propiedad `appearance` configurada a `none` para eliminar el estilo predeterminado aplicado por el navegador a las entradas de casillas de verificación. Cuando el usuario marca la casilla, tendrá un color de fondo de `rojo`.

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
