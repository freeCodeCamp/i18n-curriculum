---
id: 672bbeaa5afdc5a98d5ab8ff
title: ¿Cuáles son ejemplos de pseudo-clases de ubicación?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

Las pseudo-clases de ubicación se utilizan para estilizar enlaces y elementos que se direccionan dentro del documento actual. Ofrecen una forma de aplicar estilos dependiendo de si un enlace está visitado o si un elemento está actualmente enfocado.

Ejemplos de pseudo-clases de ubicación son:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

Echemos un vistazo más profundo a cada una de estas pseudo-clases.

La pseudo-clase `:link` te permite direccionar todos los enlaces no visitados en una página web. Puedes utilizarla para estilizar enlaces de forma diferente antes de que el usuario haga clic en ellos. Por ejemplo, puedes querer hacer que todos los enlaces no visitados sean azules o del color principal de tu sitio web:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

En este caso, cualquier enlace que el usuario no haya hecho clic aún aparecerá magenta. Una vez que el usuario hace clic en el enlace, el estilo `:link` ya no se aplica, y la pseudo-clase `:visited` toma el relevo. La pseudo-clase `:visited` entra en juego después de que el usuario haga clic en el enlace, por lo que puedes usarla para direccionar enlaces que el usuario ya ha clicado. 

Aquí hay un ejemplo de cambiar el estado de enlace visitado al color `púrpura`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

La pseudo-clase `:visited` ayuda a los usuarios a distinguir entre enlaces que han visitado y aquellos que no.

La pseudo-clase `:any-link` es una combinación de las pseudo-clases `:link` y `:visited`. Así que iguala cualquier elemento ancla con un atributo `href`, independientemente de si está visitado o no.

Aquí hay un ejemplo de cambiar el color del enlace para la pseudo-clase `:any-link` a `carmesí`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

La pseudo-clase `:local-link` direcciona enlaces que apuntan al mismo documento. Puede ser útil cuando quieres diferenciar enlaces internos de externos. Actualmente, ningún navegador soporta la pseudo-clase `:local-link`.

La pseudo-clase `:target` selecciona un elemento que coincide con el identificador de fragmento de URL actual, por ejemplo, `#section1`. Es muy útil para páginas con navegación dentro de la misma.

Aquí tienes un ejemplo en HTML que representa una navegación dentro de la página. El CSS usa la pseudo-clase `:target` para estilizar la sección que coincide con el lugar al que navega el usuario:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

Cuando el usuario hace clic en uno de los enlaces de navegación, el color de fondo de esa sección respectiva cambiará a verde.

# --questions--

## --text--

¿Qué pseudo-clase te permite estilizar un elemento que coincide con el identificador de fragmento de URL actual, como `#section1`?

## --answers--

`:hover`

### --feedback--

Piensa en cómo puedes resaltar una sección específica al navegar por enlaces internos de la página.

---

`:focus`

### --feedback--

Piensa en cómo puedes resaltar una sección específica al navegar por enlaces internos de la página.

---

`:target`

---

`:checked`

### --feedback--

Piensa en cómo puedes resaltar una sección específica al navegar por enlaces internos de la página.

## --video-solution--

3

## --text--

¿Cuándo son particularmente útiles las pseudo-clases de ubicación?

## --answers--

Al estilizar elementos según sus relaciones de hermanos.

### --feedback--

Piensa en cómo puedes estilizar enlaces y elementos especificados dependiendo de la interacción del usuario.

---

Al aplicar estilos sobre si un enlace es visitado o un elemento está actualmente enfocado.

---

Al estilizar elementos basados en los atributos de su elemento padre.

### --feedback--

Piensa en cómo puedes estilizar enlaces y elementos especificados dependiendo de la interacción del usuario.

---

Al ajustar dinámicamente el diseño de una página web.

### --feedback--

Piensa en cómo puedes estilizar enlaces y elementos especificados dependiendo de la interacción del usuario.

## --video-solution--

2

## --text--

¿Qué pseudo-clase está diseñada para direccionar enlaces que apuntan al mismo documento pero que actualmente no es compatible con ningún navegador?

## --answers--

`:any-link`

### --feedback--

Considera la pseudo-clase destinada a distinguir enlaces internos de externos, aun cuando no esté soportada todavía.

---

`:local-link`

---

`:visited`

### --feedback--

Considera la pseudo-clase destinada a distinguir enlaces internos de externos, aun cuando no esté soportada todavía.

---

`:target`

### --feedback--

Considera la pseudo-clase destinada a distinguir enlaces internos de externos, aun cuando no esté soportada todavía.

## --video-solution--

2
