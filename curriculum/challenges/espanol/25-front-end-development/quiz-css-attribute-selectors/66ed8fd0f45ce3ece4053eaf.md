---
id: 66ed8fd0f45ce3ece4053eaf
title: Cuestionario sobre selectores de atributos CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Para pasar el cuestionario, debe responder correctamente al menos 9 de las 10 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Para qué se utilizan los selectores de atributos CSS?

#### --distractors--

Para aplicar estilos a elementos basados en su nombre de etiqueta.

---

Para aplicar estilos a elementos basados en su nombre de clase.

---

Para aplicar estilos a elementos basados en su elemento padre.

#### --answer--

Para aplicar estilos a elementos basados en sus atributos.

### --question--

#### --text--

¿Cuál de los siguientes NO será seleccionado por este selector CSS?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

¿Qué selector CSS coincide con todos los elementos `p` que tienen un atributo `lang` establecido en `"fr"`?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

¿Qué selector CSS coincide con todos los elementos `a` que tienen un atributo `href`?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

¿Qué selector CSS coincide con todas las listas ordenadas con números romanos en mayúsculas?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

¿Para qué se utiliza comúnmente el atributo `data-lang`?

#### --distractors--

Para especificar el idioma del documento.

---

Para definir la codificación de caracteres del documento.

---

Para establecer el idioma de un elemento basándose en su elemento padre.

#### --answer--

Para aplicar estilos a elementos basados en este atributo de datos personalizado.

### --question--

#### --text--

¿Qué selector de CSS deberías usar para estilizar únicamente los elementos `img` si su atributo `alt` es igual a `"code"`?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

¿Qué selector de CSS coincide con listas ordenadas que tienen un tipo de numeración numérica?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

¿Cuál de los siguientes selectores de CSS utilizarías para estilizar elementos `a` con atributos `href` y `title`?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

¿Qué selector CSS utilizarías si estás desarrollando un sitio web para un restaurante y deseas estilizar todos los elementos con la clase `menu-item` que tengan un atributo `data-special`?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```

