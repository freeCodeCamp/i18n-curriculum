---
id: 66ed8fc1f45ce3ece4053ead
title: Quiz zur Barrierefreiheit von CSS
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 9 der 10 Fragen unten richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Warum benötigen Sie auf Ihrer Webseite einen guten Farbkontrast?

#### --distractors--

Um die Seite lebendiger zu gestalten.

---

Um Anforderungen für Suchmaschinenoptimierung (SEO) zu erfüllen.

---

Um wichtige Elemente der Seite hervorzuheben.

#### --answer--

Um den Seiteninhalt zugänglich und lesbar zu machen.

### --question--

#### --text--

Welches der folgenden Tools ermöglicht es Ihnen, Hintergrund- und Vordergrundfarben einzugeben und deren Kontrastverhältnis zu überprüfen?

#### --distractors--

TPGi Colour Contrast Analyzer

---

Figma

---

Canva

#### --answer--

WebAIMs Color Contrast Checker

### --question--

#### --text--

Welches der folgenden Tools ermöglicht es Ihnen, Hintergrund- und Vordergrundfarben von auf Ihrem Bildschirm angezeigten Inhalten auszuwählen und deren Kontrastverhältnis zu überprüfen?

#### --distractors--

Figma

---

Canva

---

WebAIMs Color Contrast Checker

#### --answer--

TPGi Colour Contrast Analyzer

### --question--

#### --text--

Warum sollten Sie `display: none` und `visibility: hidden` NICHT verwenden, um Inhalte visuell zu verbergen?

#### --distractors--

Diese Methoden sorgen dafür, dass nur unterstützende Technologien wie Screenreader auf die verborgenen Inhalte zugreifen können.

---

Diese Methoden sorgen dafür, dass die Inhalte nur verborgen sind, bis Nutzer mit der Maus über die Inhalte fahren.

---

Diese Methoden funktionieren nicht mit einigen Browsern.

#### --answer--

Diese Methoden entfernen die Inhalte aus dem Barrierefreiheitsbaum, wodurch Screenreader nicht auf die verborgenen Inhalte zugreifen können.

### --question--

#### --text--

Was ist ein Barrierefreiheitsbaum?

#### --distractors--

Eine visuelle Darstellung des Layouts einer Webseite.

---

Eine Struktur, die von Screenreadern verwendet wird, um den Textinhalt einer Webseite vorzulesen.

---

Eine Kopie des DOM-Baums.

#### --answer--

Eine Struktur, die von Screenreadern verwendet wird, um den Inhalt einer Webseite zu interpretieren und mit ihm zu interagieren.

### --question--

#### --text--

Welche der folgenden Optionen stellt sicher, dass ein Bild eine Mindestbreite von `400px` hat, aber breiter wird, wenn die Viewport-Breite größer als `1000px` ist?

#### --distractors--

```css
img {
  width: max(400px, 10vw);
}
```

---

```css
img {
  width: max(400px, 30vw);
}
```

---

```css
img {
  width: max(400px, 20vw);
}
```

#### --answer--

```css
img {
  width: max(400px, 40vw);
}
```

### --question--

#### --text--

Welcher der folgenden `scroll-behavior`-Werte ermöglicht ein sanftes Scrollverhalten?

#### --distractors--

`auto`

---

`inherit`

---

`revert`

#### --answer--

`smooth`

### --question--

#### --text--

Welche der folgenden Funktionen wird verwendet, um die Animationspräferenz des Nutzers zu erkennen?

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

Welches Barrierefreiheitsproblem besteht beim `placeholder`-Attribut in einem `input`-Element?

#### --distractors--

Der Platzhaltertext verhindert, dass Screenreader die Bezeichnung der Eingabe vorlesen.

---

Der Platzhaltertext verhindert, dass Screenreader den Eingabewert vorlesen.

---

Der Platzhaltertext ist zu klein, um lesbar zu sein.

#### --answer--

Der Platzhaltertext kann mit einem tatsächlichen Eingabewert verwechselt werden.

### --question--

#### --text--

Was bewirkt das `hidden`-Attribut?

#### --distractors--

Es verbirgt Inhalte und zeigt sie beim Überfahren mit der Maus an.

---

Es verbirgt Inhalte nur im Barrierefreiheitsbaum.

---

Es verbirgt Inhalte visuell, aber die Inhalte sind im Barrierefreiheitsbaum verfügbar.

#### --answer--

Es verbirgt Inhalte sowohl visuell als auch im Barrierefreiheitsbaum.
