---
id: 66ed8fedf45ce3ece4053eb3
title: CSS-Grid-Quiz
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 18 der 20 Fragen unten richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Was ist CSS Grid?

#### --distractors--

Eine Methode, um Tabellen auf einer Website darzustellen.

---

Eine Methode, um Bilder zu kacheln.

---

Eine Möglichkeit, Umrisse um HTML-Elemente anzuzeigen.

#### --answer--

Ein zweidimensionales Layout für HTML-Dokumente.

### --question--

#### --text--

Welche der folgenden Möglichkeiten ist der richtige Weg, um einen Grid-Container zu erstellen?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

Was bewirkt die `grid-template-columns`-Eigenschaft?

#### --distractors--

Definiert zwei Spalten und drei Reihen für einen Grid-Container.

---

Setzt alle Spalten für das Grid-Layout auf eine feste Länge.

---

Erstellt einen Grid-Container mit zwei Spalten.

#### --answer--

Definiert die Anzahl der Spalten in einem Grid-Layout.

### --question--

#### --text--

Was bewirkt die `grid-template-rows`-Eigenschaft?

#### --distractors--

Gibt die Größe und Position eines Grid-Elements in einem Grid-Layout an.

---

Erstellt eine Vorlage für neue Grid-Reihen.

---

Legt eine Standardreihengröße im Grid-Container fest.

#### --answer--

Gibt die Anzahl und Höhe jeder Reihe in einem Grid-Layout an.

### --question--

#### --text--

Was bewirkt die `minmax()`-Funktion?

#### --distractors--

Wechselt zwischen dem ersten und zweiten Wert, abhängig vom verfügbaren Platz.

---

Gibt den Durchschnitt der beiden Eingaben zurück.

---

Setzt die minimale Größe des Elements für den Browser im Vollbildmodus.

#### --answer--

Setzt die minimalen und maximalen Größen für eine Spur.

### --question--

#### --text--

Was ist die Kurzschreibweise für die `column-gap`- und `row-gap`-Eigenschaften?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

Was ist der Unterschied zwischen einem impliziten und einem expliziten Grid?

#### --distractors--

Implizite Grids verwenden die `grid-template-columns`-Eigenschaft, während explizite Grids die `grid-template-rows`-Eigenschaft verwenden.

---

Explizite Grids verwenden die `grid-template-columns`-Eigenschaft, während implizite Grids die `grid-template-rows`-Eigenschaft verwenden.

---

Implizite Grids verwenden die `grid-template-columns`- oder `grid-template-rows`-Eigenschaften, um Spalten zu erstellen, während Reihen und Spalten in expliziten Grids automatisch erstellt werden.

#### --answer--

Explizite Grids verwenden die `grid-template-columns`- oder `grid-template-rows`-Eigenschaften, um Spalten zu erstellen, während Reihen und Spalten in impliziten Grids automatisch erstellt werden.

### --question--

#### --text--

Welche der folgenden Einheiten stellt einen Bruch des Raums innerhalb des Grid-Containers dar?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

Was sind Gitterlinien?

#### --distractors--

Kurzschreibweise für Reihen und Spalten.

---

Umrisse eines Grid-Elements.

---

Linien, entlang derer Grid-Spalten und -Reihen erstellt werden.

#### --answer--

Linien, an denen jedes der Grid-Elemente beginnt und endet.

### --question--

#### --text--

Was bewirkt die `grid-column`-Eigenschaft?

#### --distractors--

Fügt ein neues Grid-Element als Kind des Elements hinzu, auf das sie angewendet wird.

---

Richtet den Text im Grid-Element vertikal aus.

---

Setzt zwei Spalten für einen Grid-Container.

#### --answer--

Gibt dem Grid-Element an, an welcher Gitterlinie es beginnen und enden soll.

### --question--

#### --text--

Wie erstellen Sie vier Spalten mit gleicher Breite?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

Was bewirkt die `grid-template-areas`-Eigenschaft?

#### --distractors--

Sie wird verwendet, um anzugeben, wo das Element in einer Linie im Grid-Container beginnt.

---

