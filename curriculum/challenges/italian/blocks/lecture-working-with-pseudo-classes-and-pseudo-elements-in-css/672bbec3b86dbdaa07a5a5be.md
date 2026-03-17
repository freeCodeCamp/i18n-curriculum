---
id: 672bbec3b86dbdaa07a5a5be
title: Quali sono esempi di pseudo-classi funzionali?
challengeType: 19
dashedName: what-are-examples-of-functional-pseudo-classes
---

# --interactive--

Le pseudo-classi funzionali ti permettono di selezionare elementi basandoti su condizioni o relazioni più complesse. A differenza delle pseudo-classi normali che prendono di mira elementi in base a uno stato, per esempio `:hover`, `:focus`, le pseudo-classi funzionali accettano argomenti all’interno di parentesi tonde, da cui il nome "pseudo-classi funzionali".

Esempi di pseudo-classi funzionali sono:

- `:is()`
- `:where()`
- `:has()`
- `:not()`

Esaminiamo più a fondo ciascuna di queste pseudo-classi funzionali con esempi.

La pseudo-classe `:is()` è utile quando vuoi definire lo stile di un gruppo di elementi che condividono alcune, ma non tutte, le caratteristiche. Per esempio, potresti voler stilizzare diversi tipi di pulsanti sul tuo sito web, inclusi elementi `button`, collegamenti stilizzati come pulsanti e elementi `input` con tipi `submit` e `reset`. Ecco un esempio che rappresenta questo. Senza la funzione `:is()`, dovresti scrivere un selettore complesso come questo:

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

Con la funzione `:is()`, puoi scrivere un selettore più compatto e comprensibile come questo:

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

La pseudo-classe `:where()` funziona in modo simile a `:is()`, ma non aumenta la specificità dei tuoi selettori. Questo la rende ideale per applicare stili senza influenzare la specificità di altre regole.

Per esempio, puoi usare la funzione `:where()` per applicare zero `margin` e `padding` agli elementi intestazione. Questo assicura che il reset non interferisca con stili più specifici che potresti applicare in seguito. Ecco un esempio:

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

Stilizzare un elemento genitore basandosi sugli stati dei suoi figli era prima una sfida fino a quando non è stata introdotta la pseudo-classe `:has()`. Ti permette di applicare stili a un elemento genitore basandoti sulla presenza o sullo stato dei suoi elementi figli.

Per esempio, il CSS qui sotto si applicherà solo a qualsiasi elemento `article` che contiene un `h2`:

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

La pseudo-classe `:not()` è perfetta per situazioni in cui vuoi applicare stili a un gruppo di elementi, escludendo una o più eccezioni specifiche. Nel CSS qui sotto, ogni pulsante che non è un pulsante primario avrà uno sfondo grigio:

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

Quale pseudo-classe funziona come `:is()`, ma non aggiunge specificità ai tuoi selettori?

## --answers--

`:not()`

### --feedback--

Questa pseudo-classe è ottima per applicare stili ampi e non invasivi.

---

`:has()`

### --feedback--

Questa pseudo-classe è ottima per applicare stili ampi e non invasivi.

---

`:where()`

---

`:empty`

### --feedback--

Questa pseudo-classe è ottima per applicare stili ampi e non invasivi.

## --video-solution--

3

## --text--

Quale di queste non è una pseudo-classe funzionale?

## --answers--

`:is()`

### --feedback--

Le pseudo-classi funzionali usano parentesi tonde e accettano argomenti al loro interno.

---

`:first-child`

---

`:has()`

### --feedback--

Le pseudo-classi funzionali usano parentesi tonde e accettano argomenti al loro interno.

---

`:where()`

### --feedback--

Le pseudo-classi funzionali usano parentesi tonde e accettano argomenti al loro interno.

## --video-solution--

2

## --text--

Quale pseudo-classe è perfetta per una situazione in cui vuoi applicare stili a un gruppo di elementi senza una o due eccezioni?

## --answers--

`:has()`

### --feedback--

Pensa a come puoi escludere elementi specifici dallo stile.

---

`:is()`

### --feedback--

Pensa a come puoi escludere elementi specifici dallo stile.

---

`:not()`

---

`:where()`

### --feedback--

Pensa a come puoi escludere elementi specifici dallo stile.

## --video-solution--

3
