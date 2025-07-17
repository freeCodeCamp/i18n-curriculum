---
id: 66ed8ffcf45ce3ece4053eb5
title: Cuestionario de posicionamiento CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

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

El posicionamiento absoluto te permite sacar un elemento del flujo normal del documento, haciéndolo comportarse independientemente de otros elementos.

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

Este es el flujo normal para el documento. Los elementos están posicionados de arriba hacia abajo y de izquierda a derecha uno tras otro.

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

Which `position` value lets you adjust an element's position with `top` and `left` while keeping it within the normal document flow?

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

How does an element with `position: sticky;` initially behave?

#### --distractors--

It behaves like a `fixed` element until a scroll position is reached.

---

It is always removed from the normal document flow.

---

It behaves like an `absolute` element within its parent.

#### --answer--

It behaves like a `relative` element until a specified scroll position is met.

### --question--

#### --text--

Which of the following demonstrates a valid and effective use of the `z-index` property to make `.box-two` appear on top of `.box-one`?

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

What is the `z-index` property used for in CSS?

#### --distractors--

It sets the zoom level of the page.

---

It controls the horizontal alignment of elements within a flex container.

---

It defines the spacing between an element's content and its border.

#### --answer--

It controls the vertical stacking order of positioned elements that overlap.

### --question--

#### --text--

When you apply `top: 10%;` to an element with `position: fixed;`, what is the `10%` calculated in relation to?

#### --distractors--

The height of the element itself.

---

The height of its parent container.

---

The width of the viewport.

#### --answer--

The height of the viewport.

### --question--

#### --text--

Which of the code examples is a correct use of the `z-index` property to place an overlay above other content?

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

Which CSS property is used to control whether an element should be moved below floated elements?

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

How will an element with `position: relative;` and `bottom: 25px;` be moved?

#### --distractors--

It will move 25px down from its normal position.

---

It will move 25px to the right of its normal position.

---

It will be positioned 25px from the bottom of the viewport.

#### --answer--

It will move 25px up from its normal position.

### --question--

#### --text--

The `z-index` property will only affect elements that have what CSS property applied?

#### --distractors--

A `float` value other than `none`.

---

A `display` value of `inline-block`.

---

A `background-color` set.

#### --answer--

A `position` value other than `static`.

### --question--

#### --text--

What would be the effect of applying `float: right;` to a logo in a header?

#### --distractors--

The logo would be aligned to the right, but would remain in the normal document flow, preventing other content from wrapping.

---

The logo would be taken out of the flow and positioned on the right side of the entire browser viewport, not its container.

---

The logo would become a block-level element that takes up the full width of the header, pushing other elements below it.

#### --answer--

The logo would be removed from its normal flow and placed on the right side of its container, with other content wrapping around it.

### --question--

#### --text--

Which CSS snippet will keep an element fixed to the top of the viewport once it is scrolled to?

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

What is the specific purpose of `clear: both;` in CSS?

#### --distractors--

It cancels out the `float` property on the element itself, returning it to the normal document flow.

---

It removes any `clear` properties that were inherited from a parent element, restoring the default floating behavior.

---

It only clears floated elements that are on the right side, allowing left-floated elements to remain as they are.

#### --answer--

It ensures the element is moved below any floated elements that appear before it on both the left and right sides.

### --question--

#### --text--

Given the following code, how will `.child` be positioned?

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

It will be positioned 10px from the top of the `.parent` element, as `absolute` positioning is always relative to the direct parent.

---

It will remain in its default static position because the `absolute` value is invalid without a `z-index` property.

---

It will be positioned 10px from the top of the browser window, remaining fixed in place even when the user scrolls the page.

#### --answer--

It will be positioned 10px from the top of the initial containing block, such as the `<body>`, because its parent is not positioned.

### --question--

#### --text--

What effect will the following CSS have on the `.box` element?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

The element will remain in its normal flow but will be indented by 50px from the top and left, pushing other elements away.

---

The element will be fixed to the viewport and will stay 50px from the top and 50px from the left, even when the page is scrolled.

---

The element will be positioned relative to its own starting point, moving 50px down and 50px to the right without leaving the document flow.

#### --answer--

The element will be taken out of the normal flow and placed 50px from the top and 50px from the left of its nearest positioned ancestor.

### --question--

#### --text--

Which of the following `position` values removes an element entirely from the document's normal flow?

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

Given a `.parent` and a `.child` element, which CSS snippet will correctly position the `.child` 20px from the top left corner of the `.parent` element?

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

What is the difference between `static` and `relative` positioning?

#### --distractors--

`static` positioning removes an element from the document flow, while `relative` positioning keeps it in the flow.

---

An element with `position: static;` can be offset with the `top` and `left` properties, while `position: relative;` cannot.

---

`static` positioning is for block-level elements, while `relative` positioning is only intended for inline elements.

#### --answer--

Both keep an element in the normal document flow, but `relative` allows the element to be offset from its original position.

### --question--

#### --text--

Which CSS snippet correctly floats an image to the left, allowing other content to wrap around it?

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

What is the difference between `absolute` and `fixed` positioning?

#### --distractors--

`absolute` positioning is relative to the viewport, while `fixed` positioning is relative to the nearest positioned ancestor.

---

`absolute` positioning keeps the element in the normal document flow, while `fixed` positioning removes it from the flow.

---

Both are positioned relative to the viewport, but `fixed` elements will scroll with the page while `absolute` elements will not.

#### --answer--

`absolute` positioning is relative to the nearest positioned ancestor, while `fixed` positioning is relative to the browser viewport.

### --question--

#### --text--

Which `position` value places an element in the normal document flow and prevents offset properties like `top` and `left` from having any effect?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

