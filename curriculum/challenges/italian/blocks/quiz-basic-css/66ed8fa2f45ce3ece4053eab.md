---
id: 66ed8fa2f45ce3ece4053eab
title: quiz sui fondamenti di css
challengeType: 8
dashedName: quiz-basic-css
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Cosa significa CSS?

#### --distractors--

Cascading Style Script

---

Concatenating Style Script

---

Castor Sage Style

#### --answer--

Cascading Style Sheets

### --question--

#### --text--

Quale delle seguenti è una regola CSS corretta?

#### --distractors--

`p=red`

---

`p (color: red)`

---

`{p color: red;}`

#### --answer--

`p {color: red;}`

### --question--

#### --text--

Cosa fa `<meta name="viewport">`?

#### --distractors--

Collega fogli di stile esterni a una pagina web per il design responsivo.

---

Specifica i metadati usati dai motori di ricerca per indicizzare una pagina web.

---

Specifica la codifica dei caratteri usata nella pagina web.

#### --answer--

Controlla la forma e la dimensione di una pagina web su diverse dimensioni dello schermo.

### --question--

#### --text--

Quale sintassi è corretta per usare CSS in linea?

#### --distractors--

`<p color =  blue></p>`

---

`<p><style = blue></p>`

---

`p {color: blue;}`

#### --answer--

`<p style="color: blue;"></p>`

### --question--

#### --text--

Quando si usa CSS interno, dove viene posizionato l'elemento `style` all'interno dell'HTML?

#### --distractors--

Nell'elemento `meta`.

---

Nell'elemento `script`.

---

Nell'elemento `body`.

#### --answer--

Nell'elemento `head`.

### --question--

#### --text--

Quale regola è corretta per impostare larghezza e altezza in CSS?

#### --distractors--

`height-width: 50px;`

---

`width-and-height: 50px;`

---

`flex-width: 50px; flex-height: 50px;`

#### --answer--

`width: 50px; height: 50px;`

### --question--

#### --text--

Quale selettore seleziona correttamente solo gli elementi `h1` quando sono dentro un `div`?

#### --distractors--

`div, h1 {}`

---

`div ~ h1 {}`

---

`div + h1 {}`

#### --answer--

`div h1 {}`

### --question--

#### --text--

Quale selettore è corretto per selezionare i figli diretti di un `footer`?

#### --distractors--

`footer ~ ul {}`

---

`footer + ul {}`

---

`footer ul {}`

#### --answer--

`footer > ul {}`

### --question--

#### --text--

Quale selettore è corretto per selezionare il fratello immediatamente successivo di un `img`?

#### --distractors--

`img h1 {}`

---

`img > h1 {}`

---

`img ~ h1 {}`

#### --answer--

`img + h1 {}`

### --question--

#### --text--

Quale selettore è corretto per selezionare tutti i fratelli preceduti da un elemento `img`?

#### --distractors--

`img > caption {}`

---

`img caption {}`

---

`img + caption {}`

#### --answer--

`img ~ caption {}`

### --question--

#### --text--

Quale affermazione è VERA sugli elementi a blocco?

#### --distractors--

Gli elementi a blocco si sovrappongono orizzontalmente per impostazione predefinita.

---

Le proprietà `width` e `height` di solito non si applicano agli elementi a blocco a meno che non imposti la loro proprietà `display` su `inline-block`.

---

Gli elementi a blocco non possono contenere elementi in linea al loro interno.

#### --answer--

Gli elementi a blocco iniziano su una nuova riga e occupano tutta la larghezza del loro contenitore.

### --question--

#### --text--

Quale affermazione è VERA quando si usa il valore `inline-block`?

#### --distractors--

Gli elementi si sovrappongono verticalmente, occupando sempre tutta la larghezza del loro contenitore.

---

Gli elementi si allineano orizzontalmente ma non possono applicare spaziatura interna o margine verticale.

---

Gli elementi rispettano le impostazioni di larghezza e altezza ma non possono contenere altri elementi al loro interno.

#### --answer--

Gli elementi mantengono il flusso in linea ma permettono di impostare larghezza e altezza.

### --question--

#### --text--

Dato il seguente insieme di selettori, quale ha la specificità più alta?

#### --distractors--

`div`

---

`h1`

---

`p`

#### --answer--

`#id`

### --question--

