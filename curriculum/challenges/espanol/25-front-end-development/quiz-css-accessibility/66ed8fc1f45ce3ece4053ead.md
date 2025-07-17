---
id: 66ed8fc1f45ce3ece4053ead
title: Cuestionario de Accesibilidad CSS
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 9 de las 10 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Por qué necesita tener buen contraste de colores en su página web?

#### --distractors--

Para hacer que la página sea más vibrante.

---

Para cumplir con los requisitos de la optimización para motores de búsqueda (SEO).

---

Para hacer que los elementos importantes de la página se destaquen.

#### --answer--

Para que el contenido de la página sea accesible y legible.

### --question--

#### --text--

¿Cuál de las siguientes herramientas le permite ingresar colores de fondo y primer plano para verificar la relación de contraste?

#### --distractors--

TPGi Analizador de Contraste de Color

---

Figma

---

Canva

#### --answer--

Comprobador de Contraste de Color de WebAIM

### --question--

#### --text--

¿Cuál de las siguientes herramientas le permite seleccionar colores de fondo y primer plano de una página web en vivo y verificar su relación de contraste?

#### --distractors--

Figma

---

Canva

---

Comprobador de Contraste de Color de WebAIM

#### --answer--

TPGi Analizador de Contraste de Color

### --question--

#### --text--

¿Por qué NO debe usar `display: none` y `visibility: hidden` para ocultar visualmente el contenido?

#### --distractors--

Estos métodos hacen que solo las tecnologías de asistencia como los lectores de pantalla puedan acceder al contenido oculto.

---

Estos métodos hacen que el contenido esté oculto solo hasta que los usuarios muevan el mouse sobre el contenido.

---

Estos métodos no funcionan con algunos navegadores.

#### --answer--

Estos métodos eliminan el contenido del árbol de accesibilidad, lo que hace imposible que los lectores de pantalla accedan al contenido oculto.

### --question--

#### --text--

¿Qué es un árbol de accesibilidad?

#### --distractors--

Una representación visual del diseño de una página web.

---

Una estructura utilizada por los lectores de pantalla para leer el contenido de texto de una página web.

---

Una copia del árbol DOM.

#### --answer--

Una estructura utilizada por los lectores de pantalla para interpretar e interactuar con el contenido de una página web.

### --question--

#### --text--

¿Cuál de las siguientes asegura que una imagen tenga un ancho mínimo de `400px`, pero se haga más ancha cuando el ancho de la vista es mayor de `1000px`?

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

¿Cuál de los siguientes valores de `scroll-behavior` permite un comportamiento de desplazamiento suave?

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

¿Cuál de las siguientes características se utiliza para detectar la preferencia de animación del usuario?

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

¿Cuál de los siguientes es un problema de accesibilidad del atributo `placeholder` en un elemento `input`?

#### --distractors--

El texto del marcador de posición impide que los lectores de pantalla lean la etiqueta de entrada.

---

El texto del marcador de posición impide que los lectores de pantalla lean el valor de entrada.

---

El texto del marcador de posición es demasiado pequeño para ser legible.

#### --answer--

El texto del marcador de posición puede confundirse con un valor de entrada real.

### --question--

#### --text--

¿Qué hace el atributo `hidden`?

#### --distractors--

Oculta el contenido y lo revela al pasar el cursor.

---

Oculta el contenido solo del árbol de accesibilidad.

---

Oculta el contenido visualmente, pero está disponible en el árbol de accesibilidad.

#### --answer--

Oculta el contenido tanto visualmente como del árbol de accesibilidad.
