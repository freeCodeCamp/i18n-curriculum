---
id: 6489cf6782cf2e4f86f03ae7
title: The Cascade of CSS Lesson F
challengeType: 15
dashedName: the-cascade-of-css-lesson-f
---

# --description--

```css
/* rule 1 */
.class.second-class {
  font-size: 12px;
}

/* rule 2 */
.class .second-class {
  font-size: 24px;
}
```

Hier haben die Regeln 1 und 2 die gleiche Spezifizität. Regel 1 verwendet einen Kettenselektor (kein Leerzeichen) und Regel 2 verwendet einen Nachkommen-Kombinator (das Leerzeichen). Aber beide Regeln haben zwei Klassen, und das Symbol des Kombinators selbst trägt nicht zur Spezifität bei.

```css
/* rule 1 */
.class.second-class {
  font-size: 12px;
}
/* rule 2 */
.class > .second-class {
  font-size: 24px;
}
```

Dieses Beispiel zeigt das Gleiche. Auch wenn in Regel 2 ein untergeordneter Kombinator (`>`) verwendet wird, ändert sich der Wert für die Spezifität nicht. Beide Regeln haben nach wie vor zwei Klassen, so dass sie die gleichen Spezifitätswerte haben.

*Note:* Not everything adds to specificity

When comparing selectors, you may come across special symbols for the universal selector (`*`) as well as combinators (`+`, `~`, `>`, and an empty space). Diese Symbole sind für sich genommen nicht besonders aussagekräftig.

# --questions--

## --text--

Auf der Grundlage des angegebenen CSS-Codes, welche Schriftgröße würde auf Elemente mit der Klasse "Klasse zweiter Klasse" angewendet werden?

## --answers--

12px

---

36px

---

24px

---

48px

## --video-solution--

3
