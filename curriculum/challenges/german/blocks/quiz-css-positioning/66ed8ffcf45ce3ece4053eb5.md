---
id: 66ed8ffcf45ce3ece4053eb5
title: CSS-Positionierungs-Quiz
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 folgenden Fragen richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Welcher der folgenden Werte ist KEIN gültiger Wert für die `position`-Eigenschaft?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

Was ist der Hauptzweck der `float`-Eigenschaft in CSS?

#### --distractors--

Floats werden verwendet, um ein Element aus seinem normalen Fluss auf der Seite zu entfernen und es automatisch oben rechts auf der Webseite zu positionieren.

---

Floats werden verwendet, um ein Element aus seinem normalen Fluss auf der Seite zu entfernen und es oben in seinem Container zu positionieren.

---

Floats werden verwendet, um ein Element aus seinem normalen Fluss auf der Seite zu entfernen und es automatisch unten rechts auf der Webseite zu positionieren.

#### --answer--

Floats werden verwendet, um ein Element aus seinem normalen Fluss auf der Seite zu entfernen und es entweder links oder rechts in seinem Container zu positionieren.

### --question--

#### --text--

Welches der folgenden Beispiele lässt ein Box-Element nach links floaten?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

Welche Rolle hat die `clear`-Eigenschaft?

#### --distractors--

Sie wird verwendet, um zu bestimmen, ob ein Element an den unteren Rand der Seite verschoben werden muss.

---

Sie wird verwendet, um zu bestimmen, ob ein Element vollständig von der Seite gelöscht werden muss.

---

Sie wird verwendet, um zu bestimmen, ob ein Element oben auf der Seite fixiert werden muss.

#### --answer--

Sie wird verwendet, um zu bestimmen, ob ein Element unter den gefloateten Inhalt verschoben werden muss.

### --question--

#### --text--

Welche CSS-Eigenschaft wird verwendet, um die vertikale Stapelreihenfolge von positionierten Elementen zu steuern, die sich auf der Seite überlappen?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

Welche der folgenden Syntaxen ist korrekt für relative Positionierung?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

Welche CSS-Eigenschaft würden Sie verwenden, um ein Element an einer bestimmten Position auf der Seite zu fixieren, sodass es sich beim Scrollen nicht bewegt?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

Was bewirkt absolute Positionierung bei einem Element?

#### --distractors--

Absolute Positionierung wird verwendet, um zu bestimmen, ob ein Element unter den gefloateten Inhalt verschoben werden muss.

---

Absolute Positionierung wird verwendet, um das Element innerhalb des normalen Dokumentflusses zu positionieren.

---

Absolute Positionierung wird verwendet, um die vertikale Stapelreihenfolge von positionierten Elementen zu steuern, die sich auf der Seite überlappen.

#### --answer--

Absolute Positionierung ermöglicht es, ein Element aus dem normalen Dokumentfluss zu nehmen, sodass es unabhängig von anderen Elementen agiert.

### --question--

#### --text--

Welche der folgenden Eigenschaften ist KEINE gültige Eigenschaft, die Sie für absolute Positionierung verwenden können?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

Was ist der entscheidende Unterschied zwischen relativer und absoluter Positionierung?

#### --distractors--

Absolute Positionierung setzt das Element in eine sticky Position, während relative Positionierung ein Element aus dem normalen Dokumentfluss nimmt.

---

Relative Positionierung setzt das Element in eine feste Position, während absolute Positionierung ein Element aus dem normalen Dokumentfluss nimmt.

---

Absolute Positionierung positioniert das Element innerhalb des normalen Dokumentflusses, während relative Positionierung ein Element aus dem normalen Dokumentfluss nimmt.

#### --answer--

Relative Positionierung positioniert das Element innerhalb des normalen Dokumentflusses, während absolute Positionierung ein Element aus dem normalen Dokumentfluss nimmt.

### --question--

#### --text--

Welches der folgenden Beispiele positioniert eine Box in der oberen linken Ecke der Seite?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

Welche Positionierungsmethode erlaubt es einem Element, nur dann an einer definierten Position zu haften, wenn Sie an einem bestimmten Punkt vorbeiscrollen?

#### --distractors--

Float-Positionierung.

---

Fixed-Positionierung.

---

Absolute Positionierung.

#### --answer--

Sticky-Positionierung.

### --question--

#### --text--

Welches der folgenden Beispiele zeigt eine korrekte Verwendung von Sticky-Positionierung?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

Was ist der Unterschied zwischen Sticky- und Fixed-Positionierung?

#### --distractors--

Sticky-Elemente können nur in Tabellenlayouts verwendet werden, während Fixed-Elemente in jedem CSS-Layout verwendet werden können.

---

Sticky-Elemente bleiben immer an derselben Position, während Fixed-Elemente an einem bestimmten Punkt haften und sich dann wie relative Elemente verhalten.

---

Fixed-Elemente werden relativ zu ihrer normalen Position positioniert, während Sticky-Elemente nur an einem bestimmten Punkt haften und sich dann wie relative Elemente verhalten.

