---
id: 672bbeb6eefd7ca9c003ea00
title: Was sind Beispiele für baumstrukturierte Pseudoklassen?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

Baumstrukturierte Pseudoklassen ermöglichen es Ihnen, Elemente basierend auf ihrer Position im Dokumentbaum gezielt anzusprechen und zu stylen. Der Dokumentbaum bezeichnet die hierarchische Struktur der Elemente in einem HTML-Dokument.

Hier ist eine Liste baumstrukturierter Pseudoklassen:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Werfen wir einen genaueren Blick auf jede der baumstrukturierten Pseudoklassen, begleitet von Beispielen.

Die `:root`-Pseudoklasse ist normalerweise das Wurzel-`html`-Element. Sie hilft Ihnen, die höchste Ebene im Dokument anzusprechen, damit Sie einen gemeinsamen Stil auf das gesamte Dokument anwenden können.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

Die `:root`-Pseudoklasse wird auch häufig zum Setzen von CSS-Variablen verwendet:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Mit CSS-Variablen können Sie Werte speichern und in Ihrem Stylesheet wiederverwenden. Mehr dazu lernen Sie später.

Leere Elemente, also Elemente ohne Kinder außer Leerraum, sind ebenfalls Teil des Dokumentbaums. Deshalb gibt es eine `:empty`-Pseudoklasse, um leere Elemente anzusprechen. Zum Beispiel enthält dieser HTML-Code zwei leere Listenelemente. Mit der `:empty`-Pseudoklasse können Sie die leeren Listenelemente anders stylen:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

