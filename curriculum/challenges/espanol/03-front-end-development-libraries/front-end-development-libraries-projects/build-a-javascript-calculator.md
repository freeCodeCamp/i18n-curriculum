---
id: bd7158d8c442eddfaeb5bd17
title: Crea una calculadora con JavaScript
challengeType: 3
forumTopicId: 301371
dashedName: build-a-javascript-calculator
---

# --description--
**Note:** **React 18 has known incompatibilities with the tests for this project (see [issue](https://github.com/freeCodeCamp/freeCodeCamp/issues/45922))**

**Objetivo:** Construye una aplicación que sea funcionalmente similar a esta: <a href="https://javascript-calculator.freecodecamp.rocks/" target="_blank" rel="noopener noreferrer nofollow">https://javascript-calculator.freecodecamp.rocks/</a>.

Completa las siguientes historias de usuario y consigue que todas las pruebas sean aprobadas. Utilice las bibliotecas o API que necesite. Dale tu estilo personal.

Puedes utilizar cualquier combinición de HTML, JavaScript, CSS, Bootstrap, SASS, React, Redux, y jQuery para completar este proyecto. Debes usar un framework de frontend (por ejemplo React), ya que esta sección es sobre el aprendizaje de este tipo de frameworks. No se recomienda utilizar tecnologías adicionales que no hayan sido mencionadas, su uso corre bajo tu propio riesgo. Estamos considerando soportar otros frameworks frontend como Angular y Vue, pero actualmente no les estamos dando soporte. Aceptaremos e intentaremos solucionar todos los reportes de problemas que utilicen el conjunto de tecnologías sugerido para este proyecto. ¡Feliz programación!

**Historia de usuario #1:** Mi calculadora debe contener un elemento en el que se pueda hacer clic que contenga un `=` (signo igual) con su correspondiente `id="equals"`.

**Historia de usuario #2:** Mi calculadora debe contener 10 elementos seleccionables al hacer clic, y cada uno contiene un número de 0 a 9, con los correspondientes ID: `id="zero"`, `id="one"`, `id="two"`, `id="three"`, `id="four"`, `id="five"`, `id="six"`, `id="seven"`, `id="eight"`, y `id="nine"`.

**Historia de usuario #3:** Mi calculadora debe contener 4 elementos en los que se pueda hacer clic que contengan cada uno de los 4 operadores matemáticos primarios con los identificadores correspondientes: `id="add"` `id="subtract"`, `id="multiply"`, `id="divide"`.

**Historia de usuario #4:** Mi calculadora debe contener un elemento que se pueda hacer clic que contenga un `.` (símbolo de punto decimal) con el correspondiente `id="decimal"`.

**Historia de usuario #5:** Mi calculadora debe contener un elemento que se pueda hacer clic con un `id="clear"`.

**Historia de usuario #6:** Mi calculadora debe contener un elemento para mostrar valores con el correspondiente `id="display"`.

**Historia de usuario #7:** En cualquier momento, al pulsar el botón `clear` se eliminan los valores de entrada y salida. Luego, la calculadora se devuelve a su estado inicial; debe mostrar 0 en el elemento con el id `display`.

**Historia de usuario #8:** Al introducir números, debo ser capaz de ver mi entrada en el elemento con el id `display`.

**Historia de usuario #9:** En cualquier orden, debo poder añadir, restar, multiplicar y dividir una cadena de números de cualquier longitud. Además cuando yo presiono `=`, el resultado correcto debe mostrarse en el elemento con el id de `display`.

**Historia de usuario #10:** Al introducir números, mi calculadora no debe permitir que un número comience con varios ceros.

**Historia de usuario #11:** Cuando se hace clic en el elemento decimal, un `.` debe añadirse al valor mostrado actualmente; no se aceptan dos `.` en un número.

**Historia de usuario #12:** Debo ser capaz de realizar cualquier operación (`+`, `-`, `*`, `/`) en números que contienen puntos decimales.

**Historia de usuario #13:** Si se introducen 2 o más operadores consecutivamente, la operación realizada debe ser hecha con el último operador introducido (excluyendo el signo negativo (`-`). Por ejemplo, si se introduce `5 + * 7 =`, el resultado debe ser `35` (p.ej. `5 * 7`); si `5 * - 5 =` es introducido, el resultado debe ser `-25` (p.ej. `5 * (-5)`).

**Historia de usuario #14:** Al introducir un operador inmediatamente después de `=` debe comenzar un nuevo cálculo que opere sobre el resultado de la evaluación anterior.

**Historia de usuario #15:** Mi calculadora debe tener varios decimales de precisión a la hora de redondear (ten en cuenta que no hay un estándar exacto, pero debe ser capaz de manejar cálculos como `2 / 7` con una precisión razonable de al menos 4 decimales.

**Nota sobre la lógica de la calculadora:** Se debe tener en cuenta que hay dos escuelas principales de pensamiento sobre la lógica de entrada de las calculadoras: <dfn>lógica de ejecución inmediata</dfn> y <dfn>lógica de cálculo de fórmulas (Fórmula/expresión lógica)</dfn>. Nuestro ejemplo utiliza lógica de cálculo de fórmulas y observa el orden de precedencia de la operación; la ejecución inmediata no lo hace. Ambas son aceptables, pero ten en cuenta que dependiendo de cuál elijas, tu calculadora puede producir resultados diferentes a los nuestros para ciertas ecuaciones (ver ejemplo a continuación). En tanto tus cálculos lleguen a ser verificados por una calculadora de producción diferente, por favor no consideres esto un error.

**EJEMPLO:** `3 + 5 x 6 - 2 / 4 =`

-   **Immediate Execution Logic:** `11.5`
-   **Fórmula/Expresión lógica:** `32.5`

You can build your project by <a href='https://codepen.io/pen?template=MJjpwO' target='_blank' rel="noopener noreferrer nofollow">using this CodePen template</a> and clicking `Save` to create your own pen. If you prefer to use another environment, then put this `<script>` tag into the body of your `index.html` file: `<script src="https://cdn.freecodecamp.org/testable-projects-fcc/v1/bundle.js"></script>`

Una vez que hayas terminado, envía la URL de tu proyecto funcional con todas las pruebas realizadas.

# --solutions--

```js
// solution required
```
