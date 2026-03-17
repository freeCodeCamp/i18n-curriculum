---
id: 672bbeaa5afdc5a98d5ab8ff
title: Quali sono esempi di pseudo-classi di posizione?
challengeType: 19
dashedName: what-are-examples-of-location-pseudo-classes
---

# --interactive--

Le pseudo-classi di posizione si usano per definire lo stile di collegamenti ed elementi che sono obiettivi all'interno del documento corrente. Offrono un modo per applicare stili in base al fatto che un collegamento sia stato visitato o che un elemento sia attualmente in focus.

Esempi di pseudo-classi di posizione sono:

- `:link`
- `:visited`
- `:any-link`
- `:local-link`
- `:target`

Esaminiamo più a fondo ciascuna di queste pseudo-classi.

La pseudo-classe `:link` ti permette di selezionare tutti i collegamenti non visitati su una pagina web. Puoi usarla per definire uno stile diverso per i collegamenti prima che l'utente ci clicchi sopra. Per esempio, potresti voler rendere tutti i collegamenti non visitati di colore blu o del colore principale del tuo sito:

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

In questo caso, ogni collegamento su cui l'utente non ha ancora cliccato apparirà magenta. Una volta che l'utente clicca il collegamento, lo stile `:link` non si applica più e subentra la pseudo-classe `:visited`. La pseudo-classe `:visited` entra in gioco dopo che l'utente ha cliccato il collegamento, quindi puoi usarla per selezionare i collegamenti già visitati dall'utente.

Ecco un esempio di come cambiare lo stato del collegamento visitato al colore `purple`:

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

La pseudo-classe `:visited` aiuta gli utenti a distinguere tra collegamenti visitati e non visitati.

La pseudo-classe `:any-link` è una combinazione delle pseudo-classi `:link` e `:visited`. Quindi corrisponde a qualsiasi elemento àncora con un attributo `href`, indipendentemente dal fatto che sia stato visitato o meno.

Ecco un esempio di come cambiare il colore del collegamento per la pseudo-classe `:any-link` in `crimson`:

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

La pseudo-classe `:local-link` seleziona i collegamenti che puntano allo stesso documento. Può essere utile quando vuoi differenziare i collegamenti interni da quelli esterni. Attualmente nessun browser supporta la pseudo-classe `:local-link`.

La pseudo-classe `:target` seleziona un elemento che corrisponde all'identificatore del frammento URL corrente, per esempio `#section1`. È molto utile per le pagine con navigazione interna.

Ecco un esempio HTML che rappresenta una navigazione interna alla pagina. Il CSS usa la pseudo-classe `:target` per definire lo stile della sezione che corrisponde al punto in cui l'utente naviga:

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

Quando l'utente clicca su uno dei collegamenti di navigazione, il colore di sfondo della rispettiva sezione cambierà in verde.

# --questions--

## --text--

Quale pseudo-classe ti permette di definire lo stile di un elemento che corrisponde all'identificatore del frammento URL corrente, come `#section1`?

## --answers--

`:hover`

### --feedback--

Pensa a come puoi evidenziare una sezione specifica quando navighi tramite collegamenti interni alla pagina.

---

`:focus`

### --feedback--

Pensa a come puoi evidenziare una sezione specifica quando navighi tramite collegamenti interni alla pagina.

---

`:target`

---

`:checked`

### --feedback--

Pensa a come puoi evidenziare una sezione specifica quando navighi tramite collegamenti interni alla pagina.

## --video-solution--

3

## --text--

Quando sono particolarmente utili le pseudo-classi di posizione?

## --answers--

Quando definisci lo stile degli elementi in base alle loro relazioni con elementi fratelli.

### --feedback--

Pensa a come puoi definire lo stile di collegamenti ed elementi obiettivo in base all'interazione dell'utente.

---

Quando applichi stili in base al fatto che un collegamento sia stato visitato o che un elemento sia attualmente in focus.

---

Quando definisci lo stile degli elementi in base agli attributi del loro elemento genitore.

### --feedback--

Pensa a come puoi definire lo stile di collegamenti ed elementi obiettivo in base all'interazione dell'utente.

---

Quando modifichi dinamicamente il layout di una pagina web.

### --feedback--

Pensa a come puoi definire lo stile di collegamenti ed elementi obiettivo in base all'interazione dell'utente.

## --video-solution--

2

## --text--

Quale pseudo-classe è progettata per selezionare i collegamenti che puntano allo stesso documento ma non è attualmente supportata da nessun browser?

## --answers--

`:any-link`

### --feedback--

Considera la pseudo-classe pensata per distinguere i collegamenti interni da quelli esterni, anche se non è ancora supportata.

---

`:local-link`

---

`:visited`

### --feedback--

Considera la pseudo-classe pensata per distinguere i collegamenti interni da quelli esterni, anche se non è ancora supportata.

---

`:target`

### --feedback--

Considera la pseudo-classe pensata per distinguere i collegamenti interni da quelli esterni, anche se non è ancora supportata.

## --video-solution--

2
