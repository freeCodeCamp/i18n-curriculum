---
id: 66ed8fedf45ce3ece4053eb3
title: Quiz su css grid
challengeType: 8
dashedName: quiz-css-grid
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Cos'è CSS Grid?

#### --distractors--

Un metodo usato per visualizzare tabelle su un sito web.

---

Un metodo usato per disporre immagini a mosaico.

---

Un modo per mostrare contorni intorno agli elementi HTML.

#### --answer--

Un layout bidimensionale per documenti HTML.

### --question--

#### --text--

Qual è il modo corretto per creare un contenitore griglia?

#### --distractors--

`display: grid-area;`

---

`grid: grid-template;`

---

`grid-template: set;`

#### --answer--

`display: grid;`

### --question--

#### --text--

Cosa fa la proprietà `grid-template-columns`?

#### --distractors--

Definisce due colonne e tre righe per un contenitore griglia.

---

Imposta tutte le colonne del layout griglia a una lunghezza fissa.

---

Crea un contenitore griglia a due colonne.

#### --answer--

Definisce il numero di colonne in un layout griglia.

### --question--

#### --text--

Cosa fa la proprietà `grid-template-rows`?

#### --distractors--

Specifica la dimensione e la posizione di un elemento griglia in un layout griglia.

---

Crea un modello per creare nuove righe griglia.

---

Specifica una dimensione riga predefinita nel contenitore griglia.

#### --answer--

Specifica il numero e l'altezza di ogni riga in un layout griglia.

### --question--

#### --text--

Cosa fa la funzione `minmax()`?

#### --distractors--

Alterna tra il primo e il secondo valore, a seconda dello spazio disponibile.

---

Restituisce la media dei due input.

---

Imposta la dimensione minima dell'elemento per browser in modalità schermo intero.

#### --answer--

Imposta le dimensioni minima e massima per una traccia.

### --question--

#### --text--

Qual è la scorciatoia per le proprietà `column-gap` e `row-gap`?

#### --distractors--

`gap-column-row`

---

`gutters`

---

`grid-gap`

#### --answer--

`gap`

### --question--

#### --text--

Qual è la differenza tra una griglia implicita e una esplicita?

#### --distractors--

Le griglie implicite usano la proprietà `grid-template-columns` mentre le griglie esplicite usano la proprietà `grid-template-rows`.

---

Le griglie esplicite usano la proprietà `grid-template-columns` mentre le griglie implicite usano la proprietà `grid-template-rows`.

---

Le griglie implicite usano le proprietà `grid-template-columns` o `grid-template-rows` per creare colonne mentre righe e colonne sono create automaticamente nelle griglie esplicite.

#### --answer--

Le griglie esplicite usano le proprietà `grid-template-columns` o `grid-template-rows` per creare colonne mentre righe e colonne sono create automaticamente nelle griglie implicite.

### --question--

#### --text--

Quale delle seguenti unità rappresenta una frazione dello spazio all'interno del contenitore griglia?

#### --distractors--

`fractional`

---

`frac`

---

`f`

#### --answer--

`fr`

### --question--

#### --text--

Cosa sono le linee della griglia?

#### --distractors--

Scorciatoia per righe e colonne.

---

Contorni di un elemento griglia.

---

Linee lungo le quali sono create colonne e righe della griglia.

#### --answer--

Linee su cui ogni elemento griglia inizia e finisce.

### --question--

#### --text--

Cosa fa la proprietà `grid-column`?

#### --distractors--

Aggiunge un nuovo elemento griglia come figlio dell'elemento a cui è applicata.

---

Allinea verticalmente il testo nell'elemento griglia.

---

Imposta due colonne per un contenitore griglia.

#### --answer--

Indica all'elemento griglia su quale linea della griglia deve iniziare e finire.

### --question--

#### --text--

Come crei quattro colonne di larghezza uguale?

#### --distractors--

`grid-template-columns: repeat(4);`

---

`grid-template-columns: repeat(1, 4);`

---

`grid-template-columns: repeat(1fr, 4);`

#### --answer--

`grid-template-columns: repeat(4, 1fr);`

### --question--

#### --text--

Cosa fa la proprietà `grid-template-areas`?

#### --distractors--

Serve a specificare dove l'elemento inizia su una linea nel contenitore griglia.

---

Serve a creare spazi tra le tracce nel contenitore.

---

Serve a ripetere sezioni nell'elenco delle tracce.

#### --answer--

Serve a fornire un nome agli elementi che andrai a posizionare sulla griglia.

### --question--

#### --text--

Cosa fa la proprietà `grid-auto-flow`?

#### --distractors--

Controlla l'ordine in cui gli elementi griglia sono visualizzati.

---

Regola lo spazio tra gli elementi griglia.

---

