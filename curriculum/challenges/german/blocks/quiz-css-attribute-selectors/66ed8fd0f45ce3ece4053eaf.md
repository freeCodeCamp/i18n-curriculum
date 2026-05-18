---
id: 66ed8fd0f45ce3ece4053eaf
title: Quiz zu CSS-Attributselektoren
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Um das Quiz zu bestehen, müssen Sie mindestens 9 der 10 Fragen unten richtig beantworten.

# --quizzes--

## --quiz--

### --question--

#### --text--

Wofür werden CSS-Attributselektoren verwendet?

#### --distractors--

Um Stile auf Elemente basierend auf ihrem Tag-Namen anzuwenden.

---

Um Stile auf Elemente basierend auf ihrem Klassennamen anzuwenden.

---

Um Stile auf Elemente basierend auf ihrem Elternelement anzuwenden.

#### --answer--

Um Stile auf Elemente basierend auf ihren Attributen anzuwenden.

### --question--

#### --text--

Welches der folgenden Elemente wird von diesem CSS-Selektor NICHT ausgewählt?

```css
[title~="flower"] {
  border: 5px solid yellow;
}
```

#### --distractors--

```html
<img src="img1.jpg" title="clematis flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="flower" width="150" height="113">
```

---

```html
<img src="img2.jpg" title="FLOWERS of flower" width="150" height="113">
```

#### --answer--

```html
<img src="img2.jpg" title="flowers" width="150" height="113">
```

### --question--

#### --text--

Welcher CSS-Selektor wählt alle `p`-Elemente aus, deren `lang`-Attribut auf `"fr"` gesetzt ist?

#### --distractors--

```css
p[lang-="fr"] { color: blue; }
```

---

```css
p[lang~="fr"] { color: blue; }
```

---

```css
p[lang=="fr"] { color: blue; }
```

#### --answer--

```css
p[lang="fr"] { color: blue; }
```

### --question--

#### --text--

Welcher CSS-Selektor wählt alle `a`-Elemente aus, die ein `href`-Attribut besitzen?

#### --distractors--

```css
a(href) { color: green; }
```

---

```css
a { color: green; }
```

---

```css
a[href~=""] { color: green; }
```

#### --answer--

```css
a[href] { color: blue; }
```

### --question--

#### --text--

Welcher CSS-Selektor wählt alle geordneten Listen mit Großbuchstaben in römischer Zahlenschreibweise aus?

#### --distractors--

```css
ol[type="a"] { border-color: black; }
```

---

```css
ol[type="A"] { border-color: black; }
```

---

```css
ol[type="i"] { border-color: black; }
```

#### --answer--

```css
ol[type="I"] { border-color: black; }
```

### --question--

#### --text--

Wofür wird das `data-lang`-Attribut üblicherweise verwendet?

#### --distractors--

Um die Sprache des Dokuments anzugeben.

---

Um die Zeichenkodierung des Dokuments zu definieren.

---

Um die Sprache eines Elements basierend auf seinem Elternelement festzulegen.

#### --answer--

Um Stile auf Elemente basierend auf diesem benutzerdefinierten Datenattribut anzuwenden.

### --question--

#### --text--

Welchen CSS-Selektor sollten Sie verwenden, um `img`-Elemente nur dann zu stylen, wenn ihr `alt`-Attribut gleich `"code"` ist?

#### --distractors--

```css
img[alt~="code"] { border: 1px solid red; }
```

---

```css
img[alt=="code"] { border: 1px solid red; }
```

---

```css
img[alt*="code"] { border: 1px solid red; }
```

#### --answer--

```css
img[alt="code"] { border: 1px solid red; }
```

### --question--

#### --text--

Welcher CSS-Selektor wählt geordnete Listen mit numerischer Nummerierung aus?

#### --distractors--

```css
ol[type="i"] { color: purple; }
```

---

```css
ol[type="I"] { color: purple; }
```

---

```css
ol[type="a"] { color: purple; }
```

#### --answer--

```css
ol[type="1"] { color: purple; }
```

### --question--

#### --text--

Welchen der folgenden CSS-Selektoren würden Sie verwenden, um `a`-Elemente mit sowohl `href`- als auch `title`-Attributen zu stylen?

#### --distractors--

```css
a[href] a[title] { text-decoration: underline dotted; }
```

---

```css
a[href]a[title] { text-decoration: underline dotted; }
```

---

```css
a[href].[title] { text-decoration: underline dotted; }
```

#### --answer--

```css
a[href][title] { text-decoration: underline dotted; }
```

### --question--

#### --text--

Welchen CSS-Selektor würden Sie verwenden, wenn Sie eine Website für ein Restaurant entwickeln und alle Elemente mit der `menu-item`-Klasse stylen möchten, die ein `data-special`-Attribut besitzen?

#### --distractors--

```css
menu-item[data-special] { background-color: blue; }
```

---

```css
#menu-item[data-special] { background-color: blue; }
```

---

```css
[data-special="menu-item"] { background-color: blue; }
```

#### --answer--

```css
.menu-item[data-special] { background-color: blue; }
```

