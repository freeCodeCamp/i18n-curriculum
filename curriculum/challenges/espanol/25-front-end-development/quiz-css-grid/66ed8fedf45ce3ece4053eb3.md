---
id: 66ed8fedf45ce3ece4053eb3
title: Cuestionario sobre Grid CSS
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Qué es Grid CSS?

#### --distractors--

Un método utilizado para mostrar tablas en un sitio web.

---

Un método utilizado para colocar imágenes en mosaico.

---

Una forma de mostrar contornos alrededor de los elementos HTML.

#### --answer--

Un diseño bidimensional para documentos HTML.

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de crear un contenedor de cuadrícula?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

¿Qué hace la propiedad `grid-template-columns`?

#### --distractors--

Define dos columnas y tres filas para un contenedor de cuadrícula.

---

Establece todas las columnas del diseño de cuadrícula a una longitud fija.

---

Crea un contenedor de diseño de cuadrícula de dos columnas.

#### --answer--

Define el número de columnas en un diseño de cuadrícula.

### --question--

#### --text--

¿Qué hace la propiedad `grid-template-rows`?

#### --distractors--

Especifica el tamaño y la ubicación de un elemento de la cuadrícula en un diseño de cuadrícula.

---

Crea una plantilla para crear nuevas filas de cuadrícula.

---

Especifica un tamaño de fila predeterminado en el contenedor de cuadrícula.

#### --answer--

Especifica el número y la altura de cada fila en un diseño de cuadrícula.

### --question--

#### --text--

¿Qué hace la función `minmax()`?

#### --distractors--

Alterna entre el primer y el segundo valor, dependiendo del espacio disponible.

---

Devuelve el promedio de las dos entradas.

---

Establece el tamaño mínimo del elemento cuando el navegador está en modo pantalla completa.

#### --answer--

Establece los tamaños mínimos y máximos para una pista.

### --question--

#### --text--

¿Cuál es la abreviatura para las propiedades `column-gap` y `row-gap`?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

¿Cuál es la diferencia entre una cuadrícula implícita y una explícita?

#### --distractors--

Las cuadrículas implícitas usan la propiedad `grid-template-columns` mientras que las cuadrículas explícitas usan la propiedad `grid-template-rows`.

---

Las cuadrículas explícitas usan la propiedad `grid-template-columns` mientras que las cuadrículas implícitas usan la propiedad `grid-template-rows`.

---

Las cuadrículas implícitas usan las propiedades `grid-template-columns` o `grid-template-rows` para crear columnas mientras que filas y columnas se crean automáticamente en cuadrículas explícitas.

#### --answer--

Las cuadrículas explícitas utilizan las propiedades `grid-template-columns` o `grid-template-rows` para crear columnas mientras que filas y columnas se crean automáticamente en cuadrículas implícitas.

### --question--

#### --text--

¿Cuál de las siguientes unidades representa una fracción del espacio dentro del contenedor de cuadrícula?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

¿Qué son las líneas de la cuadrícula?

#### --distractors--

Abreviatura para filas y columnas.

---

Contornos de un elemento de cuadrícula.

---

Líneas a lo largo de las cuales se crean las columnas y filas de la cuadrícula.

#### --answer--

Líneas en las que comienza y termina cada uno de los elementos de la cuadrícula.

### --question--

#### --text--

¿Qué hace la propiedad `grid-column`?

#### --distractors--

Agrega un nuevo elemento de cuadrícula como hijo del elemento al que se aplica.

---

Alinea el texto en el elemento de la cuadrícula verticalmente.

---

Establece dos columnas para un contenedor de cuadrícula.

#### --answer--

Indica al elemento de la cuadrícula en qué línea de la cuadrícula debe comenzar y terminar.

### --question--

#### --text--

¿Cómo crear cuatro columnas de igual ancho?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

¿Qué hace la propiedad `grid-template-areas`?

#### --distractors--

Se utiliza para especificar dónde comienza un elemento en una línea en el contenedor de cuadrícula.

---

Se utiliza para crear huecos entre las pistas en el contenedor.

---

Se utiliza para repetir secciones en la lista de pistas.

#### --answer--

Se utiliza para proporcionar un nombre a los elementos que vas a posicionar en la cuadrícula.

### --question--

#### --text--

¿Qué hace la propiedad `grid-auto-flow`?

#### --distractors--

Controla el orden en el que se muestran los elementos de la cuadrícula.

---

Ajusta el espaciado entre los elementos de la cuadrícula.

---

Ajusta automáticamente el elemento para que encaje en la cuadrícula.

#### --answer--

Controla cómo se insertan los elementos colocados automáticamente en la cuadrícula.

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de usar la propiedad `grid-template-areas`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de trabajar con la propiedad `grid-auto-flow`?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

¿Cuál de las siguientes NO es una propiedad de cuadrícula válida?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

¿Cuáles de estas propiedades pueden usarse para centrar elementos dentro de un elemento de cuadrícula?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

¿Cuál de los siguientes es un valor correcto para usar con la propiedad `grid-auto-columns`?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

¿Qué son las pistas de cuadrícula?

#### --distractors--

Abreviatura para filas y columnas.

---

Líneas a lo largo de las cuales puedes animar el movimiento de los elementos de la cuadrícula.

---

Líneas en las que comienza y termina cada uno de los elementos de la cuadrícula.

#### --answer--

Espacios entre dos líneas de cuadrícula adyacentes.

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de usar la función `minmax()`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

¿Cómo posicionar un elemento de cuadrícula dentro del diseño definido por `grid-template-areas`?

#### --distractors--

Definiendo directamente el tamaño y la ubicación del elemento dentro de la cuadrícula usando `grid-template-rows` y `grid-template-columns`.

