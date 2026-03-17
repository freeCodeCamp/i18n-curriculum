---
id: 672bbeb6eefd7ca9c003ea00
title: Quali sono esempi di pseudo-classi strutturali ad albero?
challengeType: 19
dashedName: what-are-examples-of-tree-structural-pseudo-classes
---

# --interactive--

Le pseudo-classi strutturali ad albero ti permettono di selezionare e definire lo stile degli elementi in base alla loro posizione nell'albero del documento. L'albero del documento si riferisce alla struttura gerarchica degli elementi in un documento HTML.

Ecco un elenco di pseudo-classi strutturali ad albero:

- `:root`
- `:empty`
- `:nth-child(n)`
- `:nth-last-child(n)`
- `:first-child`
- `:last-child`
- `:only-child`
- `:nth-of-type`
- `:first-of-type`
- `:last-of-type`
- `:only-of-type`

Esaminiamo più da vicino ciascuna delle pseudo-classi strutturali ad albero, accompagnate da esempi.

La pseudo-classe `:root` è solitamente l'elemento radice `html`. Ti aiuta a selezionare il livello più alto nel documento così puoi applicare uno stile comune all'intero documento.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>
```

```css
:root {
  background: black;
  color: aliceblue;
}
```

:::

La pseudo-classe `:root` è anche comunemente usata per impostare variabili CSS:

```css
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

Con le variabili CSS puoi archiviare valori e riutilizzarli nel tuo foglio di stile. Imparerai di più su queste più avanti.

Gli elementi vuoti, cioè quelli senza figli diversi dallo spazio bianco, sono inclusi nell'albero del documento. Per questo esiste la pseudo-classe `:empty` per selezionare gli elementi vuoti. Ad esempio, questo codice HTML ha due elementi lista vuoti. Con la pseudo-classe `:empty` puoi definire uno stile diverso per gli elementi lista vuoti:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  background: black;
}
```

:::

La cosa più pratica da fare con gli elementi lista vuoti è probabilmente non mostrarli affatto:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>
```

```css
:empty {
  display: none;
}
```

:::

`:nth-child(n)` ti permette di selezionare elementi in base alla loro posizione all'interno di un genitore, mentre `:nth-last-child(n)` ti consente di selezionare elementi contando dalla fine. `n` può essere un numero specifico o una parola chiave come `odd` o `even`. Questo è molto utile per definire lo stile delle celle di una tabella in base alla posizione: pari e dispari.

Ecco un esempio HTML di una tabella con la lista prezzi della frutta. Il CSS usa la pseudo-classe `:nth-child` per selezionare le celle della tabella in base alle posizioni dispari e pari:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>
```

```css
th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}
```

:::

Le pseudo-classi `:first-child`, `:last-child` e `:only-child` agiscono tutte sugli elementi all'interno di un contenitore genitore o dell'intero documento.

- `:first-child` seleziona il primo elemento in un genitore o nel documento.
- `:last-child` seleziona l'ultimo elemento in un genitore o nel documento.
- `:only-child` seleziona l'unico elemento in un genitore o nel documento.

Usando le pseudo-classi `:first-child` e `:last-child` selezionerai sia `Item 1` che `Item 3` in questo esempio:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}
```

:::

Se hai più liste non ordinate nella pagina, devi essere più specifico nella selezione:

Per mostrarti come funziona la pseudo-classe `:only-child`, ecco un esempio HTML con due elementi `div` separati. Usando la pseudo-classe `:only-child` si assicura che venga selezionato solo l'elemento `div` con un solo figlio:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>
```

```css
.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}
```

:::

Le pseudo-classi `:first-of-type` e `:last-of-type` selezionano la prima e l'ultima occorrenza di un tipo specifico di elemento all'interno del suo genitore. Sono utili per applicare stili unici alla prima o all'ultima istanza di quel tipo di elemento tra i suoi fratelli.

Nell'esempio qui sotto, `:first-of-type` e `:last-of-type` si applicano rispettivamente al primo e all'ultimo elemento all'interno dell'elemento `section`:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>
```

```css
section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}
```

