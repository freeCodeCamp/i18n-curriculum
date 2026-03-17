---
id: 66ed8ffcf45ce3ece4053eb5
title: Quiz sul posizionamento CSS
challengeType: 8
dashedName: quiz-css-positioning
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Quale dei seguenti NON è un valore valido per la proprietà `position`?

#### --distractors--

`fixed`

---

`absolute`

---

`relative`

#### --answer--

`above`

### --question--

#### --text--

Qual è lo scopo principale della proprietà `float` in CSS?

#### --distractors--

I float si usano per rimuovere un elemento dal suo flusso normale nella pagina e posizionarlo automaticamente nell'angolo in alto a destra della pagina web.

---

I float si usano per rimuovere un elemento dal suo flusso normale nella pagina e posizionarlo in cima al suo contenitore.

---

I float si usano per rimuovere un elemento dal suo flusso normale nella pagina e posizionarlo automaticamente nell'angolo in basso a destra della pagina web.

#### --answer--

I float si usano per rimuovere un elemento dal suo flusso normale nella pagina e posizionarlo sul lato sinistro o destro del suo contenitore.

### --question--

#### --text--

Quale dei seguenti è un esempio che fa galleggiare un elemento box a sinistra?

#### --distractors--

```css
.box {
  left: float;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  position: float-left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

---

```css
.box {
  float: left-side;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

#### --answer--

```css
.box {
  float: left;
  margin-right: 15px;
  width: 50px;
  height: 50px;
  background-color: black;
}
```

### --question--

#### --text--

Qual è il ruolo della proprietà `clear`?

#### --distractors--

Serve a determinare se un elemento deve essere spostato in fondo alla pagina.

---

Serve a determinare se un elemento deve essere completamente cancellato dalla pagina.

---

Serve a determinare se un elemento deve essere fissato in cima alla pagina.

#### --answer--

Serve a determinare se un elemento deve essere spostato sotto il contenuto flottante.

### --question--

#### --text--

Quale proprietà CSS si usa per controllare l'ordine di sovrapposizione verticale degli elementi posizionati che si sovrappongono nella pagina?

#### --distractors--

`position`

---

`bg-green`

---

`float`

#### --answer--

`z-index`

### --question--

#### --text--

Qual è la sintassi corretta per il posizionamento relativo?

#### --distractors--

```css
.relative {
  position: relative-position;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative-position: relative;
  top: 30px;
  left: 30px;
}
```

---

```css
.relative {
  relative: position;
  top: 30px;
  left: 30px;
}
```

#### --answer--

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

### --question--

#### --text--

Quale proprietà CSS useresti per fissare un elemento in una posizione specifica nella pagina in modo che non si muova durante lo scorrimento?

#### --distractors--

`position: no-scroll;`

---

`position: relative;`

---

`display: block;`

#### --answer--

`position: fixed;`

### --question--

#### --text--

Cosa fa il posizionamento assoluto a un elemento?

#### --distractors--

Il posizionamento assoluto serve a determinare se un elemento deve essere spostato sotto il contenuto flottante.

---

Il posizionamento assoluto serve a posizionare l'elemento all'interno del flusso normale del documento.

---

Il posizionamento assoluto serve a controllare l'ordine di sovrapposizione verticale degli elementi posizionati che si sovrappongono nella pagina.

#### --answer--

Il posizionamento assoluto permette di estrarre un elemento dal flusso normale del documento, facendolo comportare in modo indipendente dagli altri elementi.

### --question--

#### --text--

Quale delle seguenti NON è una proprietà valida che puoi usare per il posizionamento assoluto?

#### --distractors--

`right`

---

`bottom`

---

`top`

#### --answer--

`side`

### --question--

#### --text--

Qual è la differenza chiave tra posizionamento relativo e assoluto?

#### --distractors--

Il posizionamento assoluto fissa l'elemento in posizione sticky mentre il posizionamento relativo estrae un elemento dal flusso normale del documento.

---

Il posizionamento relativo fissa l'elemento in posizione fissa mentre il posizionamento assoluto estrae un elemento dal flusso normale del documento.

---

Il posizionamento assoluto posiziona l'elemento all'interno del flusso normale del documento mentre il posizionamento relativo estrae un elemento dal flusso normale del documento.

#### --answer--

Il posizionamento relativo posiziona l'elemento all'interno del flusso normale del documento mentre il posizionamento assoluto estrae un elemento dal flusso normale del documento.

### --question--

#### --text--

Quale dei seguenti è un esempio di posizionare un box nell'angolo in alto a sinistra della pagina?

#### --distractors--

```css
.box {
  position: absolute;
  bottom: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  top: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

---

```css
.box {
  position: absolute;
  bottom: 0;
  right: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

#### --answer--

```css
.box {
  position: absolute;
  top: 0;
  left: 0;
  background-color: coral;
  width: 50px;
  height: 50px;
}
```

### --question--

#### --text--

Quale metodo di posizionamento permette a un elemento di attaccarsi a una posizione definita solo quando si scorre oltre un certo punto?

#### --distractors--

Posizionamento float.

---

Posizionamento fisso.

---

Posizionamento assoluto.

#### --answer--

Posizionamento sticky.

### --question--

#### --text--

Quale dei seguenti è un esempio corretto di uso del posizionamento sticky?

#### --distractors--

```css
.box {
  sticky: position;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-fixed;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

---

```css
.box {
  position: sticky-top;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

#### --answer--

```css
.box {
  position: sticky;
  top: 30px;
  right: 30px;
  width: 50px;
  height: 50px;
  background-color: red;
}
```

### --question--

#### --text--

Qual è la differenza tra posizionamento sticky e fisso?

#### --distractors--

Gli elementi sticky possono essere usati solo in layout a tabella mentre gli elementi fissi possono essere usati in qualsiasi tipo di layout CSS.

---

Gli elementi sticky rimangono sempre nella stessa posizione mentre gli elementi fissi si attaccano a un certo punto e poi si comportano come elementi relativi.

---

Gli elementi fissi sono posizionati rispetto alla loro posizione normale mentre gli elementi sticky si attaccano solo a un certo punto e poi si comportano come elementi relativi.

#### --answer--

Gli elementi fissi rimangono nella stessa posizione sullo schermo mentre gli elementi sticky si attaccano solo a un certo punto e poi si comportano come elementi relativi.

### --question--

#### --text--

Quale problema ha risolto l'hack `clearfix` quando si lavora con i float?

#### --distractors--

L'hack `clearfix` ha aiutato a risolvere il problema degli elementi flottanti rimossi dal flusso normale del documento e posizionati in modo fisso nella pagina.

---

L'hack `clearfix` ha aiutato a risolvere il problema degli elementi flottanti non responsivi nei layout per mobile e tablet.

---

L'hack `clearfix` ha aiutato a risolvere il problema degli elementi flottanti che sparivano dalla pagina.

#### --answer--

L'hack `clearfix` ha aiutato a risolvere il problema delle sovrapposizioni e del collasso nei layout quando più elementi flottanti erano impilati uno accanto all'altro.

### --question--

#### --text--

Quale dei seguenti è un esempio corretto di uso dell'hack `clearfix`?

#### --distractors--

```css
.clearfix::before {
  position: fixed;
  top: 0;
  width: 100%;
  clear: both;
}
```

---

```css
.clearfix::after {
  position: relative;
  top: 30px;
  left: 30px;
  clear: all;
}
```

---

```css
.clearfix::before {
  top: 30px;
  clear: none;
}
```

#### --answer--

```css
.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

### --question--

#### --text--

Cos'è il posizionamento statico?

#### --distractors--

Serve a rimuovere un elemento dal suo flusso normale nella pagina e posizionarlo automaticamente nell'angolo in alto a destra della pagina web.

---

Permette di estrarre un elemento dal flusso normale del documento, facendolo comportare in modo indipendente dagli altri elementi.

---

Permette a un elemento di attaccarsi a una posizione definita solo quando si scorre oltre un certo punto.

#### --answer--

È il flusso normale del documento. Gli elementi sono posizionati dall'alto verso il basso e da sinistra a destra uno dopo l'altro.

### --question--

#### --text--

Quale dei seguenti è un esempio di impostare la barra di navigazione in cima alla pagina usando il posizionamento fisso?

#### --distractors--

```css
.navbar {
  fixed: top;
  top: 0;
  width: 100%;
}
```

---

```css
.navbar {
  upper: fixed;
  width: 100%;
}
```

---

```css
.navbar {
  position: fixed-top;
  top: 0;
  width: 100%;
}
```

#### --answer--

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
}
```

### --question--

#### --text--

Quale dei seguenti è un valore valido da usare per la proprietà `z-index`?

#### --distractors--

`12.0`

---

`none`

---

`up`

#### --answer--

`1`

### --question--

#### --text--

Qual è il valore predefinito della proprietà `position`?

#### --distractors--

`inherit`

---

`initial`

---

`relative`

#### --answer--

`static`

## --quiz--

### --question--

#### --text--

Quale valore `position` ti permette di regolare la posizione di un elemento con `top` e `left` mantenendolo nel flusso normale del documento?

#### --distractors--

`position: absolute;`

---

`position: static;`

---

`position: fixed;`

#### --answer--

`position: relative;`

### --question--

#### --text--

Come si comporta inizialmente un elemento con `position: sticky;`?

#### --distractors--

Si comporta come un elemento `fixed` fino a raggiungere una posizione di scorrimento.

---

Viene sempre rimosso dal flusso normale del documento.

---

Si comporta come un elemento `absolute` all'interno del suo genitore.

#### --answer--

Si comporta come un elemento `relative` fino a raggiungere una posizione di scorrimento specificata.

### --question--

#### --text--

Quale dei seguenti dimostra un uso valido ed efficace della proprietà `z-index` per far apparire `.box-two` sopra `.box-one`?

#### --distractors--

```css
.box-one {
  position: static;
  z-index: 2;
}
.box-two {
  position: static;
  z-index: 1;
}
```

---

```css
.box-one {
  position: absolute;
  stack-order: 1;
}
.box-two {
  position: absolute;
  stack-order: 2;
}
```

---

```css
.box-one {
  float: left;
  z-index: 1;
}
.box-two {
  float: left;
  z-index: 2;
}
```

#### --answer--

```css
.box-one {
  position: absolute;
  z-index: 1;
}
.box-two {
  position: absolute;
  z-index: 2;
}
```

### --question--

#### --text--

A cosa serve la proprietà `z-index` in CSS?

#### --distractors--

Imposta il livello di zoom della pagina.

---

Controlla l'allineamento orizzontale degli elementi all'interno di un contenitore flex.

---

Definisce lo spazio tra il contenuto di un elemento e il suo bordo.

#### --answer--

Controlla l'ordine di sovrapposizione verticale degli elementi posizionati che si sovrappongono.

### --question--

#### --text--

Quando applichi `top: 10%;` a un elemento con `position: fixed;`, rispetto a cosa viene calcolato `10%`?

#### --distractors--

L'altezza dell'elemento stesso.

---

L'altezza del suo contenitore genitore.

---

La larghezza della viewport.

#### --answer--

L'altezza della viewport.

### --question--

#### --text--

Quale esempio di codice è un uso corretto della proprietà `z-index` per posizionare un overlay sopra altri contenuti?

#### --distractors--

```css
.overlay {
  z-index: 5;
  background-color: black;
}
```

---

```css
.overlay {
  display: block;
  z-layer: 1;
  background-color: black;
}
```

---

```css
.overlay {
  float: left;
  z-index: 2;
  background-color: black;
}
```

#### --answer--

```css
.overlay {
  position: absolute;
  z-index: 10;
  background-color: black;
}
```

### --question--

#### --text--

Quale proprietà CSS si usa per controllare se un elemento deve essere spostato sotto elementi flottanti?

#### --distractors--

`float`

---

`overflow`

---

`display`

#### --answer--

`clear`

### --question--

#### --text--

Come si sposterà un elemento con `position: relative;` e `bottom: 25px;`?

#### --distractors--

Si sposterà di 25px verso il basso dalla sua posizione normale.

---

Si sposterà di 25px verso destra dalla sua posizione normale.

---

Sarà posizionato a 25px dal fondo della viewport.

#### --answer--

Si sposterà di 25px verso l'alto dalla sua posizione normale.

### --question--

#### --text--

La proprietà `z-index` influenzerà solo gli elementi che hanno quale proprietà CSS applicata?

#### --distractors--

Un valore `float` diverso da `none`.

---

Un valore `display` di `inline-block`.

---

Un set `background-color`.

#### --answer--

Un valore `position` diverso da `static`.

### --question--

#### --text--

Quale sarebbe l'effetto di applicare `float: right;` a un logo in un'intestazione?

#### --distractors--

Il logo sarebbe allineato a destra, ma rimarrebbe nel flusso normale del documento, impedendo al contenuto di avvolgersi intorno.

---

Il logo verrebbe estratto dal flusso e posizionato sul lato destro dell'intera viewport del browser, non del suo contenitore.

---

Il logo diventerebbe un elemento a blocco che occupa tutta la larghezza dell'intestazione, spingendo gli altri elementi sotto di esso.

#### --answer--

Il logo verrebbe rimosso dal suo flusso normale e posizionato sul lato destro del suo contenitore, con il contenuto che si avvolge intorno.

### --question--

#### --text--

Quale snippet CSS manterrà un elemento fissato in cima alla viewport una volta che viene scrollato fino a lì?

#### --distractors--

```css
.header {
  position: fixed;
  top: 0;
}
```

---

```css
.header {
  position: relative;
  top: 0;
}
```

---

```css
.header {
  position: absolute;
  top: 0;
}
```

#### --answer--

```css
.header {
  position: sticky;
  top: 0;
}
```

### --question--

#### --text--

Qual è lo scopo specifico di `clear: both;` in CSS?

#### --distractors--

Annulla la proprietà `float` sull'elemento stesso, riportandolo al flusso normale del documento.

---

Rimuove qualsiasi proprietà `clear` ereditata da un elemento genitore, ripristinando il comportamento di float predefinito.

---

Pulisce solo gli elementi flottanti sul lato destro, permettendo agli elementi flottanti a sinistra di rimanere come sono.

#### --answer--

Garantisce che l'elemento venga spostato sotto qualsiasi elemento flottante che appare prima di esso sia a sinistra che a destra.

### --question--

#### --text--

Dato il seguente codice, come sarà posizionato `.child`?

```css
.parent {
  /* No position property set */
  height: 200px;
}
.child {
  position: absolute;
  top: 10px;
}
```

#### --distractors--

Sarà posizionato a 10px dall'alto dell'elemento `.parent`, poiché il posizionamento `absolute` è sempre relativo al genitore diretto.

---

Rimarrà nella sua posizione statica predefinita perché il valore `absolute` è invalido senza una proprietà `z-index`.

---

Sarà posizionato a 10px dall'alto della finestra del browser, rimanendo fisso anche quando l'utente scorre la pagina.

#### --answer--

Sarà posizionato a 10px dall'alto del blocco contenitore iniziale, come `<body>`, perché il suo genitore non è posizionato.

### --question--

#### --text--

Che effetto avrà il seguente CSS sull'elemento `.box`?

```css
.box {
  position: absolute;
  top: 50px;
  left: 50px;
}
```

#### --distractors--

L'elemento rimarrà nel suo flusso normale ma sarà rientrato di 50px dall'alto e da sinistra, spingendo via gli altri elementi.

---

L'elemento sarà fissato alla viewport e rimarrà a 50px dall'alto e 50px da sinistra, anche quando la pagina viene scrollata.

---

L'elemento sarà posizionato relativamente al suo punto di partenza, spostandosi di 50px in basso e 50px a destra senza uscire dal flusso del documento.

#### --answer--

L'elemento verrà estratto dal flusso normale e posizionato a 50px dall'alto e 50px da sinistra rispetto all'antenato posizionato più vicino.

### --question--

#### --text--

Quale dei seguenti valori `position` rimuove completamente un elemento dal flusso normale del documento?

#### --distractors--

`position: static;`

---

`position: relative;`

---

`position: inherit;`

#### --answer--

`position: absolute;`

### --question--

#### --text--

Dato un elemento `.parent` e un elemento `.child`, quale snippet CSS posizionerà correttamente `.child` a 20px dall'angolo in alto a sinistra dell'elemento `.parent`?

#### --distractors--

```css
.parent {
  /* position: static; by default */
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  position: relative;
  top: 20px;
  left: 20px;
}
```

---

```css
.parent {
  position: relative;
}
.child {
  float: left;
  top: 20px;
  left: 20px;
}
```

#### --answer--

```css
.parent {
  position: relative;
}
.child {
  position: absolute;
  top: 20px;
  left: 20px;
}
```

### --question--

#### --text--

Qual è la differenza tra il posizionamento `static` e `relative`?

#### --distractors--

Il posizionamento `static` rimuove un elemento dal flusso del documento, mentre il posizionamento `relative` lo mantiene nel flusso.

---

Un elemento con `position: static;` può essere spostato con le proprietà `top` e `left`, mentre `position: relative;` no.

---

Il posizionamento `static` è per elementi a blocco, mentre `relative` è solo per elementi in linea.

#### --answer--

Entrambi mantengono un elemento nel flusso normale del documento, ma `relative` permette di spostare l'elemento dalla sua posizione originale.

### --question--

#### --text--

Quale snippet CSS fa galleggiare correttamente un'immagine a sinistra, permettendo al contenuto di avvolgersi intorno?

#### --distractors--

```css
.image {
  position: absolute;
  left: 0;
}
```

---

```css
.image {
  display: inline-block;
}
```

---

```css
.image {
  text-align: left;
}
```

#### --answer--

```css
.image {
  float: left;
}
```

### --question--

#### --text--

Qual è la differenza tra il posizionamento `absolute` e `fixed`?

#### --distractors--

Il posizionamento `absolute` è relativo alla viewport, mentre `fixed` è relativo all'antenato posizionato più vicino.

---

Il posizionamento `absolute` mantiene l'elemento nel flusso normale del documento, mentre `fixed` lo rimuove dal flusso.

---

Entrambi sono posizionati rispetto alla viewport, ma gli elementi `fixed` scorrono con la pagina mentre gli elementi `absolute` no.

#### --answer--

Il posizionamento `absolute` è relativo all'antenato posizionato più vicino, mentre `fixed` è relativo alla viewport del browser.

### --question--

#### --text--

Quale valore `position` posiziona un elemento nel flusso normale del documento e impedisce che proprietà di offset come `top` e `left` abbiano effetto?

#### --distractors--

`position: relative;`

---

`position: absolute;`

---

`position: fixed;`

#### --answer--

`position: static;`
