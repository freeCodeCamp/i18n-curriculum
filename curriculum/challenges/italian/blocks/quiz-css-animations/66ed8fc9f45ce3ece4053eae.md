---
id: 66ed8fc9f45ce3ece4053eae
title: Quiz sulle animazioni CSS
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual è lo scopo della proprietà `transform` in CSS?

#### --distractors--

Cambiare la visibilità di un elemento.

---

Applicare un effetto visivo al testo.

---

Impostare le dimensioni di un elemento.

#### --answer--

Modificare la posizione, la dimensione e la forma di un elemento.

### --question--

#### --text--

Come influisce la proprietà CSS `animation-direction` su un'animazione?

#### --distractors--

Specifica se un'animazione deve essere ripetuta.

---

Imposta la durata dell'animazione.

---

Definisce la velocità dell'animazione.

#### --answer--

Definisce come deve essere eseguita un'animazione.

### --question--

#### --text--

Quale proprietà CSS fa eseguire un'animazione 3 volte?

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

Quale funzione di temporizzazione CSS fa eseguire un'animazione a velocità costante dall'inizio alla fine?

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

Cosa definisce la regola at `@keyframes` in CSS?

#### --distractors--

I colori di una sfumatura CSS.

---

Gli angoli di una rotazione CSS.

---

Le dimensioni di un elemento.

#### --answer--

Le fasi di un'animazione CSS.

### --question--

#### --text--

Qual è lo scopo della funzione `translateX()` in CSS?

#### --distractors--

Cambia l'opacità dell'elemento.

---

Ruota l'elemento.

---

Riposiziona verticalmente l'elemento.

#### --answer--

Riposiziona orizzontalmente l'elemento.

### --question--

#### --text--

Quale delle seguenti NON è una possibile preoccupazione riguardo alle animazioni CSS?

#### --distractors--

Possono causare disagio o danni fisici ad alcuni utenti.

---

Gli utenti possono trovarle distraenti.

---

Un uso eccessivo può portare a prestazioni scadenti.

#### --answer--

Possono migliorare l'esperienza utente.

### --question--

#### --text--

Dove è definita la regola at `@keyframes`?

#### --distractors--

All'interno dell'elemento `body` di un file HTML.

---

All'interno dell'elemento `head` di un file HTML.

---

All'interno di una definizione di classe CSS.

#### --answer--

Al livello superiore, fuori da qualsiasi selettore CSS.

### --question--

#### --text--

Quale proprietà CSS permette di mettere in pausa e riprendere un'animazione?

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

Quale valore dovrebbe essere assegnato alla proprietà `animation-name` in CSS?

#### --distractors--

La durata dell'animazione in secondi.

---

La funzione di temporizzazione usata per l'animazione.

---

Il ritardo prima che l'animazione inizi in secondi.

#### --answer--

Il nome dell'animazione definita dalla `@keyframes`.

### --question--

#### --text--

Cosa fa questa regola at `@keyframe` all'elemento animato?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Ruota l'elemento di 90 gradi in senso orario.

---

Cambia il colore dell'elemento in blu.

---

Scala l'elemento al 50% della sua dimensione iniziale e poi al 100%.

#### --answer--

Sposta l'elemento orizzontalmente da -50px a 100px, rispetto al suo punto di partenza.

### --question--

#### --text--

Quale proprietà CSS definisce come un'animazione procede nel tempo?

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Quale proprietà CSS si usa per specificare che un'animazione deve durare 5 secondi?

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

Cosa rappresenta `50%` nella seguente regola at `@keyframe` CSS?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Il punto di partenza dell'animazione.

---

Il punto finale dell'animazione.

---

La velocità dell'animazione.

#### --answer--

Il punto a metà dell'animazione.

### --question--

#### --text--

Cosa succederà quando viene applicata la proprietà `transform: translateX(200px);`?

#### --distractors--

L'elemento si sposterà di 200px a sinistra.

---

L'elemento si sposterà di 200px verso il basso.

---

L'elemento ruoterà di 200 gradi in senso orario.

#### --answer--

L'elemento si sposterà di 200px a destra.

### --question--

#### --text--

Come si comporterà l'animazione se `animation-iteration-count` è impostato su `infinite`?

#### --distractors--

Verrà eseguita una volta e si fermerà.

---

Si metterà in pausa dopo la prima iterazione.

---

Si fermerà dopo tre iterazioni.

#### --answer--

Si ripeterà indefinitamente.

### --question--

#### --text--

Quale selettore `@keyframes` specifica il punto di partenza di un'animazione?

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

Quali proprietà si possono specificare usando la proprietà CSS abbreviata `animation`?

#### --distractors--

Solo il nome dell'animazione.

---

Il nome e la durata dell'animazione.

---

Il nome, la durata e il ritardo dell'animazione.

#### --answer--

Tutte le proprietà dell'animazione.

### --question--

#### --text--

Quale proprietà CSS si usa per applicare un'animazione definita da una regola at `@keyframes`?

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

