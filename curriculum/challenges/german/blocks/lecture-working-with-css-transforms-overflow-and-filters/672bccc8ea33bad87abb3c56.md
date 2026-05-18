---
id: 672bccc8ea33bad87abb3c56
title: Was ist der Unterschied zwischen content-box und border-box?
challengeType: 19
dashedName: what-is-the-difference-between-content-box-and-border-box
---

# --interactive--

Die Eigenschaft `box-sizing` kann entweder auf `content-box` oder `border-box` gesetzt werden, um zu steuern, wie die Breite und Höhe von Elementen berechnet werden.

Diese Eigenschaft kann auf den universellen Selektor (`*`) angewendet werden, um für alle Elemente im Dokument zu gelten:

```css
* {
  box-sizing: border-box;
}
```

Der Wert der Eigenschaft `box-sizing` ist standardmäßig `content-box`, aber Sie können `border-box` wählen, wenn Sie es benötigen. Wir werden zuerst `content-box` untersuchen und dann auf `border-box` eingehen.

Um zu verstehen, wie die Modelle funktionieren, müssen Sie mit den vier Kernkonzepten des CSS-Box-Modells vertraut sein. Lassen Sie uns diese schnell überprüfen.

- Der Inhaltsbereich ist der Raum, den der Inhalt des Elements einnimmt.
- Der `padding` ist der Abstand zwischen dem Inhaltsbereich und dem `border`.
- Der `border` ist die Umrandung, die den Inhaltsbereich und den `padding` umgibt.
- Der Außenabstand ist der Raum außerhalb des `border`, der das Element von anderen Elementen trennt.

Im `content-box`-Modell bestimmen die von Ihnen festgelegte Breite und Höhe die Abmessungen des Inhaltsbereichs, schließen aber nicht den `padding`, `border` oder `margin` ein. Verwenden Sie `content-box`, wenn Sie eine präzise Kontrolle über den Inhaltsbereich benötigen. Wenn Sie `width` und `height` setzen, legen Sie nur die Größe des Inhalts selbst fest.

Um die Gesamtbreite des Elements zu ermitteln, müssen Sie den linken und rechten `padding` sowie die linken und rechten `border` addieren. Ebenso kann die Gesamthöhe eines Elements durch Addition der Inhalts-Höhe, des oberen und unteren `padding` sowie der oberen und unteren `border` berechnet werden.

Zum Beispiel haben wir hier einen CSS-Typselektor für alle `div`-Elemente.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

:::

In diesem Fall beträgt bei Verwendung von `content-box` der Inhaltsbereich 300px mal 200px. Die insgesamt gerenderte Größe umfasst `padding` und `border` – zum Beispiel Gesamtbreite = 300px (Inhalt) + 40px (`padding`) + 8px (`border`) = 348px; die Gesamthöhe wird auf die gleiche Weise berechnet.

Super! Nun untersuchen wir `border-box`. Es unterscheidet sich dadurch, dass die von Ihnen festgelegte Breite und Höhe den Inhalt, den `padding` und den `border` des Elements einschließen (aber nicht den Außenabstand). Verwenden Sie `border-box`, wenn die Gesamtgröße des Elements fest bleiben soll, auch wenn sich `padding` oder `border` ändern – das ist oft bei responsiven Layouts hilfreich.

Bei `border-box` sind `padding` und `border` innerhalb der angegebenen Größe des Elements enthalten. Die von Ihnen gesetzten `width` und `height` werden zu den Gesamtabmessungen des Elements: Inhalt + `padding` + `border`; Außenabstände bleiben ausgeschlossen.

Im folgenden Beispiel gibt es zwei `div`-Elemente mit denselben Abmessungen, aber unterschiedlichen `box-sizing`-Werten. Beachten Sie, wie dies zu unterschiedlichen Gesamtgrößen im Browser führt:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```


```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

:::

Sie können sehen, dass beide dieselben `width`, `height`, `padding`, `border` und `margin` haben. Die einzigen Unterschiede liegen in den Farben und dem Wert der Eigenschaft `box-sizing`. Dieser kleine Unterschied hat eine sehr wichtige Auswirkung auf die endgültigen Abmessungen.

Die Wahl zwischen `content-box` und `border-box` hängt wirklich von den spezifischen Anforderungen Ihres Projekts ab. Während `border-box` aufgrund seiner Einfachheit und Flexibilität immer beliebter wird, ist das Verständnis beider Modelle wichtig für die effektive Umsetzung von CSS-Layouts.

# --questions--

## --text--

Welcher der folgenden Werte ist der Standardwert für die Eigenschaft `box-sizing` in den meisten Browsern?

## --answers--

`content-box`

---

`border-box`

### --feedback--

Denken Sie an das Standardverhalten bei der Größenbestimmung von Elementen.

---

`padding-box`

### --feedback--

Denken Sie an das Standardverhalten bei der Größenbestimmung von Elementen.

---

`margin-box`

### --feedback--

Denken Sie an das Standardverhalten bei der Größenbestimmung von Elementen.

## --video-solution--

1

## --text--

Was ist der Hauptvorteil der Verwendung von `border-box` für die Erstellung responsiver Layouts?

## --answers--

Es macht die Berechnungen komplizierter.

### --feedback--

Denken Sie daran, wie das `border-box`-Modell `padding` und `border` innerhalb der angegebenen `width` und `height` behandelt.

---

Es ermöglicht eine präzisere Kontrolle über die Abmessungen von Elementen.

### --feedback--

Denken Sie daran, wie das `border-box`-Modell `padding` und `border` innerhalb der angegebenen `width` und `height` behandelt.

---

Es stellt sicher, dass Elemente ihre angegebenen Abmessungen beibehalten, unabhängig von Änderungen an `padding` oder `border`.

---

Es verbessert die Browserkompatibilität.

### --feedback--

Denken Sie daran, wie das `border-box`-Modell `padding` und `border` innerhalb der angegebenen `width` und `height` behandelt.

## --video-solution--

3

## --text--

Was stellt die angegebene `width` eines Elements im `content-box`-Modell dar?

## --answers--

Die gesamte `width` des Elements, einschließlich `padding`, `border` und `margin`.

### --feedback--

Denken Sie an die Beziehung zwischen dem Inhaltsbereich und den Gesamtabmessungen des Elements im `content-box`-Modell.

---

Die `width` des Inhaltsbereichs.

---

Die `width` des `border`.

### --feedback--

Denken Sie an die Beziehung zwischen dem Inhaltsbereich und den Gesamtabmessungen des Elements im `content-box`-Modell.

---

Die `width` des `padding`.

### --feedback--

Denken Sie an die Beziehung zwischen dem Inhaltsbereich und den Gesamtabmessungen des Elements im `content-box`-Modell.

## --video-solution--

2