Das Praktischste bei den leeren Listenelementen ist wahrscheinlich, sie gar nicht anzuzeigen:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` ermöglicht es Ihnen, Elemente basierend auf ihrer Position innerhalb eines Elternteils auszuwählen, während `:nth-last-child(n)` Elemente vom Ende her zählt. `n` kann eine bestimmte Zahl oder ein Schlüsselwort wie `odd` oder `even` sein. Das ist besonders nützlich, um Tabellenzellen basierend auf ihrer Position zu stylen: gerade und ungerade.

Hier ist ein HTML-Beispiel einer Obstpreistabelle. Das CSS verwendet die `:nth-child`-Pseudoklasse, um die Tabellenzellen basierend auf ungeraden und geraden Positionen anzusprechen:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

Die `:first-child`-, `:last-child`- und `:only-child`-Pseudoklassen wirken alle auf Elemente innerhalb eines übergeordneten Containers oder des gesamten Dokuments.

- `:first-child` wählt das erste Element in einem Elternelement oder im Dokument aus.
- `:last-child` wählt das letzte Element in einem Elternelement oder im Dokument aus.
- `:only-child` wählt das einzige Element in einem Elternelement oder im Dokument aus.

Die Verwendung der `:first-child`- und `:last-child`-Pseudoklassen wählt in diesem Beispiel sowohl `Item 1` als auch `Item 3` aus:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Wenn Sie mehrere ungeordnete Listen auf der Seite haben, müssen Sie bei der Auswahl genauer sein:

Um zu zeigen, wie die `:only-child`-Pseudoklasse funktioniert, hier ein HTML-Beispiel mit zwei separaten `div`-Elementen. Die Verwendung der `:only-child`-Pseudoklasse stellt sicher, dass nur das `div`-Element mit einem einzelnen Kind ausgewählt wird:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

Die `:first-of-type`- und `:last-of-type`-Pseudoklassen wählen das erste und letzte Vorkommen eines bestimmten Elementtyps innerhalb seines Elternteils aus. Sie sind nützlich, um einzigartiges Styling auf das erste oder letzte Element dieses Typs unter seinen Geschwistern anzuwenden.

Im folgenden Beispiel gelten `:first-of-type` und `:last-of-type` für das erste und letzte Element innerhalb des `section`-Elements:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` ermöglicht es Ihnen, ein bestimmtes Element innerhalb seines Elternteils basierend auf seiner Position unter Geschwistern desselben Typs auszuwählen. Zum Beispiel zielt `:nth-of-type(2)` im folgenden HTML auf das zweite Element im Container ab:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` wählt ein Element aus, wenn es das einzige seiner Art innerhalb seines Elternteils ist. Das kann nützlich sein, um einzelne Elemente hervorzuheben oder sicherzustellen, dass sie anders gestylt werden, wenn sie nicht Teil einer Gruppe sind.

Im folgenden Beispiel gibt es zwei `div`-Elemente, von denen eines nur ein einzelnes Element enthält. Das CSS wird nur auf den ersten Container angewendet:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

Was ist der Unterschied zwischen den `:first-of-type`- und `:last-of-type`-Pseudoklassen?

## --answers--

`:first-of-type` spricht das erste Element eines bestimmten Typs innerhalb seines Elternteils an, während `:last-of-type` das letzte Element eines anderen Typs anspricht.

### --feedback--

Überlegen Sie, wie diese Pseudoklassen Ihnen helfen, das erste und letzte Vorkommen eines bestimmten Tags zu stylen, wie `p` oder `h1`.

---

`:first-of-type` und `:last-of-type` sprechen beide das erste Vorkommen eines Elements an, aber in unterschiedlichen Abschnitten des Dokuments.

### --feedback--

Überlegen Sie, wie diese Pseudoklassen Ihnen helfen, das erste und letzte Vorkommen eines bestimmten Tags zu stylen, wie `p` oder `h1`.

---

`:first-of-type` wählt das erste Vorkommen eines bestimmten Elementtyps innerhalb seines Elternteils aus, während `:last-of-type` das letzte Vorkommen desselben Elementtyps innerhalb seines Elternteils auswählt.

---

`:last-of-type` wendet Stile auf das erste und letzte Element im Dokument an, während `:last-of-type` Stile auf alle Elemente eines bestimmten Typs anwendet.

### --feedback--

Überlegen Sie, wie diese Pseudoklassen Ihnen helfen, das erste und letzte Vorkommen eines bestimmten Tags zu stylen, wie `p` oder `h1`.

## --video-solution--

3

## --text--

Was ist der Unterschied zwischen den `:first-child`- und `:last-child`-Pseudoklassen?

## --answers--

`:first-child` spricht das erste Element innerhalb seines Elternteils an, während `:last-child` das letzte Element innerhalb eines anderen Elternteils anspricht.

### --feedback--

Denken Sie darüber nach, wie die beiden Pseudoklassen Ihnen helfen, das erste und letzte Element innerhalb desselben Elterncontainers zu stylen.

---

`:first-child` spricht das erste Element innerhalb seines Elternteils an, während `:last-child` das letzte Element innerhalb desselben Elternteils anspricht.

---

`:first-child` spricht das erste Element eines bestimmten Typs innerhalb seines Elternteils an, während `:last-child` das letzte Element eines anderen Typs innerhalb desselben Elternteils anspricht.

### --feedback--

Denken Sie darüber nach, wie die beiden Pseudoklassen Ihnen helfen, das erste und letzte Element innerhalb desselben Elterncontainers zu stylen.

---

`:first-child` spricht das erste und letzte Element innerhalb eines Elternteils an, während `:last-child` alle anderen Elemente anspricht.

### --feedback--

Denken Sie darüber nach, wie die beiden Pseudoklassen Ihnen helfen, das erste und letzte Element innerhalb desselben Elterncontainers zu stylen.

## --video-solution--

2

## --text--

Welche Pseudoklasse ermöglicht es Ihnen, Elemente anzusprechen, die keine Kinder haben, einschließlich solcher, die nur Leerraum enthalten?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Denken Sie darüber nach, wie Sie Elemente stylen können, die keinen Inhalt haben.

---

`:last-child`

### --feedback--

Denken Sie darüber nach, wie Sie Elemente stylen können, die keinen Inhalt haben.

---

`:only-of-type`

### --feedback--

Denken Sie darüber nach, wie Sie Elemente stylen können, die keinen Inhalt haben.

## --video-solution--

1