---

Usando la propiedad `grid-area` y especificando tanto el inicio como el final de las posiciones de fila y columna.

---

Estableciendo tanto `grid-area` como coordenadas explícitas de píxeles.

#### --answer--

Asignando el area nombrada a la propiedad `grid-area` del elemento.

### --question--

#### --text--

¿Qué controla la propiedad `grid-auto-rows`?

#### --distractors--

La altura de las filas definidas explícitamente.

---

El ancho máximo de las columnas de cuadrícula.

---

El espaciado entre filas.

#### --answer--

El tamaño de las filas creadas implícitamente.

### --question--

#### --text--

¿Qué propiedad se usaría para hacer que un elemento de cuadrícula abarque varias filas?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

¿Qué define una cuadrícula explícita?

#### --distractors--

Pistas creadas automáticamente para ajustarse al contenido.

---

Pistas definidas por la unidad `fr`.

---

Pistas añadidas con `grid-auto-flow`.

#### --answer--

Pistas establecidas explícitamente por `grid-template-columns` o `grid-template-rows`.

### --question--

#### --text--

¿Cuál valor para `grid-auto-flow` haría que los nuevos elementos llenen primero las columnas?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

¿Cuál es el propósito de `grid-template-areas`?

#### --distractors--

Generar automáticamente pistas implícitas.

---

Reemplazar la unidad `fr`.

---

Establecer valores `z-index`.

#### --answer--

Mapear visualmente elementos a áreas de cuadrícula nombradas.

### --question--

#### --text--

¿Cómo se puede hacer que un elemento de cuadrícula comience en la línea 2 de columna y termine en la línea 4 de columna?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

¿Cuál es el efecto de `grid-template-columns: 1fr 2fr 1fr`?

#### --distractors--

Crea tres columnas de igual ancho.

---

Hace que la columna del medio tenga el triple de ancho que las otras.

---

Obliga a todas las columnas a tener exactamente `1fr` de ancho.

#### --answer--

Crea tres columnas donde la del medio es el doble de ancha que los lados.

### --question--

#### --text--

¿Cómo crearías una cuadrícula con 3 columnas iguales y un espacio de `20px` entre ellas?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

¿Qué crea `repeat(3, minmax(100px, 1fr))`?

#### --distractors--

Tres columnas que no pueden reducirse a menos de `100px`.

---

Tres columnas fijas de `100px`.

---

Tres filas con altura máxima de `1fr`.

#### --answer--

Tres columnas que crecen proporcionalmente pero no se reducen a menos de `100px`.

### --question--

#### --text--

¿Cuál afirmación sobre las cuadrículas implícitas es cierta?

#### --distractors--

Las cuadrículas implícitas ignoran la propiedad `gap`.

---

Las pistas implícitas deben definirse con `grid-template-areas`.

---

Las pistas implícitas sólo se pueden crear usando la propiedad `grid-auto-flow`.

#### --answer--

Las pistas implícitas se crean cuando el contenido no se ajusta a las pistas explícitas.

### --question--

#### --text--

¿Qué hace la propiedad `place-items` en CSS Grid?

#### --distractors--

Establece el tamaño de los elementos de cuadrícula automáticamente según el espacio disponible.

---

Controla las definiciones de columna y fila de la plantilla de cuadrícula.

---

Ajusta el orden de los elementos de la cuadrícula dentro del contenedor.

#### --answer--

Es una abreviatura para alinear los elementos de cuadrícula en ambos ejes, el de bloque y el en línea.

### --question--

#### --text--

¿Qué logra este CSS?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Crea columnas fijas de `150px` que desbordan el contenedor.

---

Crea columnas que son exactamente `1fr` de ancho independientemente del contenido.

---

Crea un máximo de una columna por cada `150px` de ancho disponible.

#### --answer--

Crea columnas flexibles que tienen al menos `150px` y se colapsan cuando el espacio es limitado.

### --question--

#### --text--

¿Cómo se pueden crear diseños de cuadrícula asimétricos?

#### --distractors--

Usando solo unidades `fr`.

---

Mezclando diferentes unidades de longitud en `grid-template-columns`.

---

Estableciendo `grid-asymmetric: true`.

#### --answer--

Definiendo diferentes tamaños para cada pista.

### --question--

#### --text--

¿Qué hace `grid-column-start: 2` a un elemento de cuadrícula?

#### --distractors--

Lo hace abarcar 2 columnas.

---

Lo desplaza 2 píxeles.

---

Lo posiciona comenzando en la segunda línea vertical de la cuadrícula.

#### --answer--

Lo hace comenzar en la segunda línea de columna.

### --question--

#### --text--

¿Qué propiedad usaría para controlar el comportamiento de desbordamiento en las pistas de cuadrícula?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

¿Cuál será el resultado para el siguiente código?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

El contenedor tendrá tres columnas de igual ancho y dos filas con `150px` de altura cada una.

---

El contenedor tendrá tres columnas, todas con `100px` de ancho, y dos filas con `150px` de altura.

---

El contenedor tendrá dos filas, cada una con una altura de `1fr`.

#### --answer--

El contenedor tendrá tres columnas: 100px, `1fr` y `2fr` de ancho y dos filas: una automática y otra con `150px` de altura.

### --question--

#### --text--

¿Cómo haría que un elemento de cuadrícula abarque todas las filas disponibles?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

¿Qué propiedad controla la alineación de los elementos de cuadrícula a lo largo del eje de bloque?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

¿Cómo puede asegurarse de que un elemento de cuadrícula permanezca en la primera columna sin importar los cambios en la cuadrícula?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
