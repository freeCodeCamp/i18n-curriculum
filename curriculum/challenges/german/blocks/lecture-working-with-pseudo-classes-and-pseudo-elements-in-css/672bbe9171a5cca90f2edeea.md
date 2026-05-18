---
id: 672bbe9171a5cca90f2edeea
title: Was sind Beispiele für Element-Benutzeraktions-Pseudoklassen?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

Benutzerfeedback ist ein entscheidendes Element im Webdesign. Es ist zum Beispiel wichtig, dass Nutzer visuelle Hinweise erhalten, wenn sie mit Elementen auf einer Website interagieren, etwa wenn sie mit der Maus über einen Button fahren oder auf einen Link klicken. Dieses Feedback hilft den Nutzern, den Zustand interaktiver Elemente zu verstehen, zum Beispiel ob ein Link bereits besucht wurde oder nicht.

Benutzeraktions-Pseudoklassen in CSS sind spezielle Schlüsselwörter, mit denen Sie diese Art von Feedback geben können, ohne JavaScript oder andere Programmiersprachen zu benötigen.

Zu diesen Pseudoklassen gehören `:hover`, `:active`, `:focus` und `:visited` sowie weitere. Sie ermöglichen es Ihnen, das Aussehen von Elementen basierend auf Benutzerinteraktionen zu ändern und so die Benutzererfahrung zu verbessern.

Lassen Sie uns einige der Benutzeraktions-Pseudoklassen ansehen und sehen, wie sie funktionieren.

Die `:active`-Pseudoklasse wendet Stile an, wenn ein Element vom Benutzer aktiviert wird. Zum Beispiel, wenn der Nutzer auf einen Button oder Link klickt, gibt sie sofortiges visuelles Feedback und zeigt den Nutzern, dass ihre Aktion erkannt wurde.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>
```

```css
a:active {
  color: crimson;
}
```

:::

Die `:hover`-Pseudoklasse wird ausgelöst, wenn ein Nutzer mit der Maus oder einem anderen Zeigegerät über ein Element fährt. Entwickler verwenden sie oft, um visuelles Feedback für Buttons, Links oder andere Elemente zu erzeugen, die auf Benutzeraufmerksamkeit reagieren sollen. Hier ist ein Button, über den ein Nutzer vor dem Klicken fährt:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>
```

```css
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}
```

:::

Die `:focus`-Pseudoklasse wendet Stile an, wenn ein Element den Fokus erhält, typischerweise durch Tastaturnavigation oder wenn ein Nutzer in ein Formulareingabefeld klickt. Das dient nicht nur als Feedback, sondern ist auch entscheidend für die Barrierefreiheit. So können Nutzer, die stark auf die Tastatur angewiesen sind, leicht erkennen, mit welchem Element sie interagieren.

Hier ist ein Beispiel für ein Eingabefeld, das den Fokus erhält, wenn es angeklickt wird oder per Tastatur angesteuert wird:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
```

```css
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}
```

:::

Die `:visited`-Pseudoklasse zielt auf einen Link ab, den der Nutzer bereits besucht hat. Das ist nützlich, um Nutzern zu helfen, zwischen bereits besuchten Seiten und noch nicht besuchten zu unterscheiden. Hier ein Beispiel, bei dem sich die Farbe des Ankertexts auf Cyan ändert, wenn der Link besucht wurde:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>
```

```css
a:visited {
  color: cyan;
}
```

:::

Die `:checked`-Pseudoklasse in CSS erlaubt es, Formularelemente wie Kontrollkästchen und Optionsschaltflächen zu stylen, wenn sie ausgewählt (angekreuzt) sind. Diese Pseudoklasse ist hilfreich, um das Aussehen dieser Elemente anzupassen und so die Benutzererfahrung zu verbessern, obwohl Browser bereits Standardstile dafür bereitstellen.

Hier ein Beispiel mit einem Kontrollkästchen, um den Nutzungsbedingungen auf einer Website zuzustimmen.

**HINWEIS**: Einige CSS-Eigenschaften in diesem Beispiel wurden noch nicht behandelt. Es dient nur dazu, Ihnen eine Vorstellung davon zu geben, wie man ein benutzerdefiniertes Kontrollkästchen erstellt. Sie lernen, wie das alles funktioniert, in zukünftigen Lektionen und Workshops.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>
```

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

```

:::

In diesem Beispiel verwenden wir die `appearance`-Eigenschaft mit dem Wert `none`, um die vom Browser standardmäßig auf Kontrollkästchen angewendeten Stile zu entfernen. Wenn der Nutzer das Kästchen aktiviert, erhält es eine Hintergrundfarbe von `green`.

Weitere Beispiele für Aktions-Pseudoklassen sind:

- `:focus-within`: um Stile auf ein Element anzuwenden, wenn es oder einer seiner Nachfahren den Fokus hat.
- `:enabled`: um Formularelemente wie Buttons oder andere Elemente anzusprechen, die gerade aktiviert sind.
- `:disabled`: um Formularelemente wie Buttons oder andere Elemente anzusprechen, die deaktiviert sind.
- `:target`: um Stile auf ein Element anzuwenden, das Ziel eines URL-Fragments ist (der Teil einer URL nach dem `#`-Symbol).

# --questions--

## --text--

Was ermöglichen Ihnen Benutzeraktions-Pseudoklassen?

## --answers--

Sie ermöglichen Animationen und Übergänge.

### --feedback--

Überlegen Sie, wie Sie nur mit CSS mit Nutzern interagieren können.

---

Sie erlauben es Ihnen, die DOM-Struktur dynamisch zu verändern.

### --feedback--

Überlegen Sie, wie Sie nur mit CSS mit Nutzern interagieren können.

---

Sie ermöglichen es Ihnen, dem Nutzer Feedback zu geben, ohne auf JavaScript angewiesen zu sein.

---

Sie erlauben es Ihnen, das letzte Element in einer Liste zu stylen.

### --feedback--

Überlegen Sie, wie Sie nur mit CSS mit Nutzern interagieren können.

## --video-solution--

3

## --text--

Was bewirkt die `:checked`-Pseudoklasse in CSS?

## --answers--

Sie wählt ein Element aus, wenn es deaktiviert ist.

### --feedback--

Denken Sie daran, wie Formulare Benutzerauswahlen behandeln.

---

Sie wählt ein Element aus, wenn es mit der Maus überfahren wird.

### --feedback--

Denken Sie daran, wie Formulare Benutzerauswahlen behandeln.

---

Sie stylt Elemente wie Kontrollkästchen oder Optionsschaltflächen, die ausgewählt sind.

---

Sie stylt ein Element, wenn es den Fokus erhält.

### --feedback--

Denken Sie daran, wie Formulare Benutzerauswahlen behandeln.

## --video-solution--

3

## --text--

Was bewirkt die `:focus`-Pseudoklasse?

## --answers--

Sie wählt ein Element aus, wenn es mit der Maus überfahren wird.

### --feedback--

Denken Sie daran, wie Nutzer Formulare mit der Tastatur bedienen.

---

Sie wendet Stile an, wenn ein Element den Fokus erhält, normalerweise durch Tastaturnavigation oder einen Klick.

---

Sie wählt ein Element aus, nachdem ein Formular abgesendet wurde.

### --feedback--

Denken Sie daran, wie Nutzer Formulare mit der Tastatur bedienen.

---

Sie wendet Stile auf ein Element an, wenn es deaktiviert ist.

### --feedback--

Denken Sie daran, wie Nutzer Formulare mit der Tastatur bedienen.

## --video-solution--

2