#### --text--

Dato il seguente insieme di selettori, quale ha la specificità più bassa?

#### --distractors--

`#id`

---

`.class`

---

`div h1`

#### --answer--

`h1`

### --question--

#### --text--

Cosa fa il selettore `*`?

#### --distractors--

Seleziona alcuni elementi nella pagina.

---

Seleziona elementi che hanno figli nella pagina.

---

Seleziona tutti gli elementi `p` nella pagina.

#### --answer--

Seleziona tutti gli elementi nella pagina.

### --question--

#### --text--

Cosa fa `!important` in CSS?

#### --distractors--

Fa funzionare la regola CSS esclusivamente per gli stili in linea e ignora gli stili definiti in fogli di stile esterni o interni.

---

Disabilita tutte le altre proprietà CSS applicate allo stesso elemento, rendendo effettivamente quella l'unica regola che influenza lo stile dell'elemento.

---

Si applica a un certo selettore o gruppo di elementi.

#### --answer--

Sovrascrive qualsiasi altro valore applicato alla proprietà per quel selettore.

### --question--

#### --text--

Come funziona l'algoritmo della cascata CSS?

#### --distractors--

Determina gli stili dell'elemento basandosi sull'ordine di dichiarazione, indipendentemente da altri fattori.

---

Applica gli stili basandosi solo sull'ordine in cui sono scritti, ignorando la specificità.

---

Applica gli stili dando priorità alla specificità, ignorando origine e rilevanza.

#### --answer--

Determina gli stili dell'elemento basandosi sulla specificità e sull'ordine di dichiarazione.

### --question--

#### --text--

Quale regola applica `32px` di margine su tutti i lati?

#### --distractors--

`margin-top: 32px;`

---

`margin: 32px 0;`

---

`margin: 0 32px;`

#### --answer--

`margin: 32px;`

### --question--

#### --text--

Quale regola applica `24px` di spaziatura interna in alto e in basso?

#### --distractors--

`padding: 24px;`

---

`padding-top-bottom: 24px;`

---

`padding: 0 24px;`

#### --answer--

`padding: 24px 0;`

### --question--

#### --text--

Per `padding: 10px 20px 30px 40px`, qual è l'ordine corretto dei valori?

#### --distractors--

Destra, alto, sinistra, basso.

---

Alto, sinistra, basso, destra.

---

Alto, basso, destra, sinistra.

#### --answer--

Alto, destra, basso, sinistra.

## --quiz--

### --question--

#### --text--

Quali sono le parti principali di una regola CSS?

#### --distractors--

Elementi e attributi

---

Stile e fogli

---

Script e valori

#### --answer--

Selettori e blocchi di dichiarazione

### --question--

#### --text--

Quale delle seguenti è la sintassi corretta per una regola CSS?

#### --distractors--

```css
body [
  font-family: Arial;
]
```

---

```css
font-family {
  body: Arial;
}
```

---

```css
body {
  font-family; Arial:
}
```

#### --answer--

```css
body {
  font-family: Arial;
}
```

### --question--

#### --text--

Cosa sono gli stili predefiniti del browser?

#### --distractors--

Elementi HTML che hanno le stesse proprietà di stile indipendentemente dal browser.

---

Sono stili obbligatori che devi usare per specifici elementi HTML.

---

Sono i temi di colore per i vari browser.

#### --answer--

Le regole CSS che i browser applicano automaticamente.

### --question--

#### --text--

Qual è il valore predefinito per la proprietà `width`?

#### --distractors--

`none`

---

`0`

---

`100%`

#### --answer--

`auto`

### --question--

#### --text--

Cosa specifica la proprietà `min-height`?

#### --distractors--

L'altezza iniziale per un elemento.

---

L'altezza per un elemento.

---

L'altezza massima per un elemento.

#### --answer--

L'altezza minima per un elemento.

### --question--

#### --text--

Quale delle seguenti è VERA sul selettore universale `*`?

#### --distractors--

Ha la specificità più alta perché può stilizzare tutti gli elementi di una pagina.

---

Contribuisce con 1 a tutte le parti del valore di specificità.

---

Non può resettare gli stili tra diversi browser.

#### --answer--

Ha il valore di specificità più basso di qualsiasi selettore.

### --question--

#### --text--

Quale selettore seleziona correttamente gli elementi `li` per una lista ordinata?