:::

`:nth-of-type(n)` ti permette di selezionare un elemento specifico all'interno del suo genitore in base alla sua posizione tra i fratelli dello stesso tipo. Per esempio, nell'HTML qui sotto, `:nth-of-type(2)` seleziona il secondo elemento nel contenitore:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>
```

```css
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}
```

:::

`:only-of-type` seleziona un elemento se è l'unico del suo tipo all'interno del genitore. Questo può essere utile per evidenziare elementi singoli o per assicurarti che vengano stilizzati diversamente quando non fanno parte di un gruppo.

Nell'esempio qui sotto, ci sono due elementi `div` di cui uno ha un solo elemento. Il CSS si applica solo al primo contenitore:

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>
```

```css
p:only-of-type {
  border: 4px solid green;
}
```

:::

# --questions--

## --text--

Qual è la differenza tra le pseudo-classi `:first-of-type` e `:last-of-type`?

## --answers--

`:first-of-type` seleziona il primo elemento di un tipo specifico all'interno del suo genitore, mentre `:last-of-type` seleziona l'ultimo elemento di un tipo diverso.

### --feedback--

Considera come queste pseudo-classi ti aiutano a definire lo stile della prima e dell'ultima istanza di un tag particolare, come `p` o `h1`.

---

`:first-of-type` e `:last-of-type` selezionano entrambe la prima occorrenza di un elemento ma in sezioni diverse del documento.

### --feedback--

Considera come queste pseudo-classi ti aiutano a definire lo stile della prima e dell'ultima istanza di un tag particolare, come `p` o `h1`.

---

`:first-of-type` seleziona la prima occorrenza di un tipo specifico di elemento all'interno del suo genitore, mentre `:last-of-type` seleziona l'ultima occorrenza dello stesso tipo di elemento all'interno del suo genitore.

---

`:last-of-type` applica stili al primo e all'ultimo elemento all'interno del documento, mentre `:last-of-type` applica stili a tutti gli elementi di un tipo specifico.

### --feedback--

Considera come queste pseudo-classi ti aiutano a definire lo stile della prima e dell'ultima istanza di un tag particolare, come `p` o `h1`.

## --video-solution--

3

## --text--

Qual è la differenza tra le pseudo-classi `:first-child` e `:last-child`?

## --answers--

`:first-child` seleziona il primo elemento all'interno del suo genitore, mentre `:last-child` seleziona l'ultimo elemento all'interno di un genitore diverso.

### --feedback--

Pensa a come queste due pseudo-classi ti aiutano a definire lo stile del primo e dell'ultimo elemento all'interno dello stesso contenitore genitore.

---

`:first-child` seleziona il primo elemento all'interno del suo genitore, mentre `:last-child` seleziona l'ultimo elemento all'interno dello stesso genitore.

---

`:first-child` seleziona il primo elemento di un tipo specifico all'interno del suo genitore, mentre `:last-child` seleziona l'ultimo elemento di un tipo diverso all'interno del suo genitore.

### --feedback--

Pensa a come queste due pseudo-classi ti aiutano a definire lo stile del primo e dell'ultimo elemento all'interno dello stesso contenitore genitore.

---

`:first-child` seleziona il primo e l'ultimo elemento all'interno di un genitore, mentre `:last-child` seleziona tutti gli altri elementi.

### --feedback--

Pensa a come queste due pseudo-classi ti aiutano a definire lo stile del primo e dell'ultimo elemento all'interno dello stesso contenitore genitore.

## --video-solution--

2

## --text--

Quale pseudo-classe ti permette di selezionare elementi che non hanno figli, inclusi quelli che contengono solo spazi bianchi?

## --answers--

`:empty`

---

`:first-child`

### --feedback--

Pensa a come puoi definire lo stile degli elementi che non hanno contenuto.

---

`:last-child`

### --feedback--

Pensa a come puoi definire lo stile degli elementi che non hanno contenuto.

---

`:only-of-type`

### --feedback--

Pensa a come puoi definire lo stile degli elementi che non hanno contenuto.

## --video-solution--

1