Sie wird verwendet, um Abstände zwischen Spuren im Container zu erzeugen.

---

Sie wird verwendet, um Abschnitte in der Spurauflistung zu wiederholen.

#### --answer--

Sie wird verwendet, um den Elementenamen für die Positionierung im Grid zu vergeben.

### --question--

#### --text--

Was bewirkt die `grid-auto-flow`-Eigenschaft?

#### --distractors--

Steuert die Reihenfolge, in der Grid-Elemente angezeigt werden.

---

Passt den Abstand zwischen den Grid-Elementen an.

---

Passt das Element automatisch an, um in das Grid zu passen.

#### --answer--

Steuert, wie automatisch platzierte Elemente in das Grid eingefügt werden.

### --question--

#### --text--

Welche der folgenden Möglichkeiten ist der richtige Weg, die `grid-template-areas`-Eigenschaft zu verwenden?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

Welche der folgenden Möglichkeiten ist der richtige Weg, mit der `grid-auto-flow`-Eigenschaft zu arbeiten?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

Welche der folgenden Eigenschaften ist KEINE gültige Grid-Eigenschaft?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

Welche dieser Eigenschaften kann verwendet werden, um Elemente innerhalb eines Grid-Elements zu zentrieren?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

Welcher der folgenden Werte ist ein korrekter Wert für die `grid-auto-columns`-Eigenschaft?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

Was sind Grid-Spuren?

#### --distractors--

Kurzschreibweise für Reihen und Spalten.

---

Linien, entlang derer Sie die Bewegung der Grid-Elemente animieren können.

---

Linien, an denen jedes der Grid-Elemente beginnt und endet.

#### --answer--

Bereiche zwischen zwei benachbarten Gitterlinien.

### --question--

#### --text--

Wie verwenden Sie die `minmax()`-Funktion korrekt?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

Wie positionieren Sie ein Grid-Element innerhalb eines Layouts, das durch `grid-template-areas` definiert ist?

#### --distractors--

Indem Sie die Größe und Position des Elements direkt im Grid mit `grid-template-rows` und `grid-template-columns` definieren.

---

Indem Sie die `grid-area`-Eigenschaft verwenden und sowohl Start- als auch Endpositionen für Reihen und Spalten angeben.

---

Indem Sie sowohl `grid-area` als auch explizite Pixelkoordinaten setzen.

#### --answer--

Indem Sie den benannten Bereich der `grid-area`-Eigenschaft des Elements zuweisen.

### --question--

#### --text--

Was steuert die `grid-auto-rows`-Eigenschaft?

#### --distractors--

Die Höhe explizit definierter Reihen.

---

Die maximale Breite von Grid-Spalten.

---

Den Abstand zwischen Reihen.

#### --answer--

Die Größe implizit erstellter Reihen.

### --question--

#### --text--

Welche Eigenschaft würden Sie verwenden, um ein Grid-Element mehrere Reihen überspannen zu lassen?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

Was definiert ein explizites Grid?

#### --distractors--

Spuren, die automatisch erstellt werden, um den Inhalt anzupassen.

---

Spuren, die durch die `fr`-Einheit definiert sind.

---

Spuren, die mit `grid-auto-flow` hinzugefügt werden.

#### --answer--

Spuren, die explizit mit `grid-template-columns` oder `grid-template-rows` gesetzt werden.

### --question--

#### --text--

Welcher Wert für `grid-auto-flow` sorgt dafür, dass neue Elemente zuerst Spalten füllen?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

Was ist der Zweck von `grid-template-areas`?

#### --distractors--

Automatisches Erzeugen impliziter Spuren.

---

Ersetzen der `fr`-Einheit.

---

Setzen von `z-index`-Werten.

#### --answer--

Visuelles Zuordnen von Elementen zu benannten Grid-Bereichen.

### --question--

#### --text--

Wie können Sie ein Grid-Element so positionieren, dass es an der Spaltenlinie 2 beginnt und an der Spaltenlinie 4 endet?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

Was bewirkt `grid-template-columns: 1fr 2fr 1fr`?

#### --distractors--

Erstellt drei Spalten mit gleicher Breite.

---

