---
id: bd7158d8c442eddfaeb5bd13
title: Construye una máquina de frases aleatorias
challengeType: 3
forumTopicId: 301374
dashedName: build-a-random-quote-machine
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construye una aplicación que sea funcionalmente similar a esta: <a href="https://random-quote-machine.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://random-quote-machine.freecodecamp.rocks/</a>.

Completa las siguientes historias de usuario y consigue que todas las pruebas sean aprobadas. Utilice las bibliotecas o API que necesite. Dale tu estilo personal.

Puedes utilizar cualquier combinición de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux, y jQuery para completar este proyecto. Debes usar un framework de frontend (por ejemplo React), ya que esta sección es sobre el aprendizaje de este tipo de frameworks. No se recomienda utilizar tecnologías adicionales que no hayan sido mencionadas, su uso corre bajo tu propio riesgo. Estamos considerando soportar otros frameworks frontend como Angular y Vue, pero actualmente no les estamos dando soporte. Aceptaremos e intentaremos solucionar todos los reportes de problemas que utilicen el conjunto de tecnologías sugerido para este proyecto. ¡Feliz programación!

**Historia de usuario #1:** Puedo ver un elemento contenedor con un archivo `id="quote-box"`.

**Historia de usuario #2:** Dentro de `#quote-box`, puedo ver un elemento con su correspondiente `id="text"`.

**Historia de usuario #3:** Dentro de `#quote-box`, puedo ver un elemento con su correspondiente `id="author"`.

**Historia de usuario #4:** Dentro de `#quote-box`, puedo ver un elemento en el que se puede hacer clic con su correspondiente `id="new-quote"`.

**Historia de usuario #5:** Dentro de `#quote-box`, puedo ver un elemento clickeable `a` con su correspondiente `id="tweet-quote"`.

**Historia de usuario #6:** En la primer carga, mi máquina de frases muestra una frase aleatoria en el elemento con `id="text"`.

**Historia de usuario #7:**En el primer cargado, mi máquina de frases muestra al autor de la frase aleatoria en el elemento con `id="author"`.

**Historia de usuario #8:** Cuando se hace clic en el botón `#new-quote`, mi máquina de frases debe buscar una nueva frase y mostrarla en el elemento `#text`.

**Historia de usuario #9:** Mi máquina de frases debe buscar al autor de la nueva frase cuando se hace clic en el botón `#new-quote` y mostrarlo en el elemento `#author`.

**Historia de usuario #10:** Puedo tuitear la frase actual haciendo clic en `#tweet-quote` del elemento `a`. Este elemento `a` debe incluir la ruta `"twitter.com/intent/tweet"` en su atributo `href` para tuitear la frase actual.

**Historia de usuario #11:** El elemento contenedor `#quote-box` debe estar centrado horizontalmente. Ejecuta las pruebas con el nivel de zoom del navegador al 100% y la página maximizada.

You can build your project by <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">using this CodePen template</a> and clicking `Save` to create your own pen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Una vez que hayas terminado, envía la URL de tu proyecto funcional con todas las pruebas pasadas.

**Nota:** Twitter no permite que se carguen enlaces en un iframe. Intenta usar el atributo `target="_blank"` o `target="_top"` en el elemento `#tweet-quote` si tu tweet no se carga. `target="_top"` reemplazará la pestaña actual, así que asegúrate de que tu trabajo esté guardado.

# --solutions--

```js
// solution required
```
