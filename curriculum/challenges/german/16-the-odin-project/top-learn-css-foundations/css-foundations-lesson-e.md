---
id: 63ee35370d8d4841c3a7091e
title: CSS Foundations Lesson E
challengeType: 19
dashedName: css-foundations-lesson-e
---

# --description--

Kombinatoren erlauben es uns, mehrere Selektoren unterschiedlich zu kombinieren, als sie entweder gruppieren oder verketten, da sie eine Beziehung zwischen den Selektoren aufweisen. Es gibt insgesamt vier Arten von Kombinatoren, aber im Moment werden wir dir nur den Nachkommen-Kombinator zeigen, welcher in CSS durch ein einzelnes Leerzeichen zwischen Selektoren repräsentiert wird. Ein Nachkommen-Kombinator wird nur dann Elemente auswählen, die mit dem letzten Selektor übereinstimmen, wenn sie auch einen Vorfahren haben (Elternteil, B. Großeltern, etc), die mit dem vorherigen Selektor übereinstimmen.

So würde etwa `.ancestor .child` ein Element mit der `child`-Klasse auswählen, wenn es einen Vorfahren mit der `ancestor`-Klasse hat. Man kann es auch so sehen, dass ein untergeordnetes Element nur dann ausgewählt wird, wenn es innerhalb eines `ancestor` verschachtelt ist, egal wie tief. Wirf einen kurzen Blick auf das nachfolgende Beispiel und prüfe, ob du erkennen kannst, welche Elemente anhand der angegebenen CSS-Regel ausgewählt werden würden:

```html
<!-- index.html -->

<div class="ancestor"> <!-- A -->
  <div class="contents"> <!-- B -->
    <div class="contents"> <!-- C -->
    </div>
  </div>
</div>

<div class="contents"></div> <!-- D -->
```

```css
/* styles.css */

.ancestor .contents {
  /* some declarations */
}
```

Im vorliegenden Beispiel würden die ersten beiden Elemente mit der `contents`-Klasse (`B` und `C`) ausgewählt werden, das letzte Element (`D`) jedoch nicht. War deine Vermutung richtig?

Es gibt wirklich kein Limit für die Anzahl der Kombinatoren, die du zu einer Regel hinzufügen kannst, also wäre `.one .two .three .four` vollkommen gültig. Dies würde ein Element mit der `four`-Klasse nur dann auswählen, wenn es einen Vorfahren mit der `three`-Klasse hat, und wenn dieser Vorfahr einen eigenen Vorfahren mit der `two`-Klasse hat, und so weiter. Generell möchtest du aber vermeiden, Elemente auszuwählen, die diese Verschachtelungsebene benötigen, da dies ziemlich verwirrend und langwierig werden kann und zu Schwierigkeiten hinsichtlich der Spezifität führen kann.

# --questions--

## --text--

Was macht der Nachfahre-Kombinator?

## --answers--

Er fasst gewisse Klassen zusammen, die dieselben Deklarationen haben.

---

Er ermöglicht es, ein Element auszuwählen, das dieselbe `class` und dieselbe `id` hat.

---

Es ermöglicht dir, ein Element auf der Grundlage seiner Beziehung zu seinen Vorfahren (Eltern, Großeltern usw.) auszuwählen.


## --video-solution--

3