Macht die mittlere Spalte dreimal so breit wie die anderen.

---

Erzwingt, dass alle Spalten genau `1fr` breit sind.

#### --answer--

Erstellt drei Spalten, wobei die mittlere doppelt so breit ist wie die seitlichen.

### --question--

#### --text--

Wie würden Sie ein Grid mit 3 gleichen Spalten und einem `20px`-Abstand zwischen ihnen erstellen?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

Was erzeugt `repeat(3, minmax(100px, 1fr))`?

#### --distractors--

Drei Spalten, die nicht unter `100px` schrumpfen können.

---

Drei feste `100px`-Spalten.

---

Drei Reihen mit maximaler Höhe von `1fr`.

#### --answer--

Drei Spalten, die proportional wachsen, aber nicht unter `100px` schrumpfen.

### --question--

#### --text--

Welche Aussage über implizite Grids ist richtig?

#### --distractors--

Implizite Grids ignorieren die `gap`-Eigenschaft.

---

Implizite Spuren müssen mit `grid-template-areas` definiert werden.

---

Implizite Spuren können nur mit der `grid-auto-flow`-Eigenschaft erstellt werden.

#### --answer--

Implizite Spuren werden erstellt, wenn der Inhalt nicht in explizite Spuren passt.

### --question--

#### --text--

Was bewirkt die `place-items`-Eigenschaft in CSS Grid?

#### --distractors--

Sie setzt die Größe der Grid-Elemente automatisch basierend auf verfügbarem Platz.

---

Sie steuert die Spalten- und Reihen-Definitionen der Grid-Vorlage.

---

Sie passt die Reihenfolge der Grid-Elemente im Container an.

#### --answer--

Sie ist eine Kurzschreibweise, um Grid-Elemente sowohl in der Block- als auch in der Inline-Achse auszurichten.

### --question--

#### --text--

Was bewirkt dieser CSS-Code?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Erstellt feste `150px`-Spalten, die den Container überlaufen.

---

Erstellt Spalten, die unabhängig vom Inhalt genau `1fr` breit sind.

---

Erstellt maximal eine Spalte pro `150px` verfügbarer Breite.

#### --answer--

Erstellt flexible Spalten, die mindestens `150px` breit sind und bei Platzmangel zusammenfallen.

### --question--

#### --text--

Wie können Sie asymmetrische Grid-Layouts erstellen?

#### --distractors--

Indem Sie nur `fr`-Einheiten verwenden.

---

Indem Sie verschiedene Längeneinheiten in `grid-template-columns` mischen.

---

Indem Sie `grid-asymmetric: true` setzen.

#### --answer--

Indem Sie für jede Spur unterschiedliche Größen definieren.

### --question--

#### --text--

Was bewirkt `grid-column-start: 2` bei einem Grid-Element?

#### --distractors--

Lässt es 2 Spalten überspannen.

---

Versetzt es um 2 Pixel.

---

Positioniert es beginnend an der zweiten vertikalen Gitterlinie.

#### --answer--

Lässt es an der zweiten Spaltenlinie beginnen.

### --question--

#### --text--

Welche Eigenschaft würden Sie verwenden, um das Überlaufverhalten in Grid-Spuren zu steuern?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

Was wird das Ergebnis des folgenden Codes sein?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

Der Container hat drei Spalten gleicher Breite und zwei Reihen mit jeweils `150px` Höhe.

---

Der Container hat drei Spalten, alle mit `100px` Breite, und zwei Reihen mit `150px` Höhe.

---

Der Container hat zwei Reihen, jeweils mit einer Höhe von `1fr`.

#### --answer--

Der Container hat drei Spalten: 100px, `1fr` und `2fr` breit und zwei Reihen: eine auto und eine mit `150px` Höhe.

### --question--

#### --text--

Wie lassen Sie ein Grid-Element alle verfügbaren Reihen überspannen?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

Welche Eigenschaft steuert die Ausrichtung von Grid-Elementen entlang der Block-Achse?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

Wie stellen Sie sicher, dass ein Grid-Element immer in der ersten Spalte bleibt, unabhängig von Änderungen im Grid?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