#### --answer--

Fixed-Elemente bleiben an derselben Position auf dem Bildschirm, während Sticky-Elemente nur an einem bestimmten Punkt haften und sich dann wie relative Elemente verhalten.

### --question--

#### --text--

Welches Problem löste der `clearfix`-Hack bei der Arbeit mit Floats?

#### --distractors--

Der `clearfix`-Hack half, das Problem zu lösen, dass gefloatete Elemente aus dem normalen Dokumentfluss entfernt und an einer festen Position auf der Seite platziert wurden.

---

Der `clearfix`-Hack half, das Problem zu lösen, dass gefloatete Elemente in mobilen und Tablet-Layouts nicht responsiv waren.

---

Der `clearfix`-Hack half, das Problem zu lösen, dass gefloatete Elemente von der Seite verschwanden.

#### --answer--

Der `clearfix`-Hack half, das Problem von Überlappungen und Zusammenbrüchen in Layouts zu lösen, wenn mehrere gefloatete Elemente nebeneinander gestapelt wurden.

### --question--

#### --text--

Welches der folgenden Beispiele zeigt eine korrekte Verwendung des `clearfix`-Hacks?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

Was ist statische Positionierung?

#### --distractors--

Dies wird verwendet, um ein Element aus seinem normalen Fluss auf der Seite zu entfernen und es automatisch oben rechts auf der Webseite zu positionieren.

---

Dies ermöglicht es, ein Element aus dem normalen Dokumentfluss zu nehmen, sodass es unabhängig von anderen Elementen agiert.

---

Dies erlaubt einem Element, nur dann an einer definierten Position zu haften, wenn Sie an einem bestimmten Punkt vorbeiscrollen.

#### --answer--

Dies ist der normale Fluss für das Dokument. Elemente werden von oben nach unten und von links nach rechts nacheinander positioniert.

### --question--

#### --text--

Welches der folgenden Beispiele setzt die Navigationsleiste mit Fixed-Positionierung oben auf der Seite?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

Welcher der folgenden Werte ist ein gültiger Wert für die `z-index`-Eigenschaft?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

Welcher der folgenden Werte ist der Standardwert der `position`-Eigenschaft?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

Welcher `position`-Wert erlaubt es Ihnen, die Position eines Elements mit `top` und `left` anzupassen, während es im normalen Dokumentfluss bleibt?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

Wie verhält sich ein Element mit `position: sticky;` anfangs?

#### --distractors--

Es verhält sich wie ein `fixed`-Element, bis eine Scrollposition erreicht wird.

---

Es wird immer aus dem normalen Dokumentfluss entfernt.

---

Es verhält sich wie ein `absolute`-Element innerhalb seines Elternteils.

#### --answer--

Es verhält sich wie ein `relative`-Element, bis eine bestimmte Scrollposition erreicht ist.

### --question--

#### --text--

Welches der folgenden Beispiele zeigt eine gültige und effektive Verwendung der `z-index`-Eigenschaft, um `.box-two` über `.box-one` erscheinen zu lassen?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

Wofür wird die `z-index`-Eigenschaft in CSS verwendet?

#### --distractors--

Sie legt den Zoom-Level der Seite fest.

---

Sie steuert die horizontale Ausrichtung von Elementen innerhalb eines Flex-Containers.

---

Sie definiert den Abstand zwischen dem Inhalt eines Elements und seinem Rahmen.

#### --answer--

Sie steuert die vertikale Stapelreihenfolge von positionierten Elementen, die sich überlappen.

### --question--

#### --text--

Wenn Sie `top: 10%;` auf ein Element mit `position: fixed;` anwenden, worauf bezieht sich der `10%`?

#### --distractors--

Auf die Höhe des Elements selbst.

---

Auf die Höhe seines übergeordneten Containers.

---

Auf die Breite des Viewports.

#### --answer--

Auf die Höhe des Viewports.

### --question--

#### --text--

Welches der Codebeispiele zeigt eine korrekte Verwendung der `z-index`-Eigenschaft, um ein Overlay über anderen Inhalten zu platzieren?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

Welche CSS-Eigenschaft wird verwendet, um zu steuern, ob ein Element unter gefloateten Elementen verschoben werden soll?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

Wie wird ein Element mit `position: relative;` und `bottom: 25px;` verschoben?

#### --distractors--

Es wird 25px nach unten von seiner normalen Position verschoben.

---

Es wird 25px nach rechts von seiner normalen Position verschoben.

---

Es wird 25px vom unteren Rand des Viewports positioniert.

#### --answer--

Es wird 25px nach oben von seiner normalen Position verschoben.

### --question--

#### --text--

Die `z-index`-Eigenschaft wirkt sich nur auf Elemente aus, die welche CSS-Eigenschaft angewendet haben?

#### --distractors--

Einen `float`-Wert außer `none`.

---

Einen `display`-Wert von `inline-block`.

---

Ein `background-color`-Set.

#### --answer--

Einen `position`-Wert außer `static`.

### --question--

#### --text--

