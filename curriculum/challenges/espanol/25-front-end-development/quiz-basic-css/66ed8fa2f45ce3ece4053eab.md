---
id: 66ed8fa2f45ce3ece4053eab
title: Cuestionario básico de CSS
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Qué significa CSS?

#### --distractors--

Cascading Style Script

---

Concatenating Style Script

---

Castor Sage Style

#### --answer--

Hojas de estilo en cascada

### --question--

#### --text--

¿Cuál de las siguientes es una regla CSS correcta?

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

¿Qué hace `<meta name="viewport">`?

#### --distractors--

Conecta hojas de estilo externas a una página web para diseño responsivo.

---

Especifica los metadatos utilizados por los motores de búsqueda para indexar una página web.

---

Especifica la codificación de caracteres utilizada en la página web.

#### --answer--

Controla la forma y el tamaño de una página web en diferentes tamaños de pantalla.

### --question--

#### --text--

¿Qué sintaxis es correcta para usar CSS en línea?

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

Al utilizar CSS interno, ¿dónde se coloca el elemento `style` dentro del HTML?

#### --distractors--

En el elemento `meta`.

---

En el elemento `script`.

---

En el elemento `body`.

#### --answer--

En el elemento `head`.

### --question--

#### --text--

¿Qué regla es correcta para establecer el ancho y la altura en CSS?

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

¿Qué selector apunta correctamente a los elementos `h1` solo cuando están dentro de un `div`?

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

¿Qué selector es correcto para apuntar a los hijos directos de un `footer`?

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

¿Qué selector es correcto para apuntar al siguiente hermano de un `img`?

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

¿Qué selector es correcto para apuntar a todos los hermanos precedidos por un elemento `img`?

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

¿Qué afirmación es VERDADERA sobre los elementos de nivel de bloque?

#### --distractors--

Los elementos de nivel de bloque se apilan horizontalmente por defecto.

---

Las propiedades `width` y `height` generalmente no se aplican a elementos de nivel de bloque a menos que se establezca su propiedad `display` en `inline-block`.

---

Los elementos de nivel de bloque no pueden contener elementos en línea dentro de ellos.

#### --answer--

Los elementos de nivel de bloque comienzan en una nueva línea y ocupan todo el ancho de su contenedor.

### --question--

#### --text--

¿Qué declaración es VERDADERA cuando se usa el valor `inline-block`?

#### --distractors--

Los elementos se apilan verticalmente, ocupando siempre todo el ancho de su contenedor.

---

Los elementos se alinean horizontalmente pero no pueden aplicar padding o margen vertical.

---

Los elementos respetan las configuraciones de ancho y altura pero no pueden contener otros elementos dentro de ellos.

#### --answer--

Los elementos retienen el flujo en línea pero permiten establecer anchura y altura.

### --question--

#### --text--

Dado los siguientes selectores, ¿cuál tiene la mayor especificidad?

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

Dado los siguientes selectores, ¿cuál tiene la menor especificidad?

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

¿Qué hace el selector `*`?

#### --distractors--

Tiene como objetivo algunos elementos de la página.

---

Tiene como objetivo elementos que tienen hijos en la página.

---

Objetivos todos los elementos `p` en la página.

#### --answer--

Objetivo todos los elementos en la página.

### --question--

#### --text--

¿Qué hace `!important` en CSS?

#### --distractors--

Hace que la regla CSS funcione exclusivamente para estilos en línea y se ignoren los estilos definidos en hojas de estilo externas o internas.

---

Desactiva todas las demás propiedades CSS aplicadas al mismo elemento, haciéndola efectivamente la única regla que afecta el estilo del elemento.

---

Se aplica a un selector determinado o grupo de elementos.

#### --answer--

Sobrescribe cualquier otro valor aplicado a la propiedad de ese selector.

### --question--

#### --text--

¿Cómo funciona el algoritmo de Cascade de CSS?

#### --distractors--

Determina los estilos del elemento basado en el orden de declaración, independientemente de otros factores.

---

Aplica estilos basándose únicamente en el orden en que están escritos, ignorando la especificidad.

---

Aplica estilos priorizando la especificidad, ignorando origen y relevancia.

#### --answer--

Determina los estilos del elemento basado en la especificidad y el orden de declaración.

### --question--

#### --text--

¿Qué regla aplica `32px` de margen a todos los lados?

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

¿Qué regla aplica `24px` de padding a la parte superior e inferior?

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

Para `padding: 10px 20px 30px 40px`, ¿cuál es el orden correcto de los valores?

#### --distractors--

Derecha, Arriba, Izquierda, Abajo.

---

Arriba, Izquierda, Abajo, Derecha.

---

Arriba, Abajo, Derecha, Izquierda.

#### --answer--

Arriba, Derecha, Abajo, Izquierda.

## --quiz--

### --question--

#### --text--

¿Cuáles son las principales partes de una regla CSS?

#### --distractors--

Elementos y atributos

---

Estilo y hojas

---

Scripts y valores

#### --answer--

Selectores y bloques de declaración

### --question--

#### --text--

¿Cuál de las siguientes es la sintaxis correcta para una regla CSS?

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

¿Cuáles son los estilos predeterminados del navegador?

#### --distractors--

Elementos HTML que tienen las mismas propiedades de estilo independientemente del navegador.

