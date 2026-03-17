---
id: 66f1aeb60b11aec5abe83c2e
title: Quiz sulle librerie e i framework CSS
challengeType: 8
dashedName: quiz-css-libraries-and-frameworks
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 9 delle 10 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Cos'è un framework CSS?

#### --distractors--

Uno strumento per correggere gli errori CSS.

---

Uno strumento per analizzare i file CSS.

---

Un formattatore per file CSS.

#### --answer--

Una libreria per gli stili CSS.

### --question--

#### --text--

Quale dei seguenti è un popolare framework CSS utility-first?

#### --distractors--

Template CSS

---

Loading CSS

---

Minimal CSS

#### --answer--

Tailwind CSS

### --question--

#### --text--

Qual è uno svantaggio dei framework CSS?

#### --distractors--

Pochi componenti.

---

Nessuna opzione di personalizzazione.

---

Supporto migliorato per i browser.

#### --answer--

Possono appesantire i file CSS.

### --question--

#### --text--

Cosa significa SCSS?

#### --distractors--

Super Cascading Style Sheets.

---

Structured CSS.

---

Simple CSS.

#### --answer--

Sassy CSS.

### --question--

#### --text--

Quale delle seguenti è una funzionalità di Sass?

#### --distractors--

Commenti

---

Analisi CSS.

---

CSS in linea.

#### --answer--

Mixin

### --question--

#### --text--

Qual è il modo corretto di usare le classi utility in Tailwind CSS?

#### --distractors--

```html
<button class="color-blue text-color font-size allow-hover round-btn">
  Button
</button>
```

---

```html
<button class="blue text font-size hover round-btn margin-full">
  Button
</button>
```

---


```html
<button class="set-blue set-text set-font set-hover round-btn padding-full">
  Button
</button>
```

#### --answer--


```html
<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>
```

### --question--

#### --text--

Quali sono i due tipi di framework CSS?

#### --distractors--

Framework CSS tablet first e framework CSS basati su componenti.

---

Framework CSS utility-first e framework CSS con caricamento lazy.

---

Framework CSS minimal e framework CSS utility-first.

#### --answer--

Framework CSS utility-first e framework CSS basati su componenti.

### --question--

#### --text--

Qual è l'estensione del file per SCSS?

#### --distractors--

`.sass`

---

`.scsss`

---

`.css`

#### --answer--

`.scss`

### --question--

#### --text--

Qual è il modo corretto di definire una variabile in SCSS?

#### --distractors--

```css
#primary-color: #3498eb;

header {
  background-color: #primary-color;
}
```

---

```css
>primary-color: #3498eb;

header {
  background-color: >primary-color;
}
```

---

```css
?primary-color: #3498eb;

header {
  background-color: ?primary-color;
}
```

#### --answer--

```css
$primary-color: #3498eb;

header {
  background-color: $primary-color;
}
```

### --question--

#### --text--

Qual è il modo corretto di definire un mixin?

#### --distractors--

```css
--mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
>mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

---

```css
mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```

#### --answer--

```css
@mixin center-flex {
  display: flex;
  justify-content: center;
  align-items: center;
}
```
