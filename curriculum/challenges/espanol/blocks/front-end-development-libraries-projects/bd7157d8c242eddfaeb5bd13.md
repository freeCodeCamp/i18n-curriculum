---
id: bd7157d8c242eddfaeb5bd13
title: Crea un previsualizador de Markdown
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**Nota:** **React 18 tiene incompatibilidades conocidas con las pruebas de este proyecto (consulta el [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construye una app que sea funcionalmente similar a esta: <a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>.

Completa las historias de los usuarios que están aquí abajo y haz que pasen todas las pruebas. Utiliza cualquier librería o API que necesites. Dale tu propio estilo.

Puedes utilizar cualquier combinación de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux y jQuery para completar este proyecto. Debes usar un framework frontend (como por ejemplo React), ya que esta sección trata sobre el aprendizaje de frameworks frontend. No se recomienda utilizar tecnologías adicionales que no estén enlistadas, su uso corre bajo tu propio riesgo. Estamos buscando apoyar otros frameworks de frontend como Angular y Vue, pero actualmente no están soportados. Aceptaremos e intentaremos arreglar todos los reportes de incidentes que utilicen el stack de tecnologías sugerido para este proyecto. ¡Que tengas una feliz programación!

**Historia de usuario #1:** Debo ver un elemento `textarea` con el correspondiente `id="editor"`.

**Historia de usuario #2:** Debo ver un elemento con el correspondiente `id="preview"`.

**Historia de usuario #3** Cuando introduzco texto dentro del elemento `#editor`, el elemento `#preview` se actualiza mientras escribo, para mostrar el contenido del textarea.

**User Story #4:** When I enter GitHub flavored markdown into the `#editor` element, the text is rendered as HTML in the `#preview` element as I type (HINT: You don't need to parse Markdown yourself - you can import the Marked library for this: <https://cdnjs.com/libraries/marked>).

**Historia de usuario #5:** Cuando la primera vez que mi previsualizador de lenguaje de marcado se carga, el texto por defecto en el campo `#editor` debe contener un lenguaje de marcado válido que represente al menos uno de los siguientes elementos: un encabezado (tamaño H1), un subencabezado (tamaño H2), un enlace, código en línea, un bloque de código, un elemento de lista, una cita en bloque, una imagen y texto en negrita.

**Historia de usuario #6:** Cuando mi previsualizador de markdown se carga, el markdown predeterminado en el campo `#editor` debe ser renderizado como HTML en el elemento `#preview`.

**Bonus opcional (No necesitas hacer esto para pasar esta prueba):** Mi previsualizador de markdown interpreta los retornos de carro y las renderiza como elementos `br` (salto de línea).

Puedes construir tu proyecto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando esta plantilla de CodePen</a> y haciendo clic en `Save` para crear tu propio pen. Si prefieres usar otro entorno, entonces coloca esta etiqueta `<script>` dentro del cuerpo de tu archivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Una vez que hayas terminado, envía la URL de tu proyecto funcional con todas las pruebas pasadas.

# --solutions--

```js
// solution required
```
