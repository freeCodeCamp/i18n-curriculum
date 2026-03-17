---
id: 672bbe9171a5cca90f2edeea
title: Quali sono esempi di pseudo-classi di azione utente sugli elementi?
challengeType: 19
dashedName: what-are-examples-of-element-user-action-pseudo-classes
---

# --interactive--

Il feedback per l’utente è un elemento cruciale del design web. Per esempio, è importante che gli utenti ricevano segnali visivi quando interagiscono con elementi su un sito, come passare il mouse su un pulsante o cliccare un collegamento. Questo feedback aiuta gli utenti a capire lo stato degli elementi interattivi, ad esempio se un collegamento è già stato visitato o no.

Le pseudo-classi di azione utente in CSS sono parole chiave speciali che ti permettono di fornire questo tipo di feedback senza dover usare JavaScript o altri linguaggi di programmazione.

Queste pseudo-classi includono `:hover`, `:active`, `:focus` e `:visited`, tra le altre. Ti consentono di cambiare l’aspetto degli elementi in base alle interazioni dell’utente, migliorando l’esperienza complessiva.

Vediamo alcune delle pseudo-classi di azione utente che abbiamo e come funzionano.

La pseudo-classe `:active` applica gli stili quando un elemento viene attivato dall’utente. Per esempio, quando l’utente clicca un pulsante o un collegamento, fornisce un feedback visivo immediato, mostrando che l’azione è stata riconosciuta.

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

La pseudo-classe `:hover` si attiva quando un utente passa il mouse su un elemento con il puntatore o altro dispositivo di puntamento. Gli sviluppatori la usano spesso per creare feedback visivi per pulsanti, collegamenti o qualsiasi elemento che dovrebbe rispondere all’attenzione dell’utente. Ecco un pulsante su cui l’utente passerebbe il mouse prima di cliccare:

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

La pseudo-classe `:focus` applica gli stili quando un elemento riceve il focus, tipicamente tramite la navigazione da tastiera o quando un utente clicca in un campo di input di un modulo. Questo non serve solo come feedback ma è anche fondamentale per l’accessibilità. Garantisce che gli utenti che usano principalmente la tastiera possano identificare facilmente l’elemento con cui stanno interagendo.

Ecco un esempio di un campo di input che riceve il focus quando viene cliccato o raggiunto tramite tastiera:

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

La pseudo-classe `:visited` si applica a un collegamento che l’utente ha già visitato. Questo può essere utile per aiutare gli utenti a distinguere tra le pagine già visitate e quelle ancora da visitare. Ecco un esempio che cambia il colore del testo dell’àncora in ciano quando il collegamento è stato visitato:

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

La pseudo-classe `:checked` in CSS ti permette di definire lo stile degli elementi di modulo come caselle di spunta e pulsanti di opzione quando sono selezionati (checked). Questa pseudo-classe è utile per personalizzare l’aspetto di questi elementi e migliorare l’esperienza utente, anche se i browser forniscono stili predefiniti.

Ecco un esempio con una casella di spunta per accettare i termini su un sito.

**NOTA**: Alcuni CSS in questo esempio usano proprietà che non sono ancora state trattate. Serve solo per darti un’idea di come creare una casella di spunta personalizzata. Imparerai come funziona tutto questo nelle prossime lezioni e workshop.

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

In questo esempio usiamo la proprietà `appearance` impostata su `none` per rimuovere lo stile predefinito applicato dal browser agli input di tipo checkbox. Quando l’utente seleziona la casella, avrà uno sfondo di colore `green`.

Altri esempi di pseudo-classi di azione sono:

- `:focus-within`: per applicare stili a un elemento quando esso o uno qualsiasi dei suoi discendenti ha il focus.
- `:enabled`: per selezionare pulsanti di modulo o altri elementi attualmente abilitati.
- `:disabled`: per selezionare pulsanti di modulo o altri elementi disabilitati.
- `:target`: per applicare stili a un elemento che è l’obiettivo di un frammento URL (la parte di un URL dopo il simbolo `#`).

# --questions--

## --text--

Cosa ti permettono di fare le pseudo-classi di azione utente?

## --answers--

Consentono animazioni e transizioni.

### --feedback--

Pensa a come puoi interagire con gli utenti usando solo CSS.

---

Permettono di modificare dinamicamente la struttura del DOM.

### --feedback--

Pensa a come puoi interagire con gli utenti usando solo CSS.

---

Ti permettono di fornire feedback all’utente senza affidarti a JavaScript.

---

Ti permettono di definire lo stile dell’ultimo elemento in una lista.

### --feedback--

Pensa a come puoi interagire con gli utenti usando solo CSS.

## --video-solution--

3

## --text--

Cosa fa la pseudo-classe `:checked` in CSS?

## --answers--

Seleziona un elemento quando è disabilitato.

### --feedback--

Pensa a come i moduli gestiscono le selezioni degli utenti.

---

Seleziona un elemento quando ci si passa sopra con il mouse.

### --feedback--

Pensa a come i moduli gestiscono le selezioni degli utenti.

---

Definisce lo stile di elementi come caselle di spunta o pulsanti di opzione che sono selezionati.

---

Definisce lo stile di un elemento quando riceve il focus.

### --feedback--

Pensa a come i moduli gestiscono le selezioni degli utenti.

## --video-solution--

3

## --text--

Cosa fa la pseudo-classe `:focus`?

## --answers--

Seleziona un elemento quando ci si passa sopra con il mouse.

### --feedback--

Pensa a come gli utenti navigano i moduli usando la tastiera.

---

Applica stili quando un elemento riceve il focus, di solito tramite navigazione da tastiera o clic.

---

Seleziona un elemento dopo che un modulo è stato inviato.

### --feedback--

Pensa a come gli utenti navigano i moduli usando la tastiera.

---

Applica stili a un elemento quando è disabilitato.

### --feedback--

Pensa a come gli utenti navigano i moduli usando la tastiera.

## --video-solution--

2