Adatta automaticamente l'elemento per adattarsi alla griglia.

#### --answer--

Controlla come gli elementi posizionati automaticamente vengono inseriti nella griglia.

### --question--

#### --text--

Qual è il modo corretto di usare la proprietà `grid-template-areas`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: apply(
    "header header"
    "sidebar main"
    "footer footer" 
  );
  gap: 20px; 
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas: set-areas;
  gap: 20px; 
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

### --question--

#### --text--

Qual è il modo corretto di lavorare con la proprietà `grid-auto-flow`?

#### --distractors--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: none;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: allow;
  grid-auto-columns: 1fr;
}
```

---

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: set;
  grid-auto-columns: 1fr;
}
```

#### --answer--

```css
.social-icons {
  display: grid;
  grid-template-columns: repeat(5, 1fr);
  grid-auto-flow: column;
  grid-auto-columns: 1fr;
}
```

### --question--

#### --text--

Quale delle seguenti non è una proprietà valida della griglia?

#### --distractors--

`gap`

---

`grid-column`

---

`grid-template-columns`

#### --answer--

`grid-set`

### --question--

#### --text--

Quale di queste proprietà può essere usata per centrare gli elementi all'interno di un elemento griglia?

#### --distractors--

`allow-items`

---

`set-items`

---

`center-items`

#### --answer--

`align-items`

### --question--

#### --text--

Qual è un valore corretto da usare con la proprietà `grid-auto-columns`?

#### --distractors--

`grid-auto-columns: unset-grid;`

---

`grid-auto-columns: revert-grid;`

---

`grid-auto-columns: set-content(20%);`

#### --answer--

`grid-auto-columns: 1fr;`

### --question--

#### --text--

Cosa sono le tracce della griglia?

#### --distractors--

Scorciatoia per righe e colonne.

---

Linee lungo le quali puoi animare il movimento degli elementi griglia.

---

Linee su cui ogni elemento griglia inizia e finisce.

#### --answer--

Spazi tra due linee della griglia adiacenti.

### --question--

#### --text--

Qual è il modo corretto di usare la funzione `minmax()`?

#### --distractors--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(apply);
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax();
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(set);
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

## --quiz--

### --question--

#### --text--

Come posizioni un elemento griglia all'interno di un layout definito da `grid-template-areas`?

#### --distractors--

Definendo direttamente la dimensione e la posizione dell'elemento nella griglia usando `grid-template-rows` e `grid-template-columns`.

---

Usando la proprietà `grid-area` e specificando sia l'inizio che la fine di riga e colonna.

---

Impostando sia `grid-area` che coordinate pixel esplicite.

#### --answer--

Assegnando l'area nominata alla proprietà `grid-area` dell'elemento.

### --question--

#### --text--

Cosa controlla la proprietà `grid-auto-rows`?

#### --distractors--

L'altezza delle righe definite esplicitamente.

---

La larghezza massima delle colonne griglia.

---

Lo spazio tra le righe.

#### --answer--

La dimensione delle righe create implicitamente.

### --question--

#### --text--

Quale proprietà useresti per far estendere un elemento griglia su più righe?

#### --distractors--

`grid-row-span`

---

`row-span`

---

`span-rows`

#### --answer--

`grid-row`

### --question--

#### --text--

Cosa definisce una griglia esplicita?

#### --distractors--

Tracce create automaticamente per adattarsi al contenuto.

---

Tracce definite dall'unità `fr`.

---

Tracce aggiunte con `grid-auto-flow`.

#### --answer--

Tracce impostate esplicitamente da `grid-template-columns` o `grid-template-rows`.

### --question--

#### --text--

Quale valore per `grid-auto-flow` farebbe sì che i nuovi elementi riempiano prima le colonne?

#### --distractors--

`row`

---

`vertical`

---

`row dense`

#### --answer--

`column`

### --question--

#### --text--

Qual è lo scopo di `grid-template-areas`?

#### --distractors--

Generare automaticamente tracce implicite.

---

Sostituire l'unità `fr`.

---

Impostare valori `z-index`.

#### --answer--

Mappare visivamente gli elementi alle aree griglia nominate.

### --question--

#### --text--

Come fai iniziare un elemento griglia alla linea di colonna 2 e finirlo alla linea di colonna 4?

#### --distractors--

`grid-column: 2 / span 4;`

---

`grid-column: start 2 / end 4;`

---

`grid-column: from 2 to 4;`

#### --answer--

`grid-column: 2 / 4;`

### --question--

#### --text--

Qual è l'effetto di `grid-template-columns: 1fr 2fr 1fr`?

#### --distractors--

Crea tre colonne di larghezza uguale.

---

Rende la colonna centrale tre volte più larga delle altre.

---

