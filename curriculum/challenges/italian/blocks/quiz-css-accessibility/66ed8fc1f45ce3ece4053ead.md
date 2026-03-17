---
id: 66ed8fc1f45ce3ece4053ead
title: "quiz sull'accessibilità CSS"
challengeType: 8
dashedName: quiz-css-accessibility
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 9 delle 10 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Perché è importante avere un buon contrasto di colore nella tua pagina web?

#### --distractors--

Per rendere la pagina più vivace.

---

Per soddisfare i requisiti per l'ottimizzazione per i motori di ricerca (SEO).

---

Per far risaltare gli elementi importanti della pagina.

#### --answer--

Per rendere il contenuto della pagina accessibile e leggibile.

### --question--

#### --text--

Quale dei seguenti strumenti ti permette di inserire colori di sfondo e di primo piano e verificare il loro rapporto di contrasto?

#### --distractors--

TPGi Colour Contrast Analyzer

---

Figma

---

Canva

#### --answer--

Color Contrast Checker di WebAIM

### --question--

#### --text--

Quale dei seguenti strumenti ti permette di scegliere colori di sfondo e di primo piano dal contenuto visualizzato sullo schermo e verificare il loro rapporto di contrasto?

#### --distractors--

Figma

---

Canva

---

Color Contrast Checker di WebAIM

#### --answer--

TPGi Colour Contrast Analyzer

### --question--

#### --text--

Perché NON dovresti usare `display: none` e `visibility: hidden` per nascondere visivamente il contenuto?

#### --distractors--

Questi metodi fanno sì che solo le tecnologie assistive come i lettori di schermo possano consultare il contenuto nascosto.

---

Questi metodi fanno sì che il contenuto sia nascosto solo finché gli utenti non spostano il mouse sopra il contenuto.

---

Questi metodi non funzionano con alcuni browser.

#### --answer--

Questi metodi rimuovono il contenuto dall'albero di accessibilità, rendendo impossibile ai lettori di schermo consultare il contenuto nascosto.

### --question--

#### --text--

Cos'è un albero di accessibilità?

#### --distractors--

Una rappresentazione visiva della disposizione di una pagina web.

---

Una struttura usata dai lettori di schermo per leggere il contenuto testuale di una pagina web.

---

Una copia dell'albero DOM.

#### --answer--

Una struttura usata dai lettori di schermo per interpretare e interagire con il contenuto di una pagina web.

### --question--

#### --text--

Quale delle seguenti assicura che un'immagine abbia una larghezza minima di `400px`, ma diventi più larga quando la larghezza della viewport è maggiore di `1000px`?

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

Quale dei seguenti valori `scroll-behavior` permette un comportamento di scorrimento fluido?

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

Quale delle seguenti funzionalità viene usata per rilevare la preferenza di animazione dell'utente?

#### --distractors--

`prefers-contrast`

---

`display-mode`

---

`animation`

#### --answer--

`prefers-reduce-motion`

### --question--

#### --text--

Qual è un problema di accessibilità dell'attributo `placeholder` in un elemento `input`?

#### --distractors--

Il testo segnaposto impedisce ai lettori di schermo di leggere l'etichetta dell'input.

---

Il testo segnaposto impedisce ai lettori di schermo di leggere il valore dell'input.

---

Il testo segnaposto è troppo piccolo per essere leggibile.

#### --answer--

Il testo segnaposto può essere confuso con un valore di input reale.

### --question--

#### --text--

Cosa fa l'attributo `hidden`?

#### --distractors--

Nasconde il contenuto e lo rivela al passaggio del mouse.

---

Nasconde il contenuto solo dall'albero di accessibilità.

---

Nasconde il contenuto visivamente, ma il contenuto è disponibile nell'albero di accessibilità.

#### --answer--

Nasconde il contenuto sia visivamente sia dall'albero di accessibilità.
