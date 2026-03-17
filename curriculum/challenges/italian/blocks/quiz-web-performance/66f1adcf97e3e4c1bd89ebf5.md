---
id: 66f1adcf97e3e4c1bd89ebf5
title: Quiz sulle prestazioni web
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

Per superare il quiz, devi rispondere correttamente ad almeno 18 delle 20 domande seguenti.

# --quizzes--

## --quiz--

### --question--

#### --text--

Qual è la differenza chiave tra prestazioni reali e prestazioni percepite nello sviluppo web?

#### --distractors--

Le prestazioni reali si concentrano sul numero di richieste HTTP effettuate dal browser, mentre le prestazioni percepite si basano sulla velocità di rendering del CSS.

---

Le prestazioni reali riguardano solo i tempi di caricamento, mentre le prestazioni percepite si riferiscono a elementi visivi come animazioni e indicatori di caricamento.

---

Le prestazioni reali includono solo i tempi di elaborazione lato server, mentre le prestazioni percepite sono interamente lato client.

#### --answer--

Le prestazioni reali indicano la velocità con cui il contenuto viene caricato, mentre le prestazioni percepite indicano la velocità con cui gli utenti percepiscono il caricamento della pagina.

### --question--

#### --text--

Quale metrica indica meglio la velocità con cui il contenuto appare su una pagina web?

#### --distractors--

Time to Interactive (TTI)

---

Page Load Time (PLT)

---

Last Contentful Paint (LCP)

#### --answer--

First Contentful Paint (FCP)

### --question--

#### --text--

Quale delle seguenti NON è una modalità per ridurre i tempi di caricamento della pagina?

#### --distractors--

Ottimizzare le risorse multimediali.

---

Sfruttare la cache del browser.

---

Minificare e comprimere i file.

#### --answer--

Usare solo file JPEG.

### --question--

#### --text--

Che cos’è il "time to usable"?

#### --distractors--

È l’intervallo dal momento in cui un utente richiede una pagina a quando può interagire con i moduli presenti.

---

È il tempo necessario affinché tutte le immagini e le animazioni diventino disponibili e utilizzabili.

---

È il tempo necessario affinché tutte le animazioni CSS e JavaScript vengano caricate sullo schermo.

#### --answer--

È l’intervallo dal momento in cui un utente richiede una pagina a quando può interagire in modo significativo con essa.

### --question--

#### --text--

Cosa misura il First Contentful Paint (FCP)?

#### --distractors--

Il tempo totale di caricamento di tutti i file JavaScript sulla pagina.

---

Il ritardo prima che un utente possa interagire con qualsiasi elemento della pagina.

---

Il tempo necessario affinché tutti i fogli di stile vengano caricati e applicati completamente.

#### --answer--

Il tempo necessario affinché venga renderizzato il primo testo o immagine.

### --question--

#### --text--

Quale delle seguenti NON è uno strumento comunemente usato per misurare le prestazioni?

#### --distractors--

Chrome DevTools

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

A cosa servono le Performance Web API?

#### --distractors--

Servono a misurare le prestazioni solo delle animazioni CSS.

---

Servono ad accelerare automaticamente le prestazioni di una pagina web.

---

Forniscono una tabella dettagliata delle metriche di prestazione per l’utente.

#### --answer--

Permettono agli sviluppatori di monitorare quanto efficientemente una pagina web si carica e risponde direttamente dal codice.

### --question--

#### --text--

Quale strategia può migliorare efficacemente le prestazioni percepite?

#### --distractors--

Usare immagini grandi per migliorare la qualità visiva complessiva.

---

Caricare gli stili CSS per ultimi per dare priorità al rendering del contenuto.

---

Precaricare tutti gli script per assicurarsi che siano pronti quando servono.

#### --answer--

Mostrare uno scheletro di caricamento mentre il contenuto viene recuperato.

### --question--

#### --text--

Quale delle seguenti indica il tempo necessario affinché una richiesta viaggi tra browser e server?

#### --distractors--

rendering

---

INP

---

CDN

#### --answer--

latenza

### --question--

#### --text--

Come influisce l’ottimizzazione del CSS sulle prestazioni della pagina?

#### --distractors--

Impedisce al browser di eseguire JavaScript non necessario.

---

Riduce la dimensione complessiva dei file immagine.

---

Elimina la necessità di caricare le immagini in modo lazy.

#### --answer--

Accelera il parsing dell’HTML.

### --question--

#### --text--

Quale delle seguenti mostra per quanto tempo il thread principale è bloccato da pesanti attività JavaScript?

#### --distractors--

Ordine sorgente

---

Bounce rate

---

WebPageTest

#### --answer--

Total Blocking Time

### --question--

#### --text--

Quando si misura l’Interaction to Next Paint (INP), cosa viene valutato?

#### --distractors--

Il tempo necessario affinché la pagina carichi completamente tutti gli stili e le immagini dopo un’interazione utente.

---

Il ritardo tra l’interazione di un utente e la capacità del browser di registrare il prossimo input.

---

L’intervallo tra l’esecuzione di JavaScript e l’aggiornamento del contenuto della pagina da parte del browser.

#### --answer--

Il tempo tra l’interazione di un utente e la risposta del browser renderizzando il frame successivo.

### --question--

#### --text--

Quale delle seguenti API fornisce timestamp ad alta precisione (in millisecondi) per misurare quanto tempo impiegano diverse parti del sito a caricarsi?

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

Quale delle seguenti API fornisce una suddivisione di ogni fase del caricamento della pagina, dalla ricerca DNS a `DOMContentLoaded`?

#### --distractors--

Permit Timing API

---

Performance Text API

---

Perform Timing API

#### --answer--

Performance Timing API

### --question--

#### --text--

Quale delle seguenti ascolta eventi di prestazione come spostamenti di layout, attività lunghe e interazioni utente?

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

Come migliora le prestazioni della pagina il caricamento lazy delle immagini?

#### --distractors--

Garantisce che tutte le immagini vengano caricate immediatamente per una migliore esperienza utente.

---

Riduce la dimensione dei file immagine per accelerare il caricamento.

---

Precarica le immagini per evitare ritardi nel caricamento.

#### --answer--

Ritarda il caricamento delle immagini non essenziali finché non sono visibili.

### --question--

#### --text--

Che cos’è il code splitting?

#### --distractors--

Consiste nel dividere il codice React in moduli che eseguono solo attività critiche.

---

Consiste nel dividere il codice HTML in moduli che eseguono solo attività non critiche.

---

Consiste nel dividere il codice CSS in moduli che eseguono attività critiche e non critiche.

#### --answer--

Consiste nel dividere il codice JavaScript in moduli che eseguono attività critiche e non critiche.

### --question--

#### --text--

Quale delle seguenti è la modalità corretta per caricare un’immagine in lazy loading?

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

Quale delle seguenti NON è un modo per migliorare l’INP?

#### --distractors--

Ridurre il lavoro del thread principale suddividendo lunghe attività JavaScript.

---

Ottimizzare i gestori di eventi.

---

Rimandare o caricare in lazy risorse pesanti.

#### --answer--

Usare solo immagini PNG e JPEG.

### --question--

#### --text--

Perché l’efficienza energetica è un aspetto cruciale delle prestazioni web?

#### --distractors--

Migliora l’appeal visivo complessivo della pagina web.

---

Minimizza la quantità di JavaScript usato in una pagina web.

---

Diminuisce il numero di file CSS necessari e fa funzionare il CSS più velocemente.

#### --answer--

Riduce il carico sull’hardware, conservando energia e migliorando la sostenibilità.
