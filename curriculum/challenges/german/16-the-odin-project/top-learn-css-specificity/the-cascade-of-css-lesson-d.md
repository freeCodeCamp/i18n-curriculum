---
id: 6489cf5882cf2e4f86f03ae5
title: The Cascade of CSS Lesson D
challengeType: 15
dashedName: the-cascade-of-css-lesson-d
---

# --description--

Jetzt wollen wir die Dinge ein wenig ändern:

```html
<!-- index.html -->

<div class="main">
  <div class="list" id="subsection"></div>
</div>
```

```css
/* rule 1 */
#subsection {
  color: blue;
}

/* rule 2 */
.main .list {
  color: red;
}
```

Im obigen Beispiel hat Regel 2 zwar mehr Klassenselektoren als ID-Selektoren, aber Regel 1 ist spezifischer, weil ID besser ist als Klasse.

# --questions--

## --text--

Auf der Grundlage des geänderten HTML- und CSS-Codes würde das `<div class="list" id="subsection"></div>`-Element in welcher Farbe dargestellt werden?

## --answers--

orange

---

rot

---

blau

---

cyan

## --video-solution--

3
