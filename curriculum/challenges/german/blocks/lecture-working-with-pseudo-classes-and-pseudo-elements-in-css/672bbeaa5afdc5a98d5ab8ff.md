---
id: 672bbeaa5afdc5a98d5ab8ff
title: Was sind Beispiele für Location-Pseudoklassen?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

Location-Pseudoklassen werden verwendet, um Links und Elemente zu stylen, die im aktuellen Dokument angesprochen werden. Sie bieten eine Möglichkeit, Stile anzuwenden, basierend darauf, ob ein Link besucht wurde oder ob ein Element gerade den Fokus hat.

Beispiele für Location-Pseudoklassen sind:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

Werfen wir einen genaueren Blick auf jede dieser Pseudoklassen.

Die `:link`-Pseudoklasse ermöglicht es Ihnen, alle nicht besuchten Links auf einer Webseite anzusprechen. Sie können sie verwenden, um Links vor dem Klicken durch den Benutzer anders zu gestalten. Zum Beispiel möchten Sie vielleicht alle nicht besuchten Links blau oder in der Primärfarbe Ihrer Website darstellen:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:link {
  color: magenta;
}
```

:::

In diesem Fall erscheint jeder Link, den der Benutzer noch nicht angeklickt hat, magenta. Sobald der Benutzer auf den Link klickt, gilt der `:link`-Stil nicht mehr, und die `:visited`-Pseudoklasse übernimmt. Die `:visited`-Pseudoklasse kommt nach dem Klicken des Links zum Einsatz, sodass Sie sie verwenden können, um Links anzusprechen, die der Benutzer bereits besucht hat.

Hier ist ein Beispiel, wie Sie den Zustand des besuchten Links auf die Farbe `purple` ändern:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:visited {
  color: purple;
}
```

:::

Die `:visited`-Pseudoklasse hilft Benutzern, zwischen besuchten und nicht besuchten Links zu unterscheiden.

Die `:any-link`-Pseudoklasse ist eine Kombination aus den `:link`- und `:visited`-Pseudoklassen. Sie trifft also auf jedes Ankerelement mit einem `href`-Attribut zu, unabhängig davon, ob es besucht wurde oder nicht.

Hier ist ein Beispiel, wie Sie die Linkfarbe für die `:any-link`-Pseudoklasse auf `crimson` ändern:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>
```

```css
a:any-link {
  color: crimson;
}
```

:::

Die `:local-link`-Pseudoklasse richtet sich an Links, die auf dasselbe Dokument verweisen. Sie kann nützlich sein, wenn Sie interne Links von externen unterscheiden möchten. Derzeit unterstützt kein Browser die `:local-link`-Pseudoklasse.

Die `:target`-Pseudoklasse wählt ein Element aus, das mit dem aktuellen URL-Fragment-Identifikator übereinstimmt, zum Beispiel `#section1`. Sie ist sehr nützlich für Seiten mit Navigation innerhalb der Seite.

Hier ist ein HTML-Beispiel, das eine Navigation innerhalb der Seite darstellt. Das CSS verwendet die `:target`-Pseudoklasse, um den Abschnitt zu stylen, der mit dem Ziel der Navigation übereinstimmt:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
```

```css
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}
```

:::

Wenn der Benutzer auf einen der Navigationslinks klickt, ändert sich die Hintergrundfarbe des jeweiligen Abschnitts zu grün.

# --questions--

## --text--

Welche Pseudoklasse ermöglicht es Ihnen, ein Element zu stylen, das mit dem aktuellen URL-Fragment-Identifikator übereinstimmt, wie zum Beispiel `#section1`?

## --answers--

`:hover`

### --feedback--

Überlegen Sie, wie Sie einen bestimmten Abschnitt hervorheben können, wenn Sie durch Links innerhalb der Seite navigieren.

---

`:focus`

### --feedback--

Überlegen Sie, wie Sie einen bestimmten Abschnitt hervorheben können, wenn Sie durch Links innerhalb der Seite navigieren.

---

`:target`

---

`:checked`

### --feedback--

Überlegen Sie, wie Sie einen bestimmten Abschnitt hervorheben können, wenn Sie durch Links innerhalb der Seite navigieren.

## --video-solution--

3

## --text--

Wann sind Location-Pseudoklassen besonders nützlich?

## --answers--

Beim Stylen von Elementen basierend auf ihren Geschwisterbeziehungen.

### --feedback--

Denken Sie daran, wie Sie Links und angesprochene Elemente je nach Benutzerinteraktion stylen können.

---

Beim Anwenden von Stilen basierend darauf, ob ein Link besucht wurde oder ein Element gerade den Fokus hat.

---

Beim Stylen von Elementen basierend auf den Attributen ihres Elternelements.

### --feedback--

Denken Sie daran, wie Sie Links und angesprochene Elemente je nach Benutzerinteraktion stylen können.

---

Beim dynamischen Anpassen des Layouts einer Webseite.

### --feedback--

Denken Sie daran, wie Sie Links und angesprochene Elemente je nach Benutzerinteraktion stylen können.

## --video-solution--

2

## --text--

Welche Pseudoklasse ist dafür vorgesehen, Links anzusprechen, die auf dasselbe Dokument verweisen, wird aber derzeit von keinem Browser unterstützt?

## --answers--

`:any-link`

### --feedback--

Denken Sie an die Pseudoklasse, die interne Links von externen unterscheiden soll, auch wenn sie noch nicht unterstützt wird.

---

`:local-link`

---

`:visited`

### --feedback--

Denken Sie an die Pseudoklasse, die interne Links von externen unterscheiden soll, auch wenn sie noch nicht unterstützt wird.

---

`:target`

### --feedback--

Denken Sie an die Pseudoklasse, die interne Links von externen unterscheiden soll, auch wenn sie noch nicht unterstützt wird.

## --video-solution--

2
