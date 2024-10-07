---
id: 6489cf6282cf2e4f86f03ae6
title: The Cascade of CSS Lesson E
challengeType: 15
dashedName: the-cascade-of-css-lesson-e
---

# --description--

```css
/* rule 1 */
#subsection .list {
  background-color: yellow;
  color: blue;
}

/* rule 2 */
#subsection .main .list {
  color: red;
}
```

Im letzten Beispiel verwenden beide Regeln ID- und Klassenselektoren, so dass keine Regel einen spezifischeren Selektor als die andere verwendet. Die Kaskade prüft dann die Mengen der einzelnen Selektortypen. Beide Regeln haben nur einen ID-Selektor, aber Regel 2 hat mehr Klassenselektoren, daher hat Regel 2 eine höhere Spezifität!

Während die `color: red`-Deklaration Vorrang hätte, würde die `background-color: yellow`-Deklaration trotzdem angewandt werden, da es dafür keine widersprüchliche Deklaration gibt.

# --questions--

## --text--

Considering the updated CSS code, which of the following describes the rendering of the `<div class="list" id="subsection"></div>` element?

## --answers--

Textfarbe: Rot, Hintergrundfarbe: Transparent

---

Textfarbe: Rot, Hintergrundfarbe: Gelb

---

Textfarbe: Blau, Hintergrundfarbe: Transparent

---

Textfarbe: Blau, Hintergrundfarbe: Gelb

## --video-solution--

2
