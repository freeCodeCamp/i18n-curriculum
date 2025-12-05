---
id: 66ed8ffcf45ce3ece4053eb5
title: Cuestionario de posicionamiento CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Para aprobar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál de las siguientes NO es un valor válido para la propiedad `position`?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

¿Cuál es el principal propósito de la propiedad `float` en CSS?

#### --distractors--

Los floats se utilizan para remover un elemento de su flujo normal en la página y posicionarlo automáticamente en la esquina superior derecha de la página web.

---

Los floats se utilizan para remover un elemento de su flujo normal en la página y posicionarlo en la parte superior de su contenedor.

---

Los floats se utilizan para remover un elemento de su flujo normal en la página y posicionarlo automáticamente en la esquina inferior derecha de la página web.

#### --answer--

Los floats se utilizan para remover un elemento de su flujo normal en la página y posicionarlo ya sea en el lado izquierdo o derecho de su contenedor.

### --question--

#### --text--

¿Cuál de las siguientes es un ejemplo de hacer que un elemento tipo caja flote hacia la izquierda?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

¿Cuál es el papel de la propiedad `clear`?

#### --distractors--

Se utiliza para determinar si un elemento necesita moverse hacia la parte inferior de la página.

---

Se utiliza para determinar si un elemento necesita ser completamente removido de la página.

---

Se utiliza para determinar si un elemento necesita ser fijado en la parte superior de la página.

#### --answer--

Se utiliza para determinar si un elemento necesita ser movido debajo del contenido flotado.

### --question--

#### --text--

¿Qué propiedad de CSS se utiliza para controlar el orden de apilamiento vertical de los elementos posicionados que se superponen en la página?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

¿Cuál de las siguientes es la sintaxis correcta para el posicionamiento relativo?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

¿Qué propiedad de CSS usarías para fijar un elemento en una posición determinada en la página para que no se mueva al desplazarla?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

¿Qué hace el posicionamiento absoluto a un elemento?

#### --distractors--

El posicionamiento absoluto se utiliza para determinar si un elemento necesita ser movido debajo del contenido flotado.

---

El posicionamiento absoluto se utiliza para posicionar el elemento dentro del flujo normal del documento.

---

El posicionamiento absoluto se utiliza para controlar el orden de apilamiento vertical de los elementos posicionados que se superponen en la página.

#### --answer--

La posición absoluta le permite sacar un elemento del flujo normal del documento, haciendo que se comporte de manera independiente del resto de los elementos.

### --question--

#### --text--

¿Cuál de las siguientes NO es una propiedad válida que se puede usar para el posicionamiento absoluto?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

¿Cuál es la principal diferencia entre el posicionamiento relativo y el absoluto?

#### --distractors--

El posicionamiento absoluto fija el elemento en una posición adherente mientras que el posicionamiento relativo saca un elemento del flujo normal del documento.

---

El posicionamiento relativo fija el elemento en una posición fija mientras que el posicionamiento absoluto saca un elemento del flujo normal del documento.

---

El posicionamiento absoluto posiciona el elemento dentro del flujo normal del documento mientras que el posicionamiento relativo saca un elemento del flujo normal del documento.

#### --answer--

El posicionamiento relativo coloca el elemento dentro del flujo normal del documento mientras que el posicionamiento absoluto saca un elemento del flujo normal del documento.

### --question--

#### --text--

¿Cuál de las siguientes es un ejemplo de posicionar una caja en la esquina superior izquierda de la página?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

¿Qué método de posicionamiento permite a un elemento quedarse fijo en una posición definida solo cuando se desplaza más allá de cierto punto?

#### --distractors--

Posicionamiento flotante.

---

Posicionamiento fijo.

---

Posicionamiento absoluto.

#### --answer--

Posicionamiento adhesivo.

### --question--

#### --text--

¿Cuál de las siguientes es un ejemplo correcto del uso de un posicionamiento adhesivo?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

¿Cuál es la diferencia entre el posicionamiento adhesivo y el fijo?

#### --distractors--

Los elementos adhesivos solo pueden usarse en distribuciones de tabla mientras que los elementos fijos pueden usarse en cualquier tipo de distribución CSS.

---

Los elementos adhesivos siempre permanecerán en la misma posición mientras que los elementos fijos se pegarán a un cierto punto y luego se comportarán como elementos relativos.

---

Los elementos fijos permanecerán posicionados respecto a su posición normal mientras que los elementos adhesivos solo se pegarán a un cierto punto y luego se comportarán como elementos relativos.

#### --answer--

