---
id: 63ee35300d8d4841c3a7091d
videoId: LGQuIIv2RVA
title: Lección D de fundamentos de CSS
challengeType: 15
dashedName: css-foundations-lesson-d
---

# --description--

Otra manera de usar selectores es encadenarlos como una lista sin ninguna separación. Digamos que tenías el siguiente HTML:

```html
<div>
  <div class="subsection header">Latest Posts</div>
  <p class="subsection preview">This is where a preview for a post might go.</p>
</div>
```

Tienes dos elementos con la clase `subsection` que tienen algún tipo de estilos únicos, pero ¿qué pasa si solo deseas aplicar una regla separada al elemento que también tiene `header` como segunda clase? Bueno, podrías encadenar ambos selectores de `class` juntos en tu CSS así:

```css
.subsection.header {
  color: red;
}
```

Lo que hace `.subsection.header` es seleccionar cualquier elemento que tenga ambas clases, `subsection` y `header`. Nota cómo no hay ningún espacio entre los selectores de `.subsection` y `.header` `class`. Esta sintaxis básicamente funciona para encadenar cualquier combinación de selectores, excepto encadenar más de un selector de tipo.

Esto también se puede usar para encadenar una clase y un id, como se muestra a continuación:

```html
<div>
  <div class="subsection header">Latest Posts</div>
  <p class="subsection" id="preview">This is where a preview for a post might go.</p>
</div>
```

Puedes tomar los dos elementos anteriores y combinarlos con lo siguiente:

```css
.subsection.header {
  color: red;
}

.subsection#preview {
  color: blue;
}
```

En general, no puedes encadenar más de un selector de tipo ya que un elemento no puede ser de dos tipos diferentes a la vez. Por ejemplo, encadenar dos selectores de tipo como `div` y `p` nos daría el selector `divp`, lo cual no funcionaría ya que el selector intentaría encontrar un elemento literal `<divp>`, que no existe.

# --questions--

## --text--

Dado un elemento que tiene un `id` de `title` y una `class` de `primary`, ¿cómo usarías ambos atributos para una sola regla?

## --answers--

```css
.title.primary {
  ...
}
```

---

```css
.title > primary {
  ...
}
```

---

```css
#title.primary { 
  ...
}
```


## --video-solution--

3
