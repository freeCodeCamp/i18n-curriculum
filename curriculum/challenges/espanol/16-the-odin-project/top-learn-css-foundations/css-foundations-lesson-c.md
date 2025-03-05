---
id: 63ee352b0d8d4841c3a7091c
title: CSS Lecciones Fundamentales C
challengeType: 19
dashedName: css-foundations-lesson-c
---

# --description--

¿Qué pasa si tienes dos grupos de elementos que comparten algunas de sus declaraciones de estilo?

```css
.read {
  color: white;
  background-color: black;
  /* several unique declarations */
}

.unread {
  color: white;
  background-color: black;
  /* several unique declarations */
}
```

Tanto nuestros selectores `.read` y `.unread` comparten las declaraciones `color: white;` y `Color de fondo: black;`, pero por lo demás tienen varias de sus propias declaraciones únicas. Para reducir la repetición, puedes agrupar estos dos selectores juntos como una lista separada por comas:

```css
.read,
.unread {
  color: white;
  background-color: black;
}

.read {
  /* several unique declarations */
}

.unread {
  /* several unique declarations */
}
```

Ambos ejemplos anteriores (con y sin agrupamiento) tendrán el mismo resultado, pero el segundo ejemplo reduce la repetición de declaraciones y facilita la edición tanto del `color` como del `background-color` para ambas clases a la vez.

# --questions--

## --text--

¿Cómo aplicarías una sola regla a dos selectores diferentes, `.red-box` y `.yellow-box`?

## --answers--

```css
.red-box,
.yellow-box {
  width: 25px;
  height: 25px;
}
```

---

```css
.red-box {
  width: 25px;
  height: 25px;
}

.yellow-box {
  width: 25px;
  height: 25px;
}
```

---

```css
.red-box { 
  width: 25px;
  .yellow-box {
    height: 25px;
  }
}
```

## --video-solution--

1