Welche Auswirkung hätte das Anwenden von `float: right;` auf ein Logo in einer Kopfzeile?

#### --distractors--

Das Logo würde rechts ausgerichtet, bliebe aber im normalen Dokumentfluss, sodass anderer Inhalt nicht umfließt.

---

Das Logo würde aus dem Fluss genommen und rechts im gesamten Browser-Viewport positioniert, nicht in seinem Container.

---

Das Logo würde zu einem Block-Element, das die volle Breite der Kopfzeile einnimmt und andere Elemente darunter schiebt.

#### --answer--

Das Logo würde aus seinem normalen Fluss genommen und rechts in seinem Container positioniert, wobei anderer Inhalt darum herumfließt.

### --question--

#### --text--

Welcher CSS-Schnipsel hält ein Element fixiert oben im Viewport, sobald es dorthin gescrollt wird?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

Was ist der spezifische Zweck von `clear: both;` in CSS?

#### --distractors--

Es hebt die `float`-Eigenschaft am Element selbst auf und bringt es zurück in den normalen Dokumentfluss.

---

Es entfernt alle `clear`-Eigenschaften, die von einem übergeordneten Element geerbt wurden, und stellt das Standard-Float-Verhalten wieder her.

---

Es löscht nur gefloatete Elemente auf der rechten Seite, sodass links gefloatete Elemente unverändert bleiben.

#### --answer--

Es stellt sicher, dass das Element unter allen gefloateten Elementen verschoben wird, die links und rechts vor ihm erscheinen.

### --question--

#### --text--

Wie wird `.child` im folgenden Code positioniert?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

Es wird 10px vom oberen Rand des `.parent`-Elements positioniert, da `absolute`-Positionierung immer relativ zum direkten Elternteil ist.

---

Es bleibt in seiner Standard-Static-Position, weil der `absolute`-Wert ohne `z-index`-Eigenschaft ungültig ist.

---

Es wird 10px vom oberen Rand des Browserfensters positioniert und bleibt fixiert, auch wenn der Benutzer die Seite scrollt.

#### --answer--

Es wird 10px vom oberen Rand des initialen Containing Blocks positioniert, wie z. B. des `<body>`, weil sein Elternteil nicht positioniert ist.

### --question--

#### --text--

Welche Auswirkung hat das folgende CSS auf das `.box`-Element?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

Das Element bleibt im normalen Fluss, wird aber 50px von oben und links eingerückt und drückt andere Elemente weg.

---

Das Element wird am Viewport fixiert und bleibt 50px von oben und 50px von links, auch wenn die Seite gescrollt wird.

---

Das Element wird relativ zu seinem eigenen Ausgangspunkt positioniert, bewegt sich 50px nach unten und 50px nach rechts, ohne den Dokumentfluss zu verlassen.

#### --answer--

Das Element wird aus dem normalen Fluss genommen und 50px von oben und 50px von links seines nächsten positionierten Vorfahren positioniert.

### --question--

#### --text--

Welcher der folgenden `position`-Werte entfernt ein Element vollständig aus dem normalen Dokumentfluss?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

Gegeben sind ein `.parent`- und ein `.child`-Element. Welcher CSS-Schnipsel positioniert `.child` korrekt 20px von der oberen linken Ecke des `.parent`-Elements?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

Was ist der Unterschied zwischen `static`- und `relative`-Positionierung?

#### --distractors--

`static`-Positionierung entfernt ein Element aus dem Dokumentfluss, während `relative`-Positionierung es im Fluss hält.

---

Ein Element mit `position: static;` kann mit den Eigenschaften `top` und `left` versetzt werden, während `position: relative;` das nicht kann.

---

`static`-Positionierung ist für Block-Elemente, während `relative`-Positionierung nur für Inline-Elemente gedacht ist.

#### --answer--

Beide halten ein Element im normalen Dokumentfluss, aber `relative` erlaubt es, das Element von seiner ursprünglichen Position zu versetzen.

### --question--

#### --text--

Welcher CSS-Schnipsel lässt ein Bild nach links floaten, sodass anderer Inhalt darum herumfließt?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

Was ist der Unterschied zwischen `absolute`- und `fixed`-Positionierung?

#### --distractors--

`absolute`-Positionierung ist relativ zum Viewport, während `fixed`-Positionierung relativ zum nächsten positionierten Vorfahren ist.

---

`absolute`-Positionierung hält das Element im normalen Dokumentfluss, während `fixed`-Positionierung es aus dem Fluss nimmt.

---

Beide sind relativ zum Viewport positioniert, aber `fixed`-Elemente scrollen mit der Seite, während `absolute`-Elemente das nicht tun.

#### --answer--

`absolute`-Positionierung ist relativ zum nächsten positionierten Vorfahren, während `fixed`-Positionierung relativ zum Browser-Viewport ist.

### --question--

#### --text--

Welcher `position`-Wert platziert ein Element im normalen Dokumentfluss und verhindert, dass Versatz-Eigenschaften wie `top` und `left` eine Wirkung haben?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`