Costringe tutte le colonne a essere esattamente larghe `1fr`.

#### --answer--

Crea tre colonne dove la centrale è larga il doppio delle laterali.

### --question--

#### --text--

Come creeresti una griglia con 3 colonne uguali e uno spazio `20px` tra di esse?

#### --distractors--

```css
.container {
  display: grid;
  grid-template: repeat(3, 1fr) / 20px;
} 
```

---

```css
.container {
  display: grid;
  grid: 1fr 1fr 1fr / gap 20px;
}
```

---

```css
.container {
  display: grid;
  grid-template-columns: 20px 1fr 1fr 1fr;
}
```

#### --answer--

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 20px;
}
```

### --question--

#### --text--

Cosa crea `repeat(3, minmax(100px, 1fr))`?

#### --distractors--

Tre colonne che non possono ridursi sotto `100px`.

---

Tre colonne fisse `100px`.

---

Tre righe con altezza massima `1fr`.

#### --answer--

Tre colonne che crescono proporzionalmente ma non si riducono sotto `100px`.

### --question--

#### --text--

Quale affermazione sulle griglie implicite è vera?

#### --distractors--

Le griglie implicite ignorano la proprietà `gap`.

---

Le tracce implicite devono essere definite con `grid-template-areas`.

---

Le tracce implicite possono essere create solo usando la proprietà `grid-auto-flow`.

#### --answer--

Le tracce implicite si creano quando il contenuto non si adatta alle tracce esplicite.

### --question--

#### --text--

Cosa fa la proprietà `place-items` in CSS Grid?

#### --distractors--

Imposta automaticamente la dimensione degli elementi griglia in base allo spazio disponibile.

---

Controlla la definizione di colonne e righe del template griglia.

---

Regola l'ordine degli elementi griglia all'interno del contenitore.

#### --answer--

È una scorciatoia per allineare gli elementi griglia sia sull'asse blocco che in linea.

### --question--

#### --text--

Cosa realizza questo CSS?

```css
.container {
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
}
```

#### --distractors--

Crea colonne fisse `150px` che escono dal contenitore.

---

Crea colonne larghe esattamente `1fr` indipendentemente dal contenuto.

---

Crea al massimo una colonna per `150px` di larghezza disponibile.

#### --answer--

Crea colonne flessibili che sono almeno `150px` e si comprimono quando lo spazio è limitato.

### --question--

#### --text--

Come puoi creare layout griglia asimmetrici?

#### --distractors--

Usando solo unità `fr`.

---

Mescolando diverse unità di lunghezza in `grid-template-columns`.

---

Impostando `grid-asymmetric: true`.

#### --answer--

Definendo dimensioni diverse per ogni traccia.

### --question--

#### --text--

Cosa fa `grid-column-start: 2` a un elemento griglia?

#### --distractors--

Lo fa estendere su 2 colonne.

---

Lo sposta di 2 pixel.

---

Lo posiziona iniziando dalla seconda linea verticale della griglia.

#### --answer--

Lo fa iniziare alla seconda linea di colonna.

### --question--

#### --text--

Quale proprietà useresti per controllare il comportamento di overflow nelle tracce griglia?

#### --distractors--

`grid-overflow`

---

`track-sizing`

---

`fit-content`

#### --answer--

`minmax()`

### --question--

#### --text--

Quale sarà il risultato per il seguente codice?

```css
.container {
  display: grid;
  grid-template-columns: 100px 1fr 2fr;
  grid-template-rows: auto 150px;
  gap: 10px;
}
```

#### --distractors--

Il contenitore avrà tre colonne di larghezza uguale e due righe alte `150px` ciascuna.

---

Il contenitore avrà tre colonne, tutte larghe `100px`, e due righe alte `150px`.

---

Il contenitore avrà due righe, ciascuna con altezza `1fr`.

#### --answer--

Il contenitore avrà tre colonne: larghe 100px, `1fr` e `2fr` e due righe: una auto e una alta `150px`.

### --question--

#### --text--

Come fai estendere un elemento griglia su tutte le righe disponibili?

#### --distractors--

`grid-row: full;`

---

`grid-row: auto / -1;`

---

`grid-row: 1 / span infinite;`

#### --answer--

`grid-row: 1 / -1;`

### --question--

#### --text--

Quale proprietà controlla l'allineamento degli elementi griglia lungo l'asse blocco?

#### --distractors--

`justify-items`

---

`place-items`

---

`align-content`

#### --answer--

`align-items`

### --question--

#### --text--

Come fai a far sì che un elemento griglia rimanga nella prima colonna indipendentemente dai cambiamenti della griglia?

#### --distractors--

`grid-column: fixed;`

---

`grid-column: first;`

---

`grid-lock: column;`

#### --answer--

`grid-column: 1;`