---

Son estilos obligatorios que debe usar para elementos HTML específicos.

---

Son los temas de color para los distintos navegadores.

#### --answer--

Las reglas CSS que los navegadores aplican automáticamente.

### --question--

#### --text--

¿Cuál es el valor predeterminado para la propiedad `width`?

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

¿Qué especifica la propiedad `min-height`?

#### --distractors--

La altura inicial para un elemento.

---

La altura para un elemento.

---

La altura máxima para un elemento.

#### --answer--

La altura mínima para un elemento.

### --question--

#### --text--

¿Cuál de las siguientes opciones es VERDADERA sobre el selector universal `*`?

#### --distractors--

Tiene la mayor especificidad porque puede aplicar estilo a todos los elementos de una página.

---

Contribuye con 1 a todas las partes del valor de especificidad.

---

No puede restablecer estilos entre diferentes navegadores.

#### --answer--

Tiene el valor de especificidad más bajo de cualquier selector.

### --question--

#### --text--

¿Qué selector apunta correctamente a los elementos `li` para una lista ordenada?

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

¿Qué selector apunta a los elementos de párrafo de un elemento `div`?

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

¿Dónde se aplican las propiedades de estilo `margin`?

#### --distractors--

El espacio dentro del elemento.

---

Entre el contenido y el borde.

---

En el borde del elemento.

#### --answer--

El espacio fuera del elemento.

### --question--

#### --text--

¿Dónde aplica estilo la propiedad `padding`?

#### --distractors--

Entre el borde de los elementos y los elementos circundantes.

---

El espacio fuera del elemento.

---

En el borde del elemento.

#### --answer--

El espacio dentro del elemento.

### --question--

#### --text--

¿Qué afirmación es FALSA sobre los elementos de nivel de bloque?

#### --distractors--

Pueden estirarse para ajustarse al ancho de su contenedor.

---

Los elementos de bloque comunes incluyen `div`, `párrafo` y `sección`.

---

Los elementos de nivel de bloque comienzan en una nueva línea y ocupan todo el ancho de su contenedor.

#### --answer--

No pueden ocupar todo el ancho disponible ya que están bloqueados para hacerlo.

### --question--

#### --text--

¿Cuál afirmación es FALSA cuando se usa el valor `inline-block`?

#### --distractors--

Los elementos `inline-block` se comportan como elementos en línea.

---

Pueden tener propiedades `width` y `height`.

---

Los elementos retienen el flujo en línea pero permiten establecer `width` y `height`.

#### --answer--

No comparten propiedades con elementos en línea o de nivel de bloque.

### --question--

#### --text--

¿Qué es VERDADERO sobre la palabra clave `!important`?

#### --distractors--

Se utilizan para hacer comentarios de una propiedad CSS importante.

---

Se aseguran de que una propiedad CSS tenga la sintaxis correcta.

---

Hacen las reglas CSS más fáciles de mantener.

#### --answer--

Sobrescriben la especificidad de otros selectores.

### --question--

#### --text--

¿Qué carácter precede a un nombre de selector de clase?

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

¿Qué es FALSO sobre los elementos de nivel en línea?

#### --distractors--

Solo ocupan tanto espacio como necesiten.

---

No comienzan en una nueva línea.

---

Elementos comunes en línea incluyen `span` y `img`.

#### --answer--

Siempre comienzan en una nueva línea.

### --question--

#### --text--

¿Dónde se accede a los estilos CSS internos?

#### --distractors--

Son estilos que son importantes para el proyecto, por lo que no se comparten externamente.

---

Dado que forman el núcleo de estilo del proyecto, se guardan en el archivo `styles.css` para que otras páginas web puedan acceder a ellos.

---

Se almacenan dentro del elemento `body` cuando solo hay una página web para estilizar.

#### --answer--

Se escriben dentro de la sección `style` dentro del elemento `head`.

### --question--

#### --text--

¿Cuál es el orden para aplicar la propiedad `padding` cuando se usa la sintaxis corta?

#### --distractors--

`arriba`, `abajo`, `izquierda`, `derecha`

---

`izquierda`, `derecha`, `arriba`, `abajo`

---

`derecha`, `arriba`, `izquierda`, `abajo`

#### --answer--

`arriba`, `derecha`, `abajo`, `izquierda`

### --question--

#### --text--

¿Cuál es el orden para aplicar la propiedad `margin` cuando se usa la sintaxis corta?

#### --distractors--

`izquierda`, `derecha`, `arriba`, `abajo`

---

`derecha`, `arriba`, `izquierda`, `abajo`

---

`arriba`, `abajo`, `izquierda`, `derecha`

#### --answer--

`arriba`, `derecha`, `abajo`, `izquierda`

### --question--

#### --text--

¿Para qué se utilizan los estilos CSS en línea?

#### --distractors--

Se utilizan para estilizar solo elementos en línea.

---

Se utilizan para estilizar elementos solo cuando todos aparecen en la misma línea de la vista del navegador.

---

Se utilizan para resolver el problema con la separación de preocupaciones.

#### --answer--

Se utilizan para estilizar directamente dentro del elemento, en lugar de usar CSS interno o externo.

### --question--

#### --text--

¿Qué símbolo precede al selector de ID?

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`

