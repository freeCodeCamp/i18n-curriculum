---
id: 6489cf7682cf2e4f86f03ae8
title: The Cascade of CSS Lesson G
challengeType: 15
dashedName: the-cascade-of-css-lesson-g
---

# --description--

Die Vererbung bezieht sich auf bestimmte CSS-Eigenschaften, die, wenn sie auf ein Element angewendet werden, an die Nachkommen dieses Elements vererbt werden, auch wenn wir nicht ausdrücklich eine Regel für diese Nachkommen schreiben. Typografie-basierte Eigenschaften (`color`, `font-size`, `font-family`, etc.) werden in der Regel vererbt, während die meisten anderen Eigenschaften nicht vererbt werden.

Eine Ausnahme bildet das direkte Anvisieren eines Elements, da dies immer die Vererbbarkeit übertrifft:

```html
<!-- index.html -->

<div id="parent">
  <div class="child"></div>
</div>
```

```css
/* styles.css */

#parent {
  color: red;
}

.child {
  color: blue;
}
```

Obwohl das `parent`-Element eine höhere Spezifität mit einer ID hat, würde auf das `child`-Element der `color: blue`-Stil angewandt, da diese Deklaration direkt darauf abzielt, während `color: red` vom übergeordneten Element nur vererbt wird.

# --questions--

## --text--

Based on the given HTML and CSS code, what would be the color of the `<div class="child"></div>` element?

## --answers--

Rot

---

Blau

---

Vererbt vom Parent-Element

---

Transparent

## --video-solution--

2
