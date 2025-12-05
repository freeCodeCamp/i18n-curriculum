---
id: bd7158d8c442eddfaeb5bd17
title: Crea una calculadora con JavaScript
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Nota:** **React 18 tiene incompatibilidades conocidas con las pruebas de este proyecto (consulta el [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construye una app que sea funcionalmente similar a esta: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Completa las historias de los usuarios que están aquí abajo y haz que pasen todas las pruebas. Utiliza cualquier librería o API que necesites. Dale tu propio estilo.

Puedes utilizar cualquier combinación de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux y jQuery para completar este proyecto. Debes usar un framework frontend (como por ejemplo React), ya que esta sección trata sobre el aprendizaje de frameworks frontend. No se recomienda utilizar tecnologías adicionales que no estén enlistadas, su uso corre bajo tu propio riesgo. Estamos buscando apoyar otros frameworks de frontend como Angular y Vue, pero actualmente no están soportados. Aceptaremos e intentaremos arreglar todos los reportes de incidentes que utilicen el stack de tecnologías sugerido para este proyecto. ¡Que tengas una feliz programación!

**Historia de usuario #1:** Mi calculadora debe contener un elemento en el que se pueda hacer clic que contenga un `=` (signo igual) con un correspondiente `id="equals"`.

**Historia de usuario #2:** Mi calculadora debe contener 10 elementos que puedan hacer clic, que contengan un número cada uno de 0-9, con los siguientes ID correspondientes: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"`, y `id="nine"`.

**Historia de usuario #3:** Mi calculadora debe contener 4 elementos que se puedan hacer clic que contengan uno de los 4 operadores matemáticos primarios con los siguientes identificadores correspondientes: `id="add"` `id="subtract"`, `id="multiply"`, `id="divide"`.

**Historia de usuario #4:** Mi calculadora debe contener un elemento que se pueda hacer clic que contenga un `.` (punto decimal) símbolo con el correspondiente `id="decimal"`.

**Historia de usuario #5:** Mi calculadora debe contener un elemento que se pueda hacer clic con un `id="clear"`.

**Historia de usuario #6:** Mi calculadora debe contener un elemento para mostrar valores con un correspondiente `id="display"`.

**Historia de usuario #7:** En cualquier momento, pulsando el botón `clear` elimina los valores de entrada y salida. Luego devuelve la calculadora a su estado inicial; debe mostrar 0 en el elemento con el id `display`.

**Historia de usuario #8:** Al introducir números, debo ser capaz de ver mi entrada en el elemento con el id `display`.

**Historia de usuario #9:** En cualquier orden, debo poder añadir, restar, multiplicar y dividir una cadena de números de cualquier longitud. Además cuando presione `=`, el resultado correcto debe mostrarse en el elemento con el id de `display`.

**Historia de usuario #10:** Al introducir números, mi calculadora no debe permitir que un número comience con varios ceros.

**Historia de usuario #11:** Cuando se hace clic en el elemento decimal, un `.` debe añadirse al valor mostrado actualmente; dos `.` en un número no debe ser aceptado.

**Historia de usuario #12:** Debe ser capaz de realizar cualquier operación (`+`, `-`, `*`, `/`) en números que contienen puntos decimales.

**Historia de usuario #13:** Si se introducen 2 o más operadores consecutivamente, la operación realizada debe ser el último operador introducido (excluyendo el signo negativo (`-`). Por ejemplo, si `5 + * 7 =` es introducido, el resultado debe ser `35` (p.e. `5 * 7`); si `5 * - 5 =` es introducido, el resultado debe ser `-25` (p.e `5 * (-5)`).

**Historia de usuario #14:** Presionando un operador inmediatamente después de `=` debe comenzar un nuevo cálculo que opere sobre el resultado de la evaluación anterior.

**Historia de usuario #15:** Mi calculadora debe tener varios decimales de precisión a la hora de redondear (tenga en cuenta que no hay un estándar exacto, pero debe ser capaz de manejar cálculos como `2 / 7` con una precisión razonable de al menos 4 decimales.

**Nota sobre la lógica de la calculadora:** Debe tener en cuenta que hay dos escuelas principales de pensamiento sobre la lógica de entrada de las calculadoras: <dfn>lógica de ejecución inmediata</dfn> y <dfn>lógica de la fórmula</dfn>. Nuestro ejemplo utiliza lógica de la fórmula. Observa el orden de precedencia de la operación, la ejecución inmediata no lo hace. Ambas son aceptables, pero ten en cuenta que dependiendo de cuál elijas, tu calculadora puede producir resultados diferentes a los nuestros para ciertas ecuaciones (ver ejemplo a continuación). Mientras tus matemáticas puedan ser verificadas por otra calculadora de producción, por favor no consideres esto un error.

**EXAMPLE:** `3 + 5 x 6 - 2 / 4 =`  

-   **Lógica de ejecución inmediata:** `11.5`
-   **Fórmula/Expresión lógica:** `32.5`

Puedes construir tu proyecto <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">usando esta plantilla de CodePen</a> y haciendo clic en `Save` para crear tu propio pen. Si prefieres usar otro entorno, entonces coloca esta etiqueta `<script>` dentro del cuerpo de tu archivo `index.html`: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Una vez que hayas terminado, envía la URL de tu proyecto funcional con todas las pruebas pasadas.

# --solutions--

```js
// solution required
```