Los elementos fijos permanecerán en la misma posición en la pantalla mientras que los elementos adhesivos solo se pegarán a un cierto punto y luego se comportarán como elementos relativos.

### --question--

#### --text--

¿Qué problema resolvió el hack de `clearfix` al trabajar con floats?

#### --distractors--

El hack de `clearfix` ayudó a resolver el problema de los elementos flotantes siendo removidos del flujo normal del documento y ubicados en una posición fija en la página.

---

El hack de `clearfix` ayudó a resolver el problema de los elementos flotantes al no ser responsivos en distribuciones para móviles y tabletas.

---

El hack de `clearfix` ayudó a resolver el problema de la desaparición de elementos flotantes de la página.

#### --answer--

El hack de `clearfix` ayudó a resolver el problema de superposiciones y colapsos en las distribuciones cuando varios elementos flotantes estaban apilados uno al lado del otro.

### --question--

#### --text--

¿Cuál de las siguientes es un ejemplo correcto para usar el hack de `clearfix`?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

¿Qué es el posicionamiento estático?

#### --distractors--

Esto se usa para remover un elemento de su flujo normal en la página y posicionarlo automáticamente en la esquina superior derecha de la página web.

---

Esto te permite sacar un elemento del flujo normal del documento, haciéndolo comportarse independientemente de otros elementos.

---

Esto permite que un elemento se adhiera a una posición definida solo cuando se desplaza más allá de un cierto punto.

#### --answer--

Este es el flujo normal para el documento. Los elementos se posicionan de arriba a abajo y de izquierda a derecha uno tras otro.

### --question--

#### --text--

¿Cuál de las siguientes es un ejemplo de fijar la barra de navegación en la parte superior de la página usando posicionamiento fijo?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

¿Cuál de las siguientes es un valor válido para usar en la propiedad `z-index`?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

¿Cuál de las siguientes es el valor por defecto de la propiedad `position`?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

¿Qué valor de `position` te permite ajustar la posición de un elemento con `top` y `left` mientras lo mantiene dentro del flujo normal del documento?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

¿Cómo se comporta inicialmente un elemento con `position: sticky;`?

#### --distractors--

Se comporta como un elemento `fixed` hasta que se alcanza una posición de desplazamiento.

---

Siempre se elimina del flujo normal del documento.

---

Se comporta como un elemento `absolute` dentro de su elemento padre.

#### --answer--

Se comporta como un elemento `relative` hasta que se alcanza una posición de desplazamiento especificada.

### --question--

#### --text--

¿Cuál de los siguientes demuestra un uso válido y efectivo de la propiedad `z-index` para hacer que `.box-two` aparezca encima de `.box-one`?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

¿Para qué se usa la propiedad `z-index` en CSS?

#### --distractors--

Establece el nivel de zoom de la página.

---

Controla la alineación horizontal de los elementos dentro de un contenedor flex.

---

Define el espacio entre el contenido de un elemento y su borde.

#### --answer--

Controla el orden de apilamiento vertical de los elementos posicionados que se superponen.

### --question--

#### --text--

Cuando aplicas `top: 10%;` a un elemento con `position: fixed;`, ¿en relación a qué se calcula el `10%`?

#### --distractors--

La altura del elemento en sí.

---

La altura de su contenedor padre.

---

El ancho del viewport.

#### --answer--

La altura del viewport.

### --question--

#### --text--

¿Cuál de los ejemplos de código es un uso correcto de la propiedad `z-index` para colocar una superposición encima de otro contenido?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

¿Qué propiedad de CSS se usa para controlar si un elemento debe moverse debajo de los elementos flotantes?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

¿Cómo se moverá un elemento con `position: relative;` y `bottom: 25px;`?

#### --distractors--

Se moverá 25px hacia abajo desde su posición normal.

---

Se moverá 25px a la derecha de su posición normal.

---

Se posicionará a 25px desde la parte inferior del viewport.

#### --answer--

Se moverá 25px hacia arriba desde su posición normal.

### --question--

#### --text--

La propiedad `z-index` solo afectará a los elementos que tengan aplicada qué propiedad CSS?

#### --distractors--

Un valor `float` distinto de `none`.

---

Un valor `display` de `inline-block`.

---

Un `background-color` establecido.

#### --answer--

Un valor de `position` distinto de `static`.

### --question--

#### --text--

¿Cuál sería el efecto de aplicar `float: right;` a un logo en un encabezado?

#### --distractors--

El logo estaría alineado a la derecha, pero permanecería en el flujo normal del documento, evitando que otro contenido se ajuste alrededor.

