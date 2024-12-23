---
id: bd7157d8c242eddfaeb5bd13
title: Crea un previsualizador de Markdown
challengeType: 3
forumTopicId: 301372
dashedName: build-a-markdown-previewer
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objectivo:** Construir una aplicación que sea funcionalmente similar a esta: <a href="https://markdown-previewer.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://markdown-previewer.freecodecamp.rocks/</a>.

Completa las siguientes historias de usuario y consigue que todas las pruebas sean aprobadas. Utilice las bibliotecas o API que necesite. Dale tu estilo personal.

Puedes utilizar cualquier combinición de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux, y jQuery para completar este proyecto. Debes usar un framework de frontend (por ejemplo React), ya que esta sección es sobre el aprendizaje de este tipo de frameworks. No se recomienda utilizar tecnologías adicionales que no hayan sido mencionadas, su uso corre bajo tu propio riesgo. Estamos considerando soportar otros frameworks frontend como Angular y Vue, pero actualmente no les estamos dando soporte. Aceptaremos e intentaremos solucionar todos los reportes de problemas que utilicen el conjunto de tecnologías sugerido para este proyecto. ¡Feliz programación!

**Historia de usuario #1:** Puedo ver un elemento `textarea` con el correspondiente `id="editor"`.

**Historia de Usuario #2:** Puedo ver un elemento con eI correspondiente `id="preview"`.

**Historia de Usuario #3:** Cuando ingreso el texto en el elemento `#editor`, el elemento `#preview` se actualiza a medida que escribo para mostrar el contenido del área de texto.

**Historia de Usuario #4:** Cuando introduzco markdown tipo Github en el elemento `#editor`,el texto es rederidazo como HTML en el elemento `#preview` mientras escribo (PISTA: Es innecesario que analices Markdown tú mismo, para ello puedes importar la biblioteca Marked: <https://cdnjs.com/libraries/marked>).

**Historia de usuario #5:** Cuando se carga por primera vez mi previsualizador de lenguaje de marcado, el texto por defecto en el campo `#editor` debe contener código de Markdown válido que represente al menos uno de los siguientes elementos: un encabezado (tamaño H1), un subencabezado (tamaño H2), un enlace, código en línea, un bloque de código, un elemento de lista, una cita en bloque, una imagen y texto en negrita.

**Historia de usuario #6:** Cuando se carga mi previsualizador de markdown, el texto de markdown predeterminado en el campo `#editor` debe ser visualizado como HTML en el elemento `#preview`.

**Historia opcional (No necesitas hacer esto para pasar esta prueba):** Mi previsualizador de markdown interpreta los retornos de carro y los visualiza como elementos `br` (salto de línea).

You can build your project by <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">using this CodePen template</a> and clicking `Save` to create your own pen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Una vez que hayas terminado, envía la URL a tu proyecto de trabajo con todas sus pruebas verificadas.

# --solutions--

```js
// solution required
```
