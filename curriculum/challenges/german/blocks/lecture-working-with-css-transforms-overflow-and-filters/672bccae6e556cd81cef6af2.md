---
id: 672bccae6e556cd81cef6af2
title: Was ist margin collapsing und wie funktioniert es?
challengeType: 19
dashedName: what-is-margin-collapsing
---

# --interactive--

Margin collapsing ist ein grundlegendes Konzept in CSS, das Einsteiger in die Webentwicklung oft verwirrt.

Dieses Verhalten tritt auf, wenn sich die vertikalen Außenabstände benachbarter Elemente überlappen, sodass ein einziger Außenabstand entsteht, der dem größeren der beiden entspricht.

Das Verständnis von margin collapsing ist wichtig, um den Abstand und das Layout im Webdesign präzise steuern zu können. Also schauen wir uns an, wie margin collapsing funktioniert, und betrachten einige typische Situationen, in denen es auftritt.

In CSS kollabieren zwei vertikale Außenabstände, wenn sie aufeinandertreffen. Das bedeutet, dass sie sich nicht addieren, sondern der größere Außenabstand gewinnt und den Abstand zwischen den Elementen bestimmt. Dieses Verhalten gilt nur für vertikale Außenabstände (oben und unten), nicht für horizontale (links und rechts). Hier ein Beispiel zur Veranschaulichung:

:::interactive_editor

```html
<style>
  .box1 {
    margin-bottom: 20px;
    background-color: lightblue;
  }
  .box2 {
    margin-top: 30px;
    background-color: lightgreen;
  }
</style>

<div class="box1">Box 1</div>
<div class="box2">Box 2</div>
```

:::

In diesem Beispiel würden Sie vielleicht erwarten, dass der Gesamtabstand zwischen `.box1` und `.box2` 50 Pixel beträgt (20 Pixel plus 30 Pixel). Aufgrund von margin collapsing beträgt der tatsächliche Abstand jedoch 30 Pixel, also der größere der beiden Außenabstände.

Wie wir im vorherigen Beispiel gesehen haben, kollabieren die Außenabstände benachbarter Geschwisterelemente. Dies ist der einfachste Fall von margin collapsing. Schauen wir uns weitere Fälle an, in denen margin collapsing auftreten kann.

Außenabstände können auch zwischen einem Elternelement und seinem ersten oder letzten Kindelement kollabieren. Wenn kein Rahmen, Innenabstand, inline Inhalt oder Clearance den Außenabstand des Elternteils vom Kind trennt, kollabieren sie.

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

In diesem Fall würden Sie erwarten, dass das Kind 70 Pixel vom oberen Rand entfernt ist (40 Pixel plus 30 Pixel). Die Außenabstände kollabieren jedoch, und der größere Außenabstand von 40 Pixel wird verwendet.

Hat ein Element keinen Inhalt, keinen Innenabstand und keinen Rahmen, können seine oberen und unteren Außenabstände zu einem einzigen Außenabstand kollabieren.

:::interactive_editor

```html
<style>
  .empty-block {
    margin-top: 20px;
    margin-bottom: 10px;
    height: 0;
  }
  .next-block {
    background-color: lightgray;
  }
</style>

<div class="empty-block"></div>
<div class="next-block">Next block</div>
```

:::

In diesem Beispiel kollabieren die oberen und unteren Außenabstände von `empty-block` zu einem einzigen Außenabstand von 20 Pixel, dem größeren der beiden.

Hier ein Beispiel, wie man das Kollabieren mit Innenabstand verhindert:

:::interactive_editor

```html
<style>
  .parent {
    margin-top: 40px;
    padding-top: 1px;
    background-color: lightyellow;
  }
  .child {
    margin-top: 30px;
    background-color: lightpink;
  }
</style>

<div class="parent">
  <div class="child">Child element</div>
</div>
```

:::

In diesem Fall verhindert der ein Pixel Innenabstand beim Elternteil das Kollabieren der Außenabstände, sodass sich ein Gesamtabstand von 71 Pixel vom oberen Rand des Elternteils bis zum oberen Rand des Kindinhalts ergibt.

Das Verständnis von margin collapsing ist wichtig, um Layout und Abstände in CSS präzise zu steuern. Obwohl es manchmal zu unerwarteten Ergebnissen führen kann, ist es eine Funktion, die für ästhetisch ansprechendere und konsistentere Abstände in Dokumenten sorgt. Wenn Sie wissen, wann margin collapsing auftritt und wie Sie es bei Bedarf verhindern, können Sie in Ihren Webdesigns vorhersehbarere und besser wartbare Layouts erstellen.

# --questions--

## --text--

In welche Richtung tritt margin collapsing auf?

## --answers--

Nur bei horizontalen Außenabständen.

### --feedback--

Überlegen Sie, welche Außenabstände (oben, unten, links, rechts) von diesem Verhalten betroffen sind.

---

Nur bei vertikalen Außenabständen.

---

Sowohl bei horizontalen als auch bei vertikalen Außenabständen.

### --feedback--

Überlegen Sie, welche Außenabstände (oben, unten, links, rechts) von diesem Verhalten betroffen sind.

---

Bei diagonalen Außenabständen.

### --feedback--

Überlegen Sie, welche Außenabstände (oben, unten, links, rechts) von diesem Verhalten betroffen sind.

## --video-solution--

2

## --text--

Was passiert, wenn zwei benachbarte Elemente unterschiedliche Außenabstände haben?

## --answers--

Die Außenabstände werden addiert.

### --feedback--

Überlegen Sie, welcher Außenabstand „gewinnt“, wenn das Kollabieren auftritt.

---

Der kleinere Außenabstand wird verwendet.

### --feedback--

Überlegen Sie, welcher Außenabstand „gewinnt“, wenn das Kollabieren auftritt.

---

Der größere Außenabstand wird verwendet.

---

Der Durchschnitt der beiden Außenabstände wird verwendet.

### --feedback--

Überlegen Sie, welcher Außenabstand „gewinnt“, wenn das Kollabieren auftritt.

## --video-solution--

3

## --text--

Welches der folgenden verhindert KEIN margin collapsing zwischen einem Elternteil und seinem ersten Kindelement?

## --answers--

Hinzufügen eines `border` zum Elternteil.

### --feedback--

Überlegen Sie, welche Eigenschaften eine Trennung zwischen den Außenabständen von Elternteil und Kind schaffen.

---

Setzen von `padding-top: 1px;` beim Elternteil.

### --feedback--

Überlegen Sie, welche Eigenschaften eine Trennung zwischen den Außenabständen von Elternteil und Kind schaffen.

---

Verwenden von `display: inline-block;` beim Kind.

### --feedback--

Überlegen Sie, welche Eigenschaften eine Trennung zwischen den Außenabständen von Elternteil und Kind schaffen.

---

Setzen von `margin-top: 0;` beim Kind.

## --video-solution--

4