---

El logo se sacaría del flujo y se posicionaría en el lado derecho de toda la ventana del navegador, no de su contenedor.

---

El logo se convertiría en un elemento de nivel bloque que ocupa todo el ancho del encabezado, empujando a los otros elementos hacia abajo.

#### --answer--

El logo se eliminaría de su flujo normal y se colocaría en el lado derecho de su contenedor, con otro contenido envolviéndolo.

### --question--

#### --text--

¿Qué fragmento de CSS mantendrá un elemento fijo en la parte superior de la ventana una vez que se haya desplazado hasta allí?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

¿Cuál es el propósito específico de `clear: both;` en CSS?

#### --distractors--

Cancela la propiedad `float` en el mismo elemento, devolviéndolo al flujo normal del documento.

---

Elimina cualquier propiedad `clear` que haya sido heredada de un elemento padre, restaurando el comportamiento flotante predeterminado.

---

Solo limpia los elementos flotantes que están en el lado derecho, permitiendo que los elementos flotantes a la izquierda permanezcan como están.

#### --answer--

Garantiza que el elemento se mueva debajo de cualquier elemento flotante que aparezca antes que él tanto en el lado izquierdo como en el derecho.

### --question--

#### --text--

Dado el siguiente código, ¿cómo se posicionará `.child`?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

Se posicionará a 10px desde la parte superior del elemento `.parent`, ya que el posicionamiento `absolute` siempre es relativo al padre directo.

---

Permanecerá en su posición estática predeterminada porque el valor `absolute` es inválido sin una propiedad `z-index`.

---

Se posicionará a 10px desde la parte superior de la ventana del navegador, permaneciendo fijo en su lugar incluso cuando el usuario desplaza la página.

#### --answer--

Se posicionará a 10px desde la parte superior del bloque contenedor inicial, como el `<body>`, porque su elemento padre no está posicionado.

### --question--

#### --text--

¿Qué efecto tendrá el siguiente CSS en el elemento `.box`?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

El elemento permanecerá en su flujo normal pero estará indentado 50px desde la parte superior y la izquierda, empujando a otros elementos.

---

El elemento estará fijo al viewport y permanecerá a 50px desde la parte superior y 50px desde la izquierda, incluso cuando la página se desplace.

---

El elemento se posicionará relativo a su propio punto de inicio, moviéndose 50px hacia abajo y 50px hacia la derecha sin salir del flujo del documento.

#### --answer--

El elemento será sacado del flujo normal y colocado a 50px desde la parte superior y 50px desde la izquierda de su ancestro posicionado más cercano.

### --question--

#### --text--

¿Cuál de los siguientes valores de `position` elimina un elemento completamente del flujo normal del documento?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

Dado un elemento `.parent` y un elemento `.child`, ¿qué fragmento de CSS posicionará correctamente el `.child` a 20px desde la esquina superior izquierda del elemento `.parent`?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

¿Cuál es la diferencia entre la posición `static` y `relative`?

#### --distractors--

La posición `static` elimina un elemento del flujo del documento, mientras que la posición `relative` lo mantiene en el flujo.

---

Un elemento con `position: static;` puede desplazarse con las propiedades `top` y `left`, mientras que `position: relative;` no puede.

---

La posición `static` es para elementos a nivel de bloque, mientras que la posición `relative` está destinada solo para elementos en línea.

#### --answer--

Ambos mantienen un elemento en el flujo normal del documento, pero `relative` permite que el elemento se desplace desde su posición original.

### --question--

#### --text--

¿Qué fragmento de CSS flota correctamente una imagen a la izquierda, permitiendo que otro contenido se ajuste alrededor de ella?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

¿Cuál es la diferencia entre el posicionamiento `absolute` y `fixed`?

#### --distractors--

La posición `absolute` es relativa a la ventana gráfica, mientras que la posición `fixed` es relativa al ancestro posicionado más cercano.

---

La posición `absolute` mantiene el elemento en el flujo normal del documento, mientras que la posición `fixed` lo elimina del flujo.

---

Ambos están posicionados de forma relativa al viewport, pero los elementos `fixed` se desplazan con la página mientras que los elementos `absolute` no.

#### --answer--

La posición `absolute` es relativa al ancestro posicionado más cercano, mientras que la posición `fixed` es relativa a la ventana del navegador.

### --question--

#### --text--

¿Qué valor de `position` coloca un elemento en el flujo normal del documento y evita que las propiedades de desplazamiento como `top` y `left` tengan algún efecto?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