Quale proprietà CSS permette di impostare un tempo prima che l'animazione inizi?

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

Cosa fa la proprietà CSS `animation-delay`?

#### --distractors--

Imposta la durata dell'animazione.

---

Specifica la funzione di temporizzazione.

---

Definisce la direzione dell'animazione.

#### --answer--

Ritarda l'inizio dell'animazione.

### --question--

#### --text--

Quale proprietà dell'animazione specifica come l'elemento deve essere stilizzato prima e dopo l'animazione?

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

Perché le animazioni CSS dovrebbero essere usate con moderazione?

#### --distractors--

Un numero eccessivo di animazioni CSS può causare rotture di stile e incoerenze tra browser diversi.

---

Un numero eccessivo di animazioni CSS può portare a posizionamenti bassi o assenti nei risultati dei motori di ricerca.

---

Un numero eccessivo di animazioni CSS farà automaticamente crashare il server e aumenterà i rischi di sicurezza.

#### --answer--

Un numero eccessivo di animazioni CSS può causare prestazioni scadenti e risultare distraente o problematico per utenti con particolari esigenze di accessibilità.

### --question--

#### --text--

Quale proprietà dell'animazione determina se l'animazione deve andare avanti, indietro o alternarsi?

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

Quale media query CSS rileva se l'utente ha richiesto animazioni o effetti di movimento minimi?

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

Quale proprietà imposta quante volte un `animation` si ripete?

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

Quale regola CSS si usa per definire le fasi e gli stili di un'animazione in vari punti della sua durata?

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

All'interno della media query `reduced‑motion`, quale dichiarazione disabilita le transizioni?

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

Cosa permette di fare la proprietà `animation-play-state`?

#### --distractors--

Impostare quante volte l'animazione si ripete.

---

Specificare quanto tempo impiega l'animazione a completarsi.

---

Determinare la direzione in cui l'animazione viene eseguita.

#### --answer--

Mettere in pausa e riprendere l'animazione.

### --question--

#### --text--

Quale delle seguenti è una buona pratica quando si lavora con le animazioni?

#### --distractors--

Usare quanti più colori lampeggianti e movimenti rapidi possibile per attirare l'attenzione.

---

Evitare di testare le animazioni su dispositivi o dimensioni dello schermo diversi.

---

Far durare le animazioni il più a lungo possibile per assicurarsi che gli utenti le notino.

#### --answer--

Evitare contenuti che lampeggiano più di tre volte al secondo per prevenire crisi epilettiche o disagio.

### --question--

#### --text--

Perché la dichiarazione `!important` viene usata nelle regole CSS?

#### --distractors--

Per impedire il caricamento di altre media query.

---

Per limitare gli stili al primo elemento figlio.

---

Per eseguire il debug del CSS più facilmente.

#### --answer--

Per assicurarsi che queste regole abbiano la precedenza su altri stili.

### --question--

#### --text--

Cosa assicura `animation-iteration-count: 1 !important;` in CSS?

#### --distractors--

Che le animazioni siano messe in pausa.

---

Che le animazioni vengano eseguite all'infinito.

---

Che le animazioni invertano direzione a ogni ciclo.

#### --answer--

Che eventuali animazioni in loop vengano eseguite solo una volta.

### --question--

#### --text--

Quale proprietà CSS si usa per specificare quanto tempo deve durare un'animazione?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

Quale proprietà NON fa parte della proprietà abbreviata `animation`?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

Cosa definisce la regola `@keyframes`?

#### --distractors--

La funzione di temporizzazione di un'animazione.

---

Lo stato predefinito di un elemento.

---

Le media query per le animazioni.

#### --answer--

La sequenza di stili in diversi punti di un'animazione.

### --question--

#### --text--

Cosa fa questa regola at `@keyframe` all'elemento animato?

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

Scala l'elemento dallo 0% al 100%.

---

Sposta l'elemento da sinistra a destra.

---

Cambia il colore del testo in nero.

#### --answer--

Fa apparire l'elemento sfumandolo gradualmente diminuendo la sua trasparenza.

### --question--

#### --text--

In una regola keyframes, cosa rappresenta `100%`?

#### --distractors--

L'inizio dell'animazione.

---

Il punto a metà.

---

La funzione di easing.

#### --answer--

La fine dell'animazione.

### --question--

#### --text--

Quale proprietà controlla il ritmo di un `animation` durante la sua durata?

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

Cosa dovrebbero considerare gli sviluppatori quando implementano animazioni per mantenere l'accessibilità?

#### --distractors--

Fare affidamento esclusivamente su JavaScript per tutte le animazioni.

---

Aggiungere animazioni frequenti e intense per l'impatto.

---

Includere solo effetti in grassetto, veloci e sorprendenti.

#### --answer--

Usare effetti sottili e intenzionali, rispettare le preferenze e offrire controllo all'utente.

### --question--

#### --text--

Quale delle seguenti è la sintassi corretta per far scorrere un elemento da sinistra?

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
