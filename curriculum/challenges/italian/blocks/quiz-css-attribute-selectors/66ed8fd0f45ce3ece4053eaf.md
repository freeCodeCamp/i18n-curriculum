---
id: 66ed8fd0f45ce3ece4053eaf
title: quiz sui selettori di attributi CSS
challengeType: 8
dashedName: quiz-css-attribute-selectors
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 9 delle 10 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

A cosa servono i selettori di attributi CSS?

#### --distractors--

Per applicare stili agli elementi in base al loro nome di tag.

---

Per applicare stili agli elementi in base al loro nome di classe.

---

Per applicare stili agli elementi in base al loro elemento genitore.

#### --answer--

Per applicare stili agli elementi in base ai loro attributi.

### --question--

#### --text--

Quale dei seguenti NON sarà selezionato da questo selettore CSS?

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

Quale selettore CSS corrisponde a tutti gli elementi `p` con un attributo `lang` impostato su `"fr"`?

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

Quale selettore CSS corrisponde a tutti gli elementi `a` con un attributo `href`?

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

Quale selettore CSS corrisponde a tutte le liste ordinate con numeri romani maiuscoli?

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

A cosa serve comunemente l'attributo `data-lang`?

#### --distractors--

Per specificare la lingua del documento.

---

Per definire la codifica dei caratteri del documento.

---

Per impostare la lingua di un elemento in base al suo elemento genitore.

#### --answer--

Per applicare stili agli elementi in base a questo attributo dati personalizzato.

### --question--

#### --text--

Quale selettore CSS dovresti usare per definire lo stile degli elementi `img` solo se il loro attributo `alt` è uguale a `"code"`?

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

Quale selettore CSS corrisponde alle liste ordinate con un tipo di numerazione numerica?

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

Quale dei seguenti selettori CSS useresti per definire lo stile degli elementi `a` con entrambi gli attributi `href` e `title`?

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

Quale selettore CSS useresti se stai sviluppando un sito web per un ristorante e vuoi definire lo stile di tutti gli elementi con la classe `menu-item` che hanno un attributo `data-special`?

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
