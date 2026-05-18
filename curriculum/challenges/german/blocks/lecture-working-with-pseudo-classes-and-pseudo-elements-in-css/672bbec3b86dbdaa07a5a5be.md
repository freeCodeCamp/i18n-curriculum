---
id: 672bbec3b86dbdaa07a5a5be
title: Was sind Beispiele für funktionale Pseudoklassen?
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

Funktionale Pseudoklassen ermöglichen es Ihnen, Elemente basierend auf komplexeren Bedingungen oder Beziehungen auszuwählen. Im Gegensatz zu regulären Pseudoklassen, die Elemente basierend auf einem Zustand ansprechen, zum Beispiel `:hover`, `:focus`, akzeptieren funktionale Pseudoklassen Argumente in runden Klammern, daher der Name „funktionale Pseudoklassen“.

Beispiele für funktionale Pseudoklassen sind:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

Werfen wir einen genaueren Blick auf jede dieser funktionalen Pseudoklassen mit Beispielen.

Die `:is()`-Pseudoklasse ist nützlich, wenn Sie eine Gruppe von Elementen stylen möchten, die einige, aber nicht alle Eigenschaften gemeinsam haben. Zum Beispiel möchten Sie verschiedene Arten von Buttons auf Ihrer Website stylen, darunter `button`-Elemente, als Buttons gestylte Links und `input`-Elemente mit den Typen `submit` und `reset`. Hier ist ein Beispiel, das das darstellt. Ohne die `:is()`-Funktion müssten Sie einen komplexen Selektor wie diesen schreiben:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}
```

:::

Mit der `:is()`-Funktion können Sie einen kompakteren und verständlicheren Selektor wie diesen schreiben:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />
```

```css
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}
```

:::

Die `:where()`-Pseudoklasse funktioniert ähnlich wie `:is()`, erhöht jedoch nicht die Spezifität Ihrer Selektoren. Das macht sie ideal, um Styles anzuwenden, ohne die Spezifität anderer Regeln zu beeinflussen.

Zum Beispiel können Sie die `:where()`-Funktion verwenden, um Nullwerte für `margin` und `padding` auf Überschriften-Elemente anzuwenden. So stellen Sie sicher, dass das Zurücksetzen nicht mit spezifischeren Styles kollidiert, die Sie später anwenden könnten. Hier ist ein Beispiel dafür:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>
```

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

:::

Das Stylen eines Elternelements basierend auf dem Zustand seiner Kind-Elemente war früher schwierig, bis die `:has()`-Pseudoklasse eingeführt wurde. Sie ermöglicht es, Styles auf ein Elternelement anzuwenden, basierend auf dem Vorhandensein oder Zustand seiner Kind-Elemente.

Zum Beispiel wird das folgende CSS nur auf ein beliebiges `article`-Element angewendet, das ein `h2` enthält:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>
```

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

:::

Die `:not()`-Pseudoklasse ist ideal für Situationen, in denen Sie Styles auf eine Gruppe von Elementen anwenden möchten, aber eine oder mehrere spezifische Ausnahmen ausschließen wollen. Im folgenden CSS erhält jeder Button, der kein Primary-Button ist, einen grauen Hintergrund:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>
```

```css
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}
```

:::

# --questions--

## --text--

Welche Pseudoklasse funktioniert wie `:is()`, erhöht aber nicht die Spezifität Ihrer Selektoren?

## --answers--

`:not()`

### --feedback--

Diese Pseudoklasse ist ideal, um breite, nicht-invasive Styles anzuwenden.

---

`:has()`

### --feedback--

Diese Pseudoklasse ist ideal, um breite, nicht-invasive Styles anzuwenden.

---

`:where()`

---

`:empty`

### --feedback--

Diese Pseudoklasse ist ideal, um breite, nicht-invasive Styles anzuwenden.

## --video-solution--

3

## --text--

Welche dieser Pseudoklassen ist keine funktionale Pseudoklasse?

## --answers--

`:is()`

### --feedback--

Funktionale Pseudoklassen verwenden runde Klammern und akzeptieren Argumente darin.

---

`:first-child`

---

`:has()`

### --feedback--

Funktionale Pseudoklassen verwenden runde Klammern und akzeptieren Argumente darin.

---

`:where()`

### --feedback--

Funktionale Pseudoklassen verwenden runde Klammern und akzeptieren Argumente darin.

## --video-solution--

2

## --text--

Welche Pseudoklasse ist perfekt für eine Situation, in der Sie Styles auf eine Gruppe von Elementen anwenden möchten, aber eine oder zwei Ausnahmen ausschließen wollen?

## --answers--

`:has()`

### --feedback--

Überlegen Sie, wie Sie bestimmte Elemente vom Styling ausschließen können.

---

`:is()`

### --feedback--

Überlegen Sie, wie Sie bestimmte Elemente vom Styling ausschließen können.

---

`:not()`

---

`:where()`

### --feedback--

Überlegen Sie, wie Sie bestimmte Elemente vom Styling ausschließen können.

## --video-solution--

3