#### --distractors--

`li {}`

---

`ul li {}`

---

`ol + li {}`

#### --answer--

`ol li {}`

### --question--

#### --text--

Quale selettore seleziona gli elementi paragrafo di un elemento `div`?

#### --distractors--

`p div {}`

---

`div, p {}`

---

`p, div {}`

#### --answer--

`div p {}`

### --question--

#### --text--

Dove si applicano le proprietà di stile `margin`?

#### --distractors--

Lo spazio all'interno dell'elemento.

---

Tra il contenuto e il bordo.

---

Sul bordo dell'elemento.

#### --answer--

Lo spazio esterno all'elemento.

### --question--

#### --text--

Dove si applica la proprietà di stile `padding`?

#### --distractors--

Tra il bordo dell'elemento e gli elementi circostanti.

---

Lo spazio esterno all'elemento.

---

Sul bordo dell'elemento.

#### --answer--

Lo spazio all'interno dell'elemento.

### --question--

#### --text--

Quale affermazione è FALSA sugli elementi a blocco?

#### --distractors--

Possono estendersi per adattarsi alla larghezza del loro contenitore.

---

Gli elementi a blocco comuni includono `div`, `paragraph` e `section`.

---

Gli elementi a blocco iniziano su una nuova riga e occupano tutta la larghezza del loro contenitore.

#### --answer--

Non possono occupare tutta la larghezza disponibile perché ne sono bloccati.

### --question--

#### --text--

Quale affermazione è FALSA quando si usa il valore `inline-block`?

#### --distractors--

Gli elementi `inline-block` si comportano come elementi in linea.

---

Possono avere proprietà `width` e `height`.

---

Gli elementi mantengono il flusso in linea ma permettono di impostare `width` e `height`.

#### --answer--

Non condividono proprietà con elementi in linea o a blocco.

### --question--

#### --text--

Qual è VERO sulla parola chiave `!important`?

#### --distractors--

Vengono usate per fare commenti su una proprietà CSS importante.

---

Garantiscono che una proprietà CSS abbia la sintassi corretta.

---

Rendono le regole CSS più facili da mantenere.

#### --answer--

Sovrascrivono la specificità di altri selettori.

### --question--

#### --text--

Quale carattere precede il nome di un selettore di classe?

#### --distractors--

`#`

---

`$`

---

`*`

#### --answer--

`.`

### --question--

#### --text--

Quale affermazione è FALSA sugli elementi in linea?

#### --distractors--

Occupano solo lo spazio di cui hanno bisogno.

---

Non iniziano su una nuova riga.

---

Gli elementi in linea comuni includono `span` e `img`.

#### --answer--

Iniziano sempre su una nuova riga.

### --question--

#### --text--

Dove si consultano gli stili CSS interni?

#### --distractors--

Sono stili importanti per il progetto, quindi non sono condivisi esternamente.

---

Poiché formano lo stile principale del progetto, sono salvati nel file `styles.css` così altre pagine web possono consultarli.

---

Sono archiviati dentro l'elemento `body` quando c'è solo una pagina web da stilizzare.

#### --answer--

Sono scritti all'interno della sezione `style` dentro l'elemento `head`.

### --question--

#### --text--

Qual è l'ordine per applicare la proprietà `padding` quando si usa la sintassi abbreviata?

#### --distractors--

`top`, `bottom`, `left`, `right`

---

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

Qual è l'ordine per applicare la proprietà `margin` quando si usa la sintassi abbreviata?

#### --distractors--

`left`, `right`, `top`, `bottom`

---

`right`, `top`, `left`, `bottom`

---

`top`, `bottom`, `left`, `right`

#### --answer--

`top`, `right`, `bottom`, `left`

### --question--

#### --text--

A cosa servono gli stili CSS in linea?

#### --distractors--

Servono a stilizzare solo elementi in linea.

---

Servono a stilizzare elementi solo quando appaiono tutti sulla stessa riga della viewport del browser.

---

Servono a risolvere il problema della separazione delle responsabilità.

#### --answer--

Servono a stilizzare direttamente all'interno dell'elemento, invece di usare CSS interno o esterno.

### --question--

#### --text--

Quale simbolo precede il selettore ID?

#### --distractors--

`.`

---

`*`

---

`$`

#### --answer--

`#`
